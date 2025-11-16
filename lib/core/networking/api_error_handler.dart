import 'package:dio/dio.dart';
import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(
            message: 'انتهت مهلة الاتصال بالخادم',
            code: 'CONNECTION_TIMEOUT',
          );
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
            message: 'انتهت مهلة إرسال البيانات',
            code: 'SEND_TIMEOUT',
          );
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
            message: 'انتهت مهلة استقبال البيانات',
            code: 'RECEIVE_TIMEOUT',
          );
        case DioExceptionType.badResponse:
          return _handleError(error.response?.data);
        case DioExceptionType.cancel:
          return ApiErrorModel(
            message: 'تم إلغاء الطلب',
            code: 'REQUEST_CANCELLED',
          );
        case DioExceptionType.unknown:
          return ApiErrorModel(
            message: 'تحقق من اتصالك بالإنترنت',
            code: 'NO_INTERNET',
          );
        default:
          return ApiErrorModel(
            message: 'حدث خطأ ما، يرجى المحاولة مرة أخرى',
            code: 'UNEXPECTED_ERROR',
          );
      }
    } else {
      return ApiErrorModel(
        message: 'حدث خطأ غير متوقع',
        code: 'UNEXPECTED_ERROR',
      );
    }
  }

  static ApiErrorModel _handleError(dynamic data) {
    try {
      if (data is Map<String, dynamic>) {
        // Check if response has the standard API error format
        // { "success": false, "error": { "code": "...", "message": "..." } }
        if (data.containsKey('error') && data['error'] is Map<String, dynamic>) {
          final errorData = data['error'] as Map<String, dynamic>;
          final message = errorData['message'] ?? 'حدث خطأ ما';
          final code = errorData['code'] ?? 'UNKNOWN_ERROR';

          return ApiErrorModel(
            // message: _translateErrorMessage(code, message),
            message: message,
            code: code.toString(),
          );
        }

        // Fallback for other error formats
        /*if (data.containsKey('message')) {
          final message = data['message'] ?? 'حدث خطأ ما';
          final code = data['code'] ?? 'UNKNOWN_ERROR';

          return ApiErrorModel(
            message: _translateErrorMessage(code.toString(), message),
            code: code.toString(),
          );
        }*/

        // Check if there are validation errors
        if (data['errors'] != null) {
          String errorMessage = 'حدث خطأ في التحقق من البيانات';

          if (data['errors'] is List) {
            final errors = (data['errors'] as List)
                .map((e) => e.toString())
                .join(', ');
            errorMessage = errors.isNotEmpty ? errors : errorMessage;
          } else if (data['errors'] is Map) {
            final errors = (data['errors'] as Map)
                .values
                .expand((e) => e is List ? e : [e])
                .map((e) => e.toString())
                .join(', ');
            errorMessage = errors.isNotEmpty ? errors : errorMessage;
          }

          return ApiErrorModel(
            message: errorMessage,
            code: 'VALIDATION_ERROR',
          );
        }
      }
      
      return ApiErrorModel(
        message: data?.toString() ?? 'حدث خطأ ما',
        code: 'UNKNOWN_ERROR',
      );
    } catch (e) {
      return ApiErrorModel(
        message: 'حدث خطأ في معالجة الاستجابة',
        code: 'PARSE_ERROR',
      );
    }
  }

  // Translate common error codes to Arabic messages
  /*static String _translateErrorMessage(String code, String defaultMessage) {
    switch (code.toUpperCase()) {
      case 'CONFLICT':
        if (defaultMessage.toLowerCase().contains('email') ||
            defaultMessage.toLowerCase().contains('phone')) {
          return 'البريد الإلكتروني أو رقم الهاتف مستخدم بالفعل';
        }
        return 'البيانات المدخلة مكررة';

      case 'UNAUTHORIZED':
        return 'البريد الإلكتروني أو كلمة المرور غير صحيحة';

      case 'NOT_FOUND':
        return 'المورد المطلوب غير موجود';

      case 'FORBIDDEN':
        return 'ليس لديك صلاحية للوصول';

      case 'VALIDATION_ERROR':
        return 'يرجى التحقق من البيانات المدخلة';

      case 'INVALID_CREDENTIALS':
        return 'البريد الإلكتروني أو كلمة المرور غير صحيحة';

      case 'EMAIL_ALREADY_EXISTS':
        return 'البريد الإلكتروني مستخدم بالفعل';

      case 'PHONE_ALREADY_EXISTS':
        return 'رقم الهاتف مستخدم بالفعل';

      case 'WEAK_PASSWORD':
        return 'كلمة المرور ضعيفة';

      case 'INVALID_EMAIL':
        return 'البريد الإلكتروني غير صحيح';

      case 'SERVER_ERROR':
      case 'INTERNAL_SERVER_ERROR':
        return 'حدث خطأ في الخادم، يرجى المحاولة لاحقاً';

      default:
        return defaultMessage;
    }
  }*/
}
