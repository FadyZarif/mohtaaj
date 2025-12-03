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
  static const String myProfile = '$apiPath/users/me';
  // static const String updateProfile = '$apiPath/users/profile';
  static const String users = '$apiPath/users'; // /{userId}

  static const String items = '$apiPath/items';
  static const String featuredItems = '$items/featured';
  static const String itemsByCategory = '$items/category';
  static const String itemsByUser = '$items/user';
  static const String myItems = '$items/my';


  // Categories
  static const String categories = '$apiPath/categories';
  static const String categoriesSlug = '$categories/slug';
  static const String categoriesTree = '$categories/tree';
  static const String popularCategories = '$categories/popular';
  
  // Favorites
  static const String favorites = '$apiPath/favorites';

  // chat
  static const String chats = '$apiPath/chats';
  static const String unreadCount = '$apiPath/chats/unread-count';
  static const String messages = '$apiPath/messages';

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
  static const String uploadImage = '$apiPath/upload/image';
  static const String uploadImages = '$apiPath/upload/images';
  
  // Badges
  static const String badges = '$apiPath/badges';
  static const String myBadges = '$apiPath/badges/my';
  
  // Health Check
  static const String health = '/health';
}
