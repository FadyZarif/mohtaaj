// lib/features/reports/logic/reports_cubit/reports_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import '../../data/models/report_model.dart';
import 'reports_state.dart';

class ReportsCubit extends Cubit<ReportsState> {
  final ApiService _apiService;

  // For My Reports pagination
  List<ReportModel> _allReports = [];
  int _currentPage = 1;
  bool _hasMorePages = true;

  ReportsCubit(this._apiService) : super(const ReportsState.initial());

  // ==================== CREATE REPORT ====================

  Future<void> createReport({
    required ReportTargetType targetType,
    required String targetId,
    required String reason,
  }) async {
    emit(const ReportsState.creatingReport());

    try {
      final request = CreateReportRequest(
        targetType: targetType,
        targetId: targetId,
        reason: reason,
      );

      final response = await _apiService.createReport(request);

      emit(
        ReportsState.reportCreated(
          report: response.data.report,
          message: response.data.message,
        ),
      );

      print('✅ Report created successfully');
    } catch (e) {
      final error = ApiErrorHandler.handle(e);

      String errorMessage = error.message;

      emit(ReportsState.error(errorMessage));
      print('❌ Error creating report: $errorMessage');
    }
  }

  // ==================== MY REPORTS ====================

  Future<void> loadMyReports({bool refresh = false}) async {
    if (refresh) {
      _currentPage = 1;
      _hasMorePages = true;
      _allReports = [];
    }

    if (!_hasMorePages && !refresh) {
      print('⚠️ No more pages to load');
      return;
    }

    if (_currentPage == 1) {
      emit(const ReportsState.loadingReports());
    } else {
      emit(ReportsState.loadingMoreReports(_allReports));
    }

    try {
      final MyReportsResponse response = await _apiService.getMyReports(
        page: _currentPage,
        limit: 20,
      );

      _allReports.addAll(response.data.items);
      _hasMorePages = _currentPage < response.data.meta.totalPages;
      _currentPage++;

      emit(
        ReportsState.reportsLoaded(
          reports: List.from(_allReports),
          hasMorePages: _hasMorePages,
        ),
      );

      print(
        '✅ Reports loaded: ${_allReports.length}, Has more: $_hasMorePages',
      );
    } catch (e) {
      final error = ApiErrorHandler.handle(e);
      emit(ReportsState.error(error.message));
      print('❌ Error loading reports: ${error.message}');
    }
  }

  Future<void> refreshReports() async {
    await loadMyReports(refresh: true);
  }

  Future<void> loadMoreReports() async {
    if (_hasMorePages) {
      await loadMyReports();
    }
  }

  // ==================== RESET ====================

  void reset() {
    emit(const ReportsState.initial());
  }
}
