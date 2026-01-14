// lib/features/reports/ui/widgets/report_dialog.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohtaaj/features/reports/logic/reports_cubit/reports_cubit.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/report_model.dart';
import '../../logic/reports_cubit/reports_state.dart';

class ReportDialog extends StatefulWidget {
  final ReportTargetType targetType; // 'item', 'user', 'message'
  final String targetId;
  final String targetName; // For display
  final bool isOwnContent; // ✅ أضف parameter جديد


  const ReportDialog({
    super.key,
    required this.targetType,
    required this.targetId,
    required this.targetName,
    this.isOwnContent = false, // ✅ Default false

  });

  @override
  State<ReportDialog> createState() => _ReportDialogState();
}

class _ReportDialogState extends State<ReportDialog> {
  final _reasonController = TextEditingController();
  String? _selectedReason;

  final List<String> _predefinedReasons = [
    'محتوى غير لائق',
    'احتيال أو نصب',
    'معلومات مضللة',
    'انتهاك حقوق الملكية',
    'آخر',
  ];

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ✅ Check if trying to report own content
    if (widget.isOwnContent) {
      return AlertDialog(
        title: Text(
          'تنبيه',
          style: TextStyles.font18BlackBold,
        ),
        content: Text(
          'لا يمكنك الإبلاغ عن المحتوى الخاص بك',
          style: TextStyles.font14GreyRegular,
        ),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsManager.mainColor,
            ),
            child: Text('حسناً', style: TextStyles.font14WhiteMedium),
          ),
        ],
      );
    }
    return BlocProvider(
      create: (context) => getIt<ReportsCubit>(),
      child: BlocConsumer<ReportsCubit, ReportsState>(
        listener: (context, state) {
          state.maybeWhen(
            reportCreated: (report, message) {
              Navigator.pop(context, true);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  backgroundColor: ColorsManager.success,
                ),
              );
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  backgroundColor: ColorsManager.error,
                ),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          final isLoading = state.mapOrNull(creatingReport: (_) => true) ?? false;

          return AlertDialog(
            title: Text(
              'إبلاغ عن ${widget.targetType.toNameString()}',
              style: TextStyles.font18BlackBold,
            ),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.targetName,
                    style: TextStyles.font14GreyMedium,
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'السبب:',
                    style: TextStyles.font14BlackMedium,
                  ),
                  SizedBox(height: 8.h),
                  ...(_predefinedReasons.map((reason) {
                    return RadioListTile<String>(
                      title: Text(reason, style: TextStyles.font14BlackRegular),
                      value: reason,
                      groupValue: _selectedReason,
                      onChanged: isLoading
                          ? null
                          : (value) {
                        setState(() => _selectedReason = value);
                      },
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                    );
                  })),
                  if (_selectedReason == 'آخر') ...[
                    SizedBox(height: 8.h),
                    TextField(
                      controller: _reasonController,
                      maxLines: 3,
                      enabled: !isLoading,
                      decoration: InputDecoration(
                        hintText: 'اكتب السبب...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: isLoading ? null : () => Navigator.pop(context),
                child: Text('إلغاء', style: TextStyles.font14GreyMedium),
              ),
              ElevatedButton(
                onPressed: isLoading || _selectedReason == null
                    ? null
                    : () => _submitReport(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsManager.error,
                ),
                child: isLoading
                    ? SizedBox(
                  width: 20.w,
                  height: 20.w,
                  child: const CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2,
                  ),
                )
                    : Text('إرسال', style: TextStyles.font14WhiteMedium),
              ),
            ],
          );
        },
      ),
    );
  }



  void _submitReport(BuildContext context) {
    final reason = _selectedReason == 'آخر'
        ? _reasonController.text.trim()
        : _selectedReason!;

    if (reason.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('الرجاء كتابة السبب')),
      );
      return;
    }

    context.read<ReportsCubit>().createReport(
      targetType: widget.targetType,
      targetId: widget.targetId,
      reason: reason,
    );
  }
}