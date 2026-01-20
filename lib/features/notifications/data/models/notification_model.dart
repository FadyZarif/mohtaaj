import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'notification_type.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
abstract class NotificationModel with _$NotificationModel {
  const NotificationModel._();

  const factory NotificationModel({
    required String id,
    required String userId,
    required String type,
    required String title,
    required String body,
    Map<String, dynamic>? data,
    @Default(false) bool read,
    required DateTime createdAt,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  // Get NotificationType enum from string
  NotificationType get notificationType => NotificationType.fromString(type);

  // Get notification icon based on type
  IconData get icon => notificationType.icon;

  // Get notification color based on type
  Color get color => notificationType.color;

  // Get display name in Arabic
  String get displayName => notificationType.displayName;
}
