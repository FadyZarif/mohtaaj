## Error Handler - شرح الاستخدام

### كيفية استخدام ApiErrorHandler في أي Cubit:

```dart
try {
  final response = await _apiService.yourEndpoint();
  emit(YourState.success(response));
} catch (error) {
  final apiError = ApiErrorHandler.handle(error);
  emit(YourState.error(apiError.message));
}
```

### مثال من LoginCubit:
```dart
Future<void> login(String email, String password) async {
  emit(const LoginState.loading());
  
  try {
    final response = await _apiService.login(
      LoginRequest(email: email, password: password),
    );
    
    await _saveTokens(response);
    emit(LoginState.success('تم تسجيل الدخول بنجاح'));
  } catch (error) {
    final apiError = ApiErrorHandler.handle(error);
    emit(LoginState.error(apiError.message));
  }
}
```

### الأخطاء التي يتعاملmعها:
1. أخطاء الشبكة (Dio): timeout, no internet, etc.
2. أخطاء API: `{ "success": false, "error": { "code": "...", "message": "..." } }`
3. أخطاء التحقق من البيانات

جميع الأخطاء مترجمة تلقائياً إلى العربية ✅

