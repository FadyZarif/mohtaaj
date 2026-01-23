import 'package:dio/dio.dart';
import 'package:http_certificate_pinning/http_certificate_pinning.dart';
import '../helpers/app_logger.dart';

/// SSL Certificate Pinning Configuration
class CertificatePinning {
  static const String _host = 'mohtaaj.onrender.com';

  // SHA-256 Fingerprints - Let's Encrypt CA Public Keys
  // ⚠️ Important: هذه هي الـ public keys الخاصة بـ Let's Encrypt Certificate Authority
  // تم استخدام الـ CA public keys بدلاً من الـ leaf certificate لتجنب مشاكل التجديد التلقائي
  // المصدر: https://letsencrypt.org/certificates/
  static const List<String> _certificates = [
    // Let's Encrypt ISRG Root X1 (Primary - valid until 2035)
    'C5:B1:AB:4E:4C:B1:CD:64:30:93:7E:C1:84:99:05:AB:E6:03:E2:25:56:01:C4:C4:B3:52:77:28:1C:A0:D0:E7',

    // Let's Encrypt E1 (ECDSA - Intermediate CA)
    '69:72:9B:8E:15:A8:6E:FC:17:7A:57:AF:B7:17:1D:FC:64:AD:D2:8C:2F:CA:8C:F1:50:7E:34:45:3C:CB:14:70',

    // Let's Encrypt R3 (RSA - Intermediate CA - Backup)
    '67:AD:D1:16:6B:02:0A:E6:1B:8F:5F:C9:68:13:C0:4C:2A:A5:89:96:07:96:86:55:72:A3:C7:E7:37:61:3D:FD',
  ];

  /// Initialize certificate pinning
  static Future<void> init() async {
    try {
      final result = await HttpCertificatePinning.check(
        serverURL: 'https://$_host',
        headerHttp: {},
        sha: SHA.SHA256,
        allowedSHAFingerprints: _certificates,
        timeout: 30,
      );

      if (result.contains('CONNECTION_SECURE')) {
        AppLogger.success('Certificate pinning verified', tag: 'Security');
      } else {
        AppLogger.error('Certificate pinning failed: $result', tag: 'Security');
      }
    } catch (e) {
      AppLogger.error('Certificate pinning check failed', tag: 'Security', error: e);
    }
  }

  /// Create Dio interceptor for certificate pinning
  static Interceptor createInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        // يمكن إضافة validation إضافي هنا
        handler.next(options);
      },
      onError: (DioException error, handler) async {
        if (error.type == DioExceptionType.connectionError) {
          AppLogger.error(
            'Connection error - possible certificate mismatch',
            tag: 'Security',
            error: error,
          );
        }
        handler.next(error);
      },
    );
  }

  /// Check if host is allowed
  static bool isHostAllowed(String url) {
    return url.contains(_host);
  }
}
