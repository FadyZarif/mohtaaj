import 'package:flutter/material.dart';
import '../../../../core/theming/colors.dart';

enum NotificationType {
  newMessage('new_message'),
  newOffer('new_offer'),
  offerAccepted('offer_accepted'),
  offerRejected('offer_rejected'),
  itemFavorited('item_favorited'),
  newRating('new_rating'),
  badgeEarned('badge_earned'),
  challengeCompleted('challenge_completed'),
  pointsEarned('points_earned'),
  requestFulfilled('request_fulfilled'),
  system('system');

  final String value;
  const NotificationType(this.value);

  // Get enum from string value
  static NotificationType fromString(String value) {
    return NotificationType.values.firstWhere(
      (type) => type.value == value,
      orElse: () => NotificationType.system,
    );
  }

  // Get notification icon based on type
  IconData get icon {
    switch (this) {
      case NotificationType.newMessage:
        return Icons.message;
      case NotificationType.newOffer:
        return Icons.local_offer;
      case NotificationType.offerAccepted:
        return Icons.check_circle;
      case NotificationType.offerRejected:
        return Icons.cancel;
      case NotificationType.itemFavorited:
        return Icons.favorite;
      case NotificationType.newRating:
        return Icons.star;
      case NotificationType.badgeEarned:
        return Icons.emoji_events;
      case NotificationType.challengeCompleted:
        return Icons.workspace_premium;
      case NotificationType.pointsEarned:
        return Icons.toll;
      case NotificationType.requestFulfilled:
        return Icons.assignment_turned_in;
      case NotificationType.system:
        return Icons.info;
    }
  }

  // Get notification color based on type
  Color get color {
    switch (this) {
      case NotificationType.newMessage:
        return ColorsManager.mainColor;
      case NotificationType.newOffer:
        return Colors.orange;
      case NotificationType.offerAccepted:
        return Colors.green;
      case NotificationType.offerRejected:
        return ColorsManager.error;
      case NotificationType.itemFavorited:
        return Colors.pink;
      case NotificationType.newRating:
        return Colors.amber;
      case NotificationType.badgeEarned:
        return Colors.deepPurple;
      case NotificationType.challengeCompleted:
        return Colors.teal;
      case NotificationType.pointsEarned:
        return Colors.indigo;
      case NotificationType.requestFulfilled:
        return Colors.lightGreen;
      case NotificationType.system:
        return Colors.blueGrey;
    }
  }

  // Get display name in Arabic
  String get displayName {
    switch (this) {
      case NotificationType.newMessage:
        return 'رسالة جديدة';
      case NotificationType.newOffer:
        return 'عرض جديد';
      case NotificationType.offerAccepted:
        return 'تم قبول العرض';
      case NotificationType.offerRejected:
        return 'تم رفض العرض';
      case NotificationType.itemFavorited:
        return 'إعجاب بإعلانك';
      case NotificationType.newRating:
        return 'تقييم جديد';
      case NotificationType.badgeEarned:
        return 'شارة جديدة';
      case NotificationType.challengeCompleted:
        return 'إنجاز تحدي';
      case NotificationType.pointsEarned:
        return 'نقاط جديدة';
      case NotificationType.requestFulfilled:
        return 'تحقيق طلب';
      case NotificationType.system:
        return 'إشعار النظام';
    }
  }
}
