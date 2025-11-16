import 'package:flutter/material.dart';
import '../helpers/app_constants.dart';
import 'colors.dart';

class AppDecorations {
  // ==================== Card Decorations ====================
  
  static BoxDecoration cardDecoration = BoxDecoration(
    color: ColorsManager.cardBackground,
    borderRadius: BorderRadius.circular(AppConstants.radiusLarge),
    boxShadow: [
      BoxShadow(
        color: ColorsManager.shadowColor,
        blurRadius: 8,
        offset: const Offset(0, 2),
      ),
    ],
  );

  static BoxDecoration cardDecorationWithBorder = BoxDecoration(
    color: ColorsManager.cardBackground,
    borderRadius: BorderRadius.circular(AppConstants.radiusLarge),
    border: Border.all(
      color: ColorsManager.borderColor,
      width: AppConstants.borderWidth,
    ),
  );

  // ==================== Input Decorations ====================
  
  static InputDecoration inputDecoration({
    required String hintText,
    Widget? prefixIcon,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      hintText: hintText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      filled: true,
      fillColor: ColorsManager.inputBackground,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
        borderSide: const BorderSide(
          color: ColorsManager.mainColor,
          width: 2,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
        borderSide: const BorderSide(
          color: ColorsManager.error,
          width: 2,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
        borderSide: const BorderSide(
          color: ColorsManager.error,
          width: 2,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppConstants.spacingLarge,
        vertical: AppConstants.spacingMedium,
      ),
    );
  }

  // ==================== Button Decorations ====================
  
  static BoxDecoration primaryButtonDecoration = BoxDecoration(
    color: ColorsManager.mainColor,
    borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
  );

  static BoxDecoration secondaryButtonDecoration = BoxDecoration(
    color: ColorsManager.secondaryColor,
    borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
  );

  static BoxDecoration outlinedButtonDecoration = BoxDecoration(
    color: Colors.transparent,
    borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
    border: Border.all(
      color: ColorsManager.mainColor,
      width: AppConstants.borderWidth,
    ),
  );

  static BoxDecoration gradientButtonDecoration = BoxDecoration(
    gradient: ColorsManager.primaryGradient,
    borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
  );

  // ==================== Badge Decorations ====================
  
  static BoxDecoration badgeDecoration(Color color) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(AppConstants.radiusRound),
    );
  }

  static BoxDecoration statusBadgeDecoration(Color color) {
    return BoxDecoration(
      color: color.withOpacity(0.1),
      borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
      border: Border.all(
        color: color,
        width: 1,
      ),
    );
  }

  // ==================== Chip Decorations ====================
  
  static BoxDecoration chipDecoration = BoxDecoration(
    color: ColorsManager.mainColor.withOpacity(0.1),
    borderRadius: BorderRadius.circular(AppConstants.radiusRound),
  );

  static BoxDecoration chipDecorationSelected = BoxDecoration(
    color: ColorsManager.mainColor,
    borderRadius: BorderRadius.circular(AppConstants.radiusRound),
  );

  // ==================== Bottom Sheet Decoration ====================
  
  static BoxDecoration bottomSheetDecoration = const BoxDecoration(
    color: ColorsManager.cardBackground,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(AppConstants.radiusXLarge),
      topRight: Radius.circular(AppConstants.radiusXLarge),
    ),
  );

  // ==================== Image Placeholder ====================
  
  static BoxDecoration imagePlaceholderDecoration = BoxDecoration(
    color: ColorsManager.inputBackground,
    borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
  );

  // ==================== Divider ====================
  
  static BoxDecoration dividerDecoration = const BoxDecoration(
    color: ColorsManager.dividerColor,
  );
}
