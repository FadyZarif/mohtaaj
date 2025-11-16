class AppConstants {
  // ==================== Border Radius ====================
  static const double radiusSmall = 4.0;
  static const double radiusMedium = 8.0;
  static const double radiusLarge = 12.0;
  static const double radiusXLarge = 16.0;
  static const double radiusRound = 100.0;

  // ==================== Spacing/Padding ====================
  static const double spacingXSmall = 4.0;
  static const double spacingSmall = 8.0;
  static const double spacingMedium = 12.0;
  static const double spacingLarge = 16.0;
  static const double spacingXLarge = 20.0;
  static const double spacingXXLarge = 24.0;
  static const double spacingXXXLarge = 32.0;

  // ==================== Icon Sizes ====================
  static const double iconSizeSmall = 16.0;
  static const double iconSizeMedium = 20.0;
  static const double iconSizeLarge = 24.0;
  static const double iconSizeXLarge = 32.0;

  // ==================== Image Sizes ====================
  static const double imageSizeSmall = 40.0;
  static const double imageSizeMedium = 60.0;
  static const double imageSizeLarge = 80.0;
  static const double imageSizeXLarge = 120.0;

  // ==================== Card/Container ====================
  static const double cardElevation = 2.0;
  static const double cardElevationHover = 4.0;
  static const double borderWidth = 1.0;

  // ==================== Animation Duration ====================
  static const int animationDurationShort = 200;
  static const int animationDurationMedium = 300;
  static const int animationDurationLong = 500;

  // ==================== App Constraints ====================
  static const int maxImageUpload = 5;
  static const int maxImageSizeMB = 10;
  static const int phoneNumberLength = 10;
  static const int otpLength = 6;
  static const int passwordMinLength = 8;
  
  // ==================== Pagination ====================
  static const int defaultPageSize = 20;
  static const int maxPageSize = 50;

  // ==================== Item Types ====================
  static const String itemTypeDonation = 'donation';
  static const String itemTypeSwap = 'swap';

  // ==================== Item Conditions ====================
  static const String conditionNew = 'new';
  static const String conditionLikeNew = 'like-new';
  static const String conditionGood = 'good';
  static const String conditionFair = 'fair';
  static const String conditionPoor = 'poor';

  // ==================== Offer Status ====================
  static const String offerStatusPending = 'pending';
  static const String offerStatusAccepted = 'accepted';
  static const String offerStatusRejected = 'rejected';
  static const String offerStatusCancelled = 'cancelled';

  // ==================== Request Status ====================
  static const String requestStatusActive = 'active';
  static const String requestStatusFulfilled = 'fulfilled';
  static const String requestStatusCancelled = 'cancelled';

  // ==================== Report Types ====================
  static const String reportTypeSpam = 'spam';
  static const String reportTypeInappropriate = 'inappropriate';
  static const String reportTypeScam = 'scam';
  static const String reportTypeOther = 'other';

  // ==================== User Roles ====================
  static const String roleUser = 'user';
  static const String roleAdmin = 'admin';

  // ==================== Badge Types ====================
  static const String badgeNewUser = 'new_user';
  static const String badgeTrustedMember = 'trusted_member';
  static const String badgeTopDonor = 'top_donor';
  static const String badgeCommunityChampion = 'community_champion';
}
