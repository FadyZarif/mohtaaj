import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/fcm_preferences_model.dart';
import '../../logic/fcm_preferences_cubit/fcm_preferences_cubit.dart';
import '../../logic/fcm_preferences_cubit/fcm_preferences_state.dart';

class NotificationPreferencesScreen extends StatelessWidget {
  const NotificationPreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('إعدادات الإشعارات', style: TextStyles.font18BlackSemiBold),
        actions: [
          BlocBuilder<FcmPreferencesCubit, FcmPreferencesState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Padding(
                  padding: EdgeInsets.all(16),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: ColorsManager.mainColor,
                    ),
                  ),
                );
              }
              return PopupMenuButton<String>(
                icon: const Icon(
                  Icons.more_vert,
                  color: ColorsManager.textPrimary,
                ),
                onSelected: (value) {
                  final cubit = context.read<FcmPreferencesCubit>();
                  if (value == 'enable_all') cubit.enableAll();
                  if (value == 'disable_all') cubit.disableAll();
                  if (value == 'reset') cubit.resetToDefault();
                },
                itemBuilder: (_) => const [
                  PopupMenuItem(
                    value: 'enable_all',
                    child: Text('تفعيل الكل'),
                  ),
                  PopupMenuItem(
                    value: 'disable_all',
                    child: Text('تعطيل الكل'),
                  ),
                  PopupMenuItem(
                    value: 'reset',
                    child: Text('إعادة الضبط'),
                  ),
                ],
              );
            },
          ),
        ],
      ),
      body: BlocConsumer<FcmPreferencesCubit, FcmPreferencesState>(
        listener: (context, state) {
          if (state.error != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error!)),
            );
          }
        },
        builder: (context, state) {
          if (state.isLoading && state.preferences == null) {
            return const Center(
              child: CircularProgressIndicator(color: ColorsManager.mainColor),
            );
          }

          final prefs = state.preferences;
          if (prefs == null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 48, color: Colors.grey),
                  const SizedBox(height: 16),
                  const Text('تعذّر تحميل الإعدادات'),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<FcmPreferencesCubit>().loadPreferences(),
                    child: const Text('إعادة المحاولة'),
                  ),
                ],
              ),
            );
          }

          return ListView(
            children: [
              _SectionHeader(title: 'عام'),
              _PreferenceSwitch(
                title: 'إشعارات الهاتف',
                subtitle: 'استقبال إشعارات على هذا الجهاز',
                value: prefs.pushNotifications,
                onChanged: (v) => _update(context,
                    FcmUpdatePreferencesRequest(pushNotifications: v)),
              ),
              _PreferenceSwitch(
                title: 'إشعارات البريد الإلكتروني',
                subtitle: 'استقبال إشعارات عبر البريد الإلكتروني',
                value: prefs.emailNotifications,
                onChanged: (v) => _update(context,
                    FcmUpdatePreferencesRequest(emailNotifications: v)),
              ),
              _SectionHeader(title: 'ساعات الهدوء'),
              _PreferenceSwitch(
                title: 'تفعيل ساعات الهدوء',
                subtitle: 'إيقاف الإشعارات خلال ساعات محددة',
                value: prefs.quietHoursEnabled,
                onChanged: (v) => _update(context,
                    FcmUpdatePreferencesRequest(quietHoursEnabled: v)),
              ),
              if (prefs.quietHoursEnabled) ...[
                _TimePickerTile(
                  title: 'وقت البدء',
                  value: prefs.quietHoursStart ?? '22:00',
                  onChanged: (v) => _update(
                      context, FcmUpdatePreferencesRequest(quietHoursStart: v)),
                ),
                _TimePickerTile(
                  title: 'وقت الانتهاء',
                  value: prefs.quietHoursEnd ?? '07:00',
                  onChanged: (v) => _update(
                      context, FcmUpdatePreferencesRequest(quietHoursEnd: v)),
                ),
              ],
              _SectionHeader(title: 'أنواع الإشعارات'),
              _PreferenceSwitch(
                title: 'رسائل جديدة',
                value: prefs.newMessage,
                onChanged: (v) =>
                    _update(context, FcmUpdatePreferencesRequest(newMessage: v)),
              ),
              _PreferenceSwitch(
                title: 'إضافة للمفضلة',
                value: prefs.itemFavorited,
                onChanged: (v) => _update(
                    context, FcmUpdatePreferencesRequest(itemFavorited: v)),
              ),
              _PreferenceSwitch(
                title: 'شارات جديدة',
                value: prefs.badgeEarned,
                onChanged: (v) => _update(
                    context, FcmUpdatePreferencesRequest(badgeEarned: v)),
              ),
              _PreferenceSwitch(
                title: 'عروض جديدة',
                value: prefs.newOffer,
                onChanged: (v) =>
                    _update(context, FcmUpdatePreferencesRequest(newOffer: v)),
              ),
              _PreferenceSwitch(
                title: 'قبول العروض',
                value: prefs.offerAccepted,
                onChanged: (v) => _update(
                    context, FcmUpdatePreferencesRequest(offerAccepted: v)),
              ),
              _PreferenceSwitch(
                title: 'رفض العروض',
                value: prefs.offerRejected,
                onChanged: (v) => _update(
                    context, FcmUpdatePreferencesRequest(offerRejected: v)),
              ),
              _PreferenceSwitch(
                title: 'تقييمات جديدة',
                value: prefs.newRating,
                onChanged: (v) =>
                    _update(context, FcmUpdatePreferencesRequest(newRating: v)),
              ),
              _PreferenceSwitch(
                title: 'إتمام التحدي',
                value: prefs.challengeCompleted,
                onChanged: (v) => _update(
                    context, FcmUpdatePreferencesRequest(challengeCompleted: v)),
              ),
              _PreferenceSwitch(
                title: 'كسب النقاط',
                value: prefs.pointsEarned,
                onChanged: (v) => _update(
                    context, FcmUpdatePreferencesRequest(pointsEarned: v)),
              ),
              _PreferenceSwitch(
                title: 'تلبية الطلبات',
                value: prefs.requestFulfilled,
                onChanged: (v) => _update(
                    context, FcmUpdatePreferencesRequest(requestFulfilled: v)),
              ),
              _PreferenceSwitch(
                title: 'إشعارات النظام',
                value: prefs.systemNotifications,
                onChanged: (v) => _update(
                    context, FcmUpdatePreferencesRequest(systemNotifications: v)),
              ),
              _PreferenceSwitch(
                title: 'إشعارات تسويقية',
                value: prefs.marketingNotifications,
                onChanged: (v) => _update(context,
                    FcmUpdatePreferencesRequest(marketingNotifications: v)),
              ),
              const SizedBox(height: 24),
            ],
          );
        },
      ),
    );
  }

  void _update(BuildContext context, FcmUpdatePreferencesRequest request) {
    context.read<FcmPreferencesCubit>().updatePreference(request);
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
      child: Text(
        title,
        style: TextStyles.font14GreyRegular.copyWith(
          fontWeight: FontWeight.w600,
          color: ColorsManager.mainColor,
        ),
      ),
    );
  }
}

class _PreferenceSwitch extends StatelessWidget {
  final String title;
  final String? subtitle;
  final bool value;
  final ValueChanged<bool> onChanged;

  const _PreferenceSwitch({
    required this.title,
    this.subtitle,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SwitchListTile(
        title: Text(title, style: TextStyles.font14BlackRegular),
        subtitle: subtitle != null
            ? Text(subtitle!, style: TextStyles.font12GreyRegular)
            : null,
        value: value,
        activeThumbColor: ColorsManager.mainColor,
        onChanged: onChanged,
      ),
    );
  }
}

class _TimePickerTile extends StatelessWidget {
  final String title;
  final String value;
  final ValueChanged<String> onChanged;

  const _TimePickerTile({
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final parts = value.split(':');
    final hour = int.tryParse(parts.isNotEmpty ? parts[0] : '0') ?? 0;
    final minute = int.tryParse(parts.length > 1 ? parts[1] : '0') ?? 0;
    final timeOfDay = TimeOfDay(hour: hour, minute: minute);

    return Container(
      color: Colors.white,
      child: ListTile(
        title: Text(title, style: TextStyles.font14BlackRegular),
        trailing: Text(
          timeOfDay.format(context),
          style: TextStyles.font14GreyRegular,
        ),
        onTap: () async {
          final picked = await showTimePicker(
            context: context,
            initialTime: timeOfDay,
          );
          if (picked != null) {
            final formatted =
                '${picked.hour.toString().padLeft(2, '0')}:${picked.minute.toString().padLeft(2, '0')}';
            onChanged(formatted);
          }
        },
      ),
    );
  }
}
