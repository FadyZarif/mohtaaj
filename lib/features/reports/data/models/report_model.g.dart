// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReportModel _$ReportModelFromJson(Map<String, dynamic> json) => _ReportModel(
  id: json['id'] as String,
  targetType: $enumDecode(_$ReportTargetTypeEnumMap, json['targetType']),
  targetId: json['targetId'] as String,
  reporterId: json['reporterId'] as String,
  reason: json['reason'] as String,
  resolved: json['resolved'] as bool,
  createdAt: DateTime.parse(json['createdAt'] as String),
  resolvedAt: json['resolvedAt'] == null
      ? null
      : DateTime.parse(json['resolvedAt'] as String),
  reporter: ReporterModel.fromJson(json['reporter'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ReportModelToJson(_ReportModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'targetType': _$ReportTargetTypeEnumMap[instance.targetType]!,
      'targetId': instance.targetId,
      'reporterId': instance.reporterId,
      'reason': instance.reason,
      'resolved': instance.resolved,
      'createdAt': instance.createdAt.toIso8601String(),
      'resolvedAt': instance.resolvedAt?.toIso8601String(),
      'reporter': instance.reporter,
    };

const _$ReportTargetTypeEnumMap = {
  ReportTargetType.item: 'item',
  ReportTargetType.user: 'user',
  ReportTargetType.message: 'message',
};

_ReporterModel _$ReporterModelFromJson(Map<String, dynamic> json) =>
    _ReporterModel(
      id: json['id'] as String,
      name: json['name'] as String,
      avatarUrl: json['avatarUrl'] as String?,
    );

Map<String, dynamic> _$ReporterModelToJson(_ReporterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
    };

_CreateReportRequest _$CreateReportRequestFromJson(Map<String, dynamic> json) =>
    _CreateReportRequest(
      targetType: $enumDecode(_$ReportTargetTypeEnumMap, json['targetType']),
      targetId: json['targetId'] as String,
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$CreateReportRequestToJson(
  _CreateReportRequest instance,
) => <String, dynamic>{
  'targetType': _$ReportTargetTypeEnumMap[instance.targetType]!,
  'targetId': instance.targetId,
  'reason': instance.reason,
};

_CreateReportResponse _$CreateReportResponseFromJson(
  Map<String, dynamic> json,
) => _CreateReportResponse(
  success: json['success'] as bool,
  data: CreateReportData.fromJson(json['data'] as Map<String, dynamic>),
  timestamp: json['timestamp'] as String,
);

Map<String, dynamic> _$CreateReportResponseToJson(
  _CreateReportResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'timestamp': instance.timestamp,
};

_CreateReportData _$CreateReportDataFromJson(Map<String, dynamic> json) =>
    _CreateReportData(
      report: ReportModel.fromJson(json['report'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$CreateReportDataToJson(_CreateReportData instance) =>
    <String, dynamic>{'report': instance.report, 'message': instance.message};

_MyReportsResponse _$MyReportsResponseFromJson(Map<String, dynamic> json) =>
    _MyReportsResponse(
      success: json['success'] as bool,
      data: MyReportsData.fromJson(json['data'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$MyReportsResponseToJson(_MyReportsResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'timestamp': instance.timestamp,
    };

_MyReportsData _$MyReportsDataFromJson(Map<String, dynamic> json) =>
    _MyReportsData(
      items: (json['items'] as List<dynamic>)
          .map((e) => ReportModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: ReportsMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MyReportsDataToJson(_MyReportsData instance) =>
    <String, dynamic>{'items': instance.items, 'meta': instance.meta};

_ReportsMeta _$ReportsMetaFromJson(Map<String, dynamic> json) => _ReportsMeta(
  page: (json['page'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
  total: (json['total'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
);

Map<String, dynamic> _$ReportsMetaToJson(_ReportsMeta instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'total': instance.total,
      'totalPages': instance.totalPages,
    };
