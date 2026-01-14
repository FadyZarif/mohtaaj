// lib/features/reports/logic/reports_cubit/reports_state.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/report_model.dart';

part 'reports_state.freezed.dart';

@freezed
class ReportsState with _$ReportsState {
  const factory ReportsState.initial() = _Initial;

  // Create Report States
  const factory ReportsState.creatingReport() = _CreatingReport;
  const factory ReportsState.reportCreated({
    required ReportModel report,
    required String message,
  }) = _ReportCreated;

  // My Reports States
  const factory ReportsState.loadingReports() = _LoadingReports;
  const factory ReportsState.loadingMoreReports(
      List<ReportModel> currentReports,
      ) = _LoadingMoreReports;
  const factory ReportsState.reportsLoaded({
    required List<ReportModel> reports,
    required bool hasMorePages,
  }) = _ReportsLoaded;

  // Error
  const factory ReportsState.error(String message) = _Error;
}