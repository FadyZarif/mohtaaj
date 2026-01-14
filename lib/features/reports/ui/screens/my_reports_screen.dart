// lib/features/reports/ui/screens/my_reports_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohtaaj/features/reports/logic/reports_cubit/reports_cubit.dart';
import 'package:mohtaaj/features/reports/logic/reports_cubit/reports_state.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../widgets/report_item_card.dart';

class MyReportsScreen extends StatelessWidget {
  const MyReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ReportsCubit>()..loadMyReports(),
      child: const _MyReportsScreenBody(),
    );
  }
}

class _MyReportsScreenBody extends StatefulWidget {
  const _MyReportsScreenBody();

  @override
  State<_MyReportsScreenBody> createState() => _MyReportsScreenBodyState();
}

class _MyReportsScreenBodyState extends State<_MyReportsScreenBody> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      context.read<ReportsCubit>().loadMoreReports();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Text('بلاغاتي', style: TextStyles.font20BlackBold),
        centerTitle: true,
      ),
      body: BlocBuilder<ReportsCubit, ReportsState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),

            // Create Report States - مش هنستخدمهم هنا
            creatingReport: () => const SizedBox(),
            reportCreated: (_, __) => const SizedBox(),

            // My Reports States
            loadingReports: () => const Center(child: CircularProgressIndicator()),
            loadingMoreReports: (reports) => _buildReportsList(
              context,
              reports,
              isLoadingMore: true,
            ),
            reportsLoaded: (reports, hasMorePages) => _buildReportsList(
              context,
              reports,
              hasMorePages: hasMorePages,
            ),

            // Error
            error: (message) => _buildErrorState(context, message),
          );
        },
      ),
    );
  }

  Widget _buildReportsList(
      BuildContext context,
      List reports,
      {
        bool hasMorePages = false,
        bool isLoadingMore = false,
      }
      ) {
    if (reports.isEmpty) {
      return _buildEmptyState();
    }

    return RefreshIndicator(
      onRefresh: () => context.read<ReportsCubit>().refreshReports(),
      child: ListView.builder(
        controller: _scrollController,
        padding: EdgeInsets.symmetric(vertical: 16.h),
        itemCount: reports.length + (hasMorePages || isLoadingMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == reports.length) {
            return Center(
              child: Padding(
                padding: EdgeInsets.all(16.h),
                child: const CircularProgressIndicator(),
              ),
            );
          }

          return ReportItemCard(report: reports[index]);
        },
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.flag_outlined,
            size: 80.sp,
            color: ColorsManager.textTertiary,
          ),
          SizedBox(height: 16.h),
          Text(
            'لا توجد بلاغات',
            style: TextStyles.font18BlackMedium,
          ),
          SizedBox(height: 8.h),
          Text(
            'لم تقم بإرسال أي بلاغات بعد',
            style: TextStyles.font14GreyRegular,
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 80.sp,
            color: ColorsManager.error,
          ),
          SizedBox(height: 16.h),
          Text(
            'حدث خطأ',
            style: TextStyles.font18BlackMedium,
          ),
          SizedBox(height: 8.h),
          Text(
            message,
            style: TextStyles.font14GreyRegular,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          ElevatedButton(
            onPressed: () => context.read<ReportsCubit>().loadMoreReports(),
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsManager.mainColor,
            ),
            child: Text('إعادة المحاولة', style: TextStyles.font14WhiteMedium),
          ),
        ],
      ),
    );
  }
}