import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohtaaj/core/helpers/cache_helper.dart';
import 'package:mohtaaj/core/helpers/spacing.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/onboarding_model.dart';
import '../../logic/cubit/onboarding_cubit.dart';
import '../../logic/cubit/onboarding_state.dart';
import '../widgets/onboarding_page_widget.dart';
import '../widgets/page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _completeOnboarding() async {
    await CacheHelper.saveData(key: 'hasSeenOnboarding',value: true);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: BlocConsumer<OnboardingCubit, OnboardingState>(
            listener: (context, state) {
              state.whenOrNull(
                pageChanged: (pageIndex) {
                  _pageController.animateToPage(
                    pageIndex,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                completed: () async {
                  await _completeOnboarding();
                  if (context.mounted) {
                    context.pushReplacementNamed(Routes.loginScreen);
                  }
                },
              );
            },
            builder: (context, state) {
              final cubit = context.read<OnboardingCubit>();

              return Column(
                children: [
                  // Skip button
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () async {
                        await _completeOnboarding();
                        if (context.mounted) {
                          context.pushReplacementNamed(Routes.loginScreen);
                        }
                      },
                      child: Text(
                        'تخطي',
                        style: TextStyles.font16GreyMedium,
                      ),
                    ),
                  ),

                  // PageView
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: (index) => cubit.onPageChanged(index),
                      itemCount: onboardingPages.length,
                      itemBuilder: (context, index) {
                        return OnboardingPageWidget(
                          model: onboardingPages[index],
                        );
                      },
                    ),
                  ),

                  verticalSpace(24),

                  // Page indicators
                  PageIndicator(
                    currentPage: cubit.currentPage,
                    pageCount: onboardingPages.length,
                  ),

                  verticalSpace(32),


                  // Next button
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: _buildNextButton(cubit),
                  ),

                  verticalSpace(32),

                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildNextButton(OnboardingCubit cubit) {
    return GestureDetector(
      onTap: () => cubit.nextPage(),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 16.h),
        decoration: BoxDecoration(
          color: ColorsManager.mainColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Center(
          child: Text(
            cubit.currentPage == onboardingPages.length - 1
                ? 'ابدأ الآن'
                : 'التالي',
            style: TextStyles.font16WhiteSemiBold,
          ),
        ),
      ),
    );
  }
}