// lib/features/reports/data/models/report_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_model.freezed.dart';
part 'report_model.g.dart';

@freezed
abstract class ReportModel with _$ReportModel {
  const factory ReportModel({
    required String id,
    required ReportTargetType targetType,
    required String targetId,
    required String reporterId,
    required String reason,
    required bool resolved,
    required DateTime createdAt,
    DateTime? resolvedAt,
    required ReporterModel reporter,
  }) = _ReportModel;

  factory ReportModel.fromJson(Map<String, dynamic> json) =>
      _$ReportModelFromJson(json);
}

@freezed
abstract class ReporterModel with _$ReporterModel {
  const factory ReporterModel({
    required String id,
    required String name,
    String? avatarUrl,
  }) = _ReporterModel;

  factory ReporterModel.fromJson(Map<String, dynamic> json) =>
      _$ReporterModelFromJson(json);
}

// Request
@freezed
abstract class CreateReportRequest with _$CreateReportRequest {
  const factory CreateReportRequest({
    required ReportTargetType targetType,
    required String targetId,
    required String reason,
  }) = _CreateReportRequest;

  factory CreateReportRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateReportRequestFromJson(json);
}

// Response - ✅ الهيكل الصحيح حسب الـ API
@freezed
abstract class CreateReportResponse with _$CreateReportResponse {
  const factory CreateReportResponse({
    required bool success,
    required CreateReportData data,
    required String timestamp,
  }) = _CreateReportResponse;

  factory CreateReportResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateReportResponseFromJson(json);
}

@freezed
abstract class CreateReportData with _$CreateReportData {
  const factory CreateReportData({
    required ReportModel report,
    required String message,
  }) = _CreateReportData;

  factory CreateReportData.fromJson(Map<String, dynamic> json) =>
      _$CreateReportDataFromJson(json);
}

@freezed
abstract class MyReportsResponse with _$MyReportsResponse {
  const factory MyReportsResponse({
    required bool success,
    required MyReportsData data,
    required String timestamp,
  }) = _MyReportsResponse;

  factory MyReportsResponse.fromJson(Map<String, dynamic> json) =>
      _$MyReportsResponseFromJson(json);
}

@freezed
abstract class MyReportsData with _$MyReportsData {
  const factory MyReportsData({
    required List<ReportModel> items,
    required ReportsMeta meta,
  }) = _MyReportsData;

  factory MyReportsData.fromJson(Map<String, dynamic> json) =>
      _$MyReportsDataFromJson(json);
}


@freezed
abstract class ReportsMeta with _$ReportsMeta {
  const factory ReportsMeta({
    required int page,
    required int limit,
    required int total,
    required int totalPages,
  }) = _ReportsMeta;

  factory ReportsMeta.fromJson(Map<String, dynamic> json) =>
      _$ReportsMetaFromJson(json);
}

// Enum for target types
enum ReportTargetType {
  item,
  user,
  message,
}

extension ReportTargetTypeX on ReportTargetType {
  String toNameString() {
    switch (this) {
      case ReportTargetType.item:
        return 'العنصر';
      case ReportTargetType.user:
        return 'المستخدم';
      case ReportTargetType.message:
        return 'الرسالة';
    }
  }
}