class ApiConstants {
  // Base URL
  static const String baseUrl = 'https://mohtaaj.onrender.com';
  static const String apiPath = '/api';
  
  // Endpoints
  
  // Authentication
  static const String register = '$apiPath/auth/register';
  static const String login = '$apiPath/auth/login';
  static const String refreshToken = '$apiPath/auth/refresh';
  static const String logout = '$apiPath/auth/logout';
  static const String forgotPassword = '$apiPath/auth/forgot-password';
  static const String checkResetCode = '$apiPath/auth/check-reset-code';
  static const String resetPassword = '$apiPath/auth/reset-password';
  static const String sendVerificationCode = '$apiPath/auth/send-verification-code';
  static const String verifyEmail = '$apiPath/auth/verify-email';
  
  // Users
  static const String myProfile = '$apiPath/users/profile';
  static const String updateProfile = '$apiPath/users/profile';
  static const String getUserById = '$apiPath/users'; // /{userId}
  static const String getUserItems = '$apiPath/users'; // /{userId}/items
  static const String getUserRatings = '$apiPath/users'; // /{userId}/ratings
  static const String rateUser = '$apiPath/users'; // /{userId}/rate
  
  // Items
  static const String items = '$apiPath/items';
  static const String myItems = '$apiPath/items/my';
  static const String searchItems = '$apiPath/items/search';
  static const String nearbyItems = '$apiPath/items/nearby';
  
  // Categories
  static const String categories = '$apiPath/categories';
  
  // Favorites
  static const String favorites = '$apiPath/favorites';
  static const String myFavorites = '$apiPath/favorites/my';
  
  // Offers
  static const String offers = '$apiPath/offers';
  static const String receivedOffers = '$apiPath/offers/received';
  static const String sentOffers = '$apiPath/offers/sent';
  
  // Requests
  static const String requests = '$apiPath/requests';
  static const String myRequests = '$apiPath/requests/my';
  
  // Reports
  static const String reportItem = '$apiPath/reports/item';
  static const String reportUser = '$apiPath/reports/user';
  static const String reportMessage = '$apiPath/reports/message';
  static const String myReports = '$apiPath/reports/my';
  
  // Upload
  static const String uploadSingle = '$apiPath/upload/single';
  static const String uploadMultiple = '$apiPath/upload/multiple';
  
  // Badges
  static const String badges = '$apiPath/badges';
  static const String myBadges = '$apiPath/badges/my';
  
  // Health Check
  static const String health = '/health';
}
