import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohtaaj/core/helpers/app_dialogs.dart';
import 'package:mohtaaj/core/services/auth_service.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/profile_cubit/profile_cubit.dart';
import '../../logic/profile_cubit/profile_state.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_info_row.dart';
import '../widgets/profile_menu_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: getIt<AuthService>().isLoggedIn(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        if (snapshot.data == false) {
          return const SizedBox.shrink();
        } else {
          return BlocProvider(
            create: (context) => getIt<ProfileCubit>()..getProfile(),
            child: const _ProfileScreenBody(),
          );
        }
      },
    );
  }
}

class _ProfileScreenBody extends StatelessWidget {
  const _ProfileScreenBody();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'حسابي',
          style: TextStyles.font20BlackBold,
        ),
        centerTitle: true,
      ),
      body: BlocConsumer<ProfileCubit, ProfileState>(
        listener: (context, state) {
          state.whenOrNull(
            logoutSuccess: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'تم تسجيل الخروج بنجاح',
                    style: TextStyles.font14WhiteMedium,
                  ),
                  backgroundColor: ColorsManager.success,
                ),
              );
              // Navigate to login and clear stack
              context.pushNamedAndRemoveUntil(
                Routes.loginScreen,
                predicate: (route) => false,
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
          );
        },
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            success: (user) => _buildProfileContent(context, user),
            updateSuccess: (user) => _buildProfileContent(context, user),
            logoutSuccess: () => const SizedBox.shrink(),
            error: (message) => _buildErrorWidget(context, message),
          );
        },
      ),
    );
  }

  Widget _buildProfileContent(BuildContext context, user) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          verticalSpace(20),

          // Profile Header
          ProfileHeader(user: user),

          verticalSpace(24),

          // Info Section
          Container(
            padding: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
              color: ColorsManager.inputBackground,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Column(
              children: [
                ProfileInfoRow(
                  icon: Icons.email_outlined,
                  label: 'البريد الإلكتروني',
                  value: user.email,
                ),
                Divider(color: ColorsManager.borderColor),
                ProfileInfoRow(
                  icon: Icons.phone_outlined,
                  label: 'رقم الهاتف',
                  value: user.phone,
                  textDirection: TextDirection.ltr,
                ),
                Divider(color: ColorsManager.borderColor),
                ProfileInfoRow(
                  icon: Icons.location_on_outlined,
                  label: 'الموقع',
                  value: '${user.city}، ${user.country}',
                ),
                Divider(color: ColorsManager.borderColor),
                ProfileInfoRow(
                  icon: Icons.calendar_today_outlined,
                  label: 'تاريخ الانضمام',
                  value: _formatDate(user.createdAt),
                ),
              ],
            ),
          ),

          verticalSpace(24),

          // Menu Section
          Container(
            decoration: BoxDecoration(
              color: ColorsManager.inputBackground,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Column(
              children: [
                ProfileMenuItem(
                  icon: Icons.list_alt,
                  title: 'إعلاناتي (${user.itemsCount})',
                  onTap: () {
                    context.pushNamed(Routes.myItemsScreen);
                  },
                ),
                Divider(
                  color: ColorsManager.borderColor,
                  height: 1,
                  indent: 56.w,
                ),
                ProfileMenuItem(
                  icon: Icons.favorite_border,
                  title: 'المفضلة',
                  onTap: () {
                    context.pushNamed(Routes.favoritesScreen);
                  },
                ),
                Divider(
                  color: ColorsManager.borderColor,
                  height: 1,
                  indent: 56.w,
                ),
                ProfileMenuItem(
                  icon: Icons.edit_outlined,
                  title: 'تعديل الحساب',
                  onTap: () {
                    context.pushNamed(
                      Routes.editProfileScreen,
                      arguments: {
                        'user': user,
                        'cubit': context.read<ProfileCubit>(),
                      },
                    );
                  },
                ),
                Divider(
                  color: ColorsManager.borderColor,
                  height: 1,
                  indent: 56.w,
                ),
                ProfileMenuItem(
                  icon: Icons.settings_outlined,
                  title: 'الإعدادات',
                  onTap: () {
                    // TODO: Navigate to Settings
                  },
                ),
              ],
            ),
          ),

          verticalSpace(24),

          // Logout Button
          Container(
            decoration: BoxDecoration(
              color: ColorsManager.inputBackground,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: ProfileMenuItem(
              icon: Icons.logout,
              title: 'تسجيل الخروج',
              iconColor: ColorsManager.error,
              textColor: ColorsManager.error,
              showArrow: false,
              onTap: () => AppDialogs.showLogoutDialog(context),
            ),
          ),

          verticalSpace(32),
        ],
      ),
    );
  }

  Widget _buildErrorWidget(BuildContext context, String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 64.sp,
            color: ColorsManager.error,
          ),
          verticalSpace(16),
          Text(
            message,
            style: TextStyles.font16GreyRegular,
            textAlign: TextAlign.center,
          ),
          verticalSpace(16),
          ElevatedButton(
            onPressed: () {
              context.read<ProfileCubit>().getProfile();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsManager.mainColor,
            ),
            child: Text(
              'إعادة المحاولة',
              style: TextStyles.font14WhiteMedium,
            ),
          ),
        ],
      ),
    );
  }


  String _formatDate(DateTime? date) {
    if (date == null) return 'غير محدد';
    return '${date.day}/${date.month}/${date.year}';
  }
}
