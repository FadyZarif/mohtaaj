import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mohtaaj/core/helpers/cache_helper.dart';
import 'package:mohtaaj/features/auth/data/models/user_model.dart';
import '../../features/auth/data/models/refresh_token_request.dart';
import '../networking/api_service.dart';

class AuthService {
  final ApiService _apiService;
  AuthService(this._apiService);

  // ===================== Token Management =====================

  /// Refresh access token using refresh token
  /// Returns true if successful, false otherwise
  Future<bool> refreshAccessToken() async {
    try {
      final refreshToken = await CacheHelper.getSecureData(key: 'refreshToken');
      
      if (refreshToken == null || refreshToken.isEmpty) {
        return false;
      }

      final response = await _apiService.refreshToken(
        RefreshTokenRequest(refreshToken: refreshToken),
      );

      // Save new tokens
      await saveTokens(
        accessToken: response.data.accessToken,
        refreshToken: response.data.refreshToken,
      );

      return true;
    } catch (e) {
      // Token invalid or expired
      return false;
    }
  }

  /// Save tokens to secure storage
  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await CacheHelper.saveSecureData(key: 'accessToken', value: accessToken);
    await CacheHelper.saveSecureData(key: 'refreshToken', value: refreshToken);
  }

  /// Save user ID
  Future<void> saveUserId(String userId) async {
    await CacheHelper.saveSecureData(key: 'userId', value: userId);
  }

  /// Save user Data
  Future<void> saveUserData(UserModel user) async {
    await CacheHelper.saveSecureData(key: 'userData', value: jsonEncode(user.toJson()));
  }

  /// Get access token
  Future<String?> getAccessToken() async {
    return await CacheHelper.getSecureData(key: 'accessToken');
  }

  /// Get refresh token
  Future<String?> getRefreshToken() async {
    return await CacheHelper.getSecureData(key: 'refreshToken');
  }

  /// Get user ID
  Future<String?> getUserId() async {
    return await CacheHelper.getSecureData(key: 'userId');
  }

  /// get user Data
  Future<UserModel?> getUserData() async {
    final userDataString = await CacheHelper.getSecureData(key: 'userData');
    if (userDataString == null) return null;
    final userDataJson = jsonDecode(userDataString);
    return UserModel.fromJson(userDataJson);
  }

  // ===================== Auth Status =====================

  /// Check if user has refresh token (can attempt auto login)
  Future<bool> hasRefreshToken() async {
    final token = await CacheHelper.getSecureData(key: 'refreshToken');
    return token != null && token.isNotEmpty;
  }

  /// Check if user is logged in (has valid tokens)
  Future<bool> isLoggedIn() async {
    final accessToken = await CacheHelper.getSecureData(key: 'accessToken');
    return accessToken != null && accessToken.isNotEmpty;
  }

  // ===================== Logout =====================

  /// Clear all auth data
  Future<void> logout() async {
    await CacheHelper.clearSecureData(key: 'accessToken');
    await CacheHelper.clearSecureData(key: 'refreshToken');
    await CacheHelper.clearSecureData(key: 'userId');
  }

  /// Clear all stored data
  Future<void> clearAll() async {
    await CacheHelper.clearSecureAllData();
  }
}
