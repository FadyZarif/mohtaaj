import 'package:flutter/material.dart';

class ColorsManager {
  // ==================== Primary Colors ====================
  /// Main app color - Cyan/Turquoise
  static const Color mainColor = Color(0xFF00D9D5);
  static const Color mainColorLight = Color(0xFF33E3DF);
  static const Color mainColorDark = Color(0xFF00ADA9);

  /// Secondary color - Orange
  static const Color secondaryColor = Color(0xFFFF9F43);
  static const Color secondaryColorLight = Color(0xFFFFB870);
  static const Color secondaryColorDark = Color(0xFFE88A2E);

  // ==================== Background Colors ====================
  static const Color backgroundColor = Color(0xFFF8F9FA);
  static const Color cardBackground = Color(0xFFFFFFFF);
  static const Color inputBackground = Color(0xFFF5F5F5);

  // ==================== Text Colors ====================
  static const Color textPrimary = Color(0xFF000000);
  static const Color textSecondary = Color(0xFF666666);
  static const Color textTertiary = Color(0xFF999999);
  static const Color textHint = Color(0xFFBDBDBD);
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  // ==================== Status Colors ====================
  /// Success - Green
  static const Color success = Color(0xFF22C55E);
  static const Color successLight = Color(0xFF4ADE80);

  /// Error - Red
  static const Color error = Color(0xFFEF4444);
  static const Color errorLight = Color(0xFFF87171);

  /// Warning - Yellow/Orange
  static const Color warning = Color(0xFFF59E0B);
  static const Color warningLight = Color(0xFFFBBF24);

  /// Info - Blue
  static const Color info = Color(0xFF3B82F6);
  static const Color infoLight = Color(0xFF60A5FA);

  // ==================== Item Type Colors ====================
  /// Donation items - Green
  static const Color donationType = Color(0xFF10B981);
  static const Color donationTypeLight = Color(0xFF34D399);

  /// Swap items - Purple
  static const Color swapType = Color(0xFF8B5CF6);
  static const Color swapTypeLight = Color(0xFFA78BFA);

  // ==================== UI Elements ====================
  /// Borders & Dividers
  static const Color borderColor = Color(0xFFE5E5E5);
  static const Color dividerColor = Color(0xFFEEEEEE);

  /// Icons
  static const Color iconPrimary = Color(0xFF000000);
  static const Color iconSecondary = Color(0xFF666666);
  static const Color iconTertiary = Color(0xFF999999);
  static const Color iconDisabled = Color(0xFFBDBDBD);

  /// Shadows
  static const Color shadowColor = Color(0x1A000000); // Black with 10% opacity

  /// Shimmer/Skeleton
  static const Color shimmerBase = Color(0xFFE0E0E0);
  static const Color shimmerHighlight = Color(0xFFF5F5F5);

  // ==================== Rating/Reputation ====================
  static const Color ratingStarFilled = Color(0xFFFFC107);
  static const Color ratingStarEmpty = Color(0xFFE0E0E0);

  // ==================== Badge Colors ====================
  static const Color badgeGold = Color(0xFFFFD700);
  static const Color badgeSilver = Color(0xFFC0C0C0);
  static const Color badgeBronze = Color(0xFFCD7F32);

  // ==================== Special States ====================
  /// Featured/Highlighted items
  static const Color featuredBadge = Color(0xFFFF6B6B);

  /// New badge
  static const Color newBadge = Color(0xFF00D9D5);

  /// Verified badge
  static const Color verifiedBadge = Color(0xFF22C55E);

  // ==================== Gradients ====================
  /// Primary gradient
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [mainColor, mainColorLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// Secondary gradient
  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [secondaryColor, secondaryColorLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // ==================== Social Platform Colors ====================
  static const Color facebook = Color(0xFF1877F2);
  static const Color twitter = Color(0xFF1DA1F2);
  static const Color instagram = Color(0xFFE4405F);
  static const Color whatsapp = Color(0xFF25D366);
}