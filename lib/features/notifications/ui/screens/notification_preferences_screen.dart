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
                  PopupMenuItem(value: 'enable_all', child: Text('تفعيل الكل')),
                  PopupMenuItem(
                      value: 'disable_all', child: Text('تعطيل الكل')),
                  PopupMenuItem(
                      value: 'reset', child: Text('إعادة الضبط')),
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
              // ── General (read-only) ──────────────────────────────────
              _SectionHeader(title: 'عام'),
              _InfoTile(
                title: 'إشعارات الهاتف',
                enabled: prefs.pushEnabled,
              ),
              _InfoTile(
                title: 'إشعارات البريد الإلكتروني',
                enabled: prefs.emailEnabled,
              ),

              // ── Quiet Hours (read-only) ──────────────────────────────
              _SectionHeader(title: 'ساعات الهدوء'),
              _InfoTile(
                title: 'ساعات الهدوء',
                subtitle: prefs.quietHoursEnabled
                    ? '${prefs.quietHoursStart ?? '--'} - ${prefs.quietHoursEnd ?? '--'}'
                    : 'معطّلة',
                enabled: prefs.quietHoursEnabled,
              ),

              // ── Notification Types (editable) ────────────────────────
              _SectionHeader(title: 'أنواع الإشعارات'),
              _PreferenceSwitch(
                title: 'رسائل جديدة',
                value: prefs.newMessageEnabled,
                onChanged: (v) =>
                    _update(context, FcmUpdatePreferencesRequest(newMessage: v)),
              ),
              _PreferenceSwitch(
                title: 'عروض جديدة',
                value: prefs.newOfferEnabled,
                onChanged: (v) =>
                    _update(context, FcmUpdatePreferencesRequest(newOffer: v)),
              ),
              _PreferenceSwitch(
                title: 'قبول العروض',
                value: prefs.offerAcceptedEnabled,
                onChanged: (v) => _update(
                    context, FcmUpdatePreferencesRequest(offerAccepted: v)),
              ),
              _PreferenceSwitch(
                title: 'رفض العروض',
                value: prefs.offerRejectedEnabled,
                onChanged: (v) => _update(
                    context, FcmUpdatePreferencesRequest(offerRejected: v)),
              ),
              _PreferenceSwitch(
                title: 'إضافة للمفضلة',
                value: prefs.itemFavoritedEnabled,
                onChanged: (v) => _update(
                    context, FcmUpdatePreferencesRequest(itemFavorited: v)),
              ),
              _PreferenceSwitch(
                title: 'تقييمات جديدة',
                value: prefs.newRatingEnabled,
                onChanged: (v) =>
                    _update(context, FcmUpdatePreferencesRequest(newRating: v)),
              ),
              _PreferenceSwitch(
                title: 'شارات جديدة',
                value: prefs.badgeEarnedEnabled,
                onChanged: (v) =>
                    _update(context, FcmUpdatePreferencesRequest(newBadge: v)),
              ),
              _PreferenceSwitch(
                title: 'إتمام التحديات',
                value: prefs.challengeEnabled,
                onChanged: (v) => _update(context,
                    FcmUpdatePreferencesRequest(challengeCompleted: v)),
              ),
              _PreferenceSwitch(
                title: 'كسب النقاط',
                value: prefs.pointsEarnedEnabled,
                onChanged: (v) =>
                    _update(context, FcmUpdatePreferencesRequest()),
              ),
              _PreferenceSwitch(
                title: 'تلبية الطلبات',
                value: prefs.requestFulfilledEnabled,
                onChanged: (v) =>
                    _update(context, FcmUpdatePreferencesRequest()),
              ),
              _PreferenceSwitch(
                title: 'إشعارات النظام',
                value: prefs.systemEnabled,
                onChanged: (v) => _update(context,
                    FcmUpdatePreferencesRequest(systemAnnouncement: v)),
              ),
              _PreferenceSwitch(
                title: 'إشعارات تسويقية',
                value: prefs.marketingEnabled,
                onChanged: (v) =>
                    _update(context, FcmUpdatePreferencesRequest(marketing: v)),
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

// ════════════════════════════════════════════════════════════════════
// Widgets
// ════════════════════════════════════════════════════════════════════

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

/// Read-only tile showing current state with a status icon
class _InfoTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final bool enabled;

  const _InfoTile({
    required this.title,
    this.subtitle,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        title: Text(title, style: TextStyles.font14BlackRegular),
        subtitle: subtitle != null
            ? Text(subtitle!, style: TextStyles.font12GreyRegular)
            : null,
        trailing: Icon(
          enabled ? Icons.check_circle_outline : Icons.cancel_outlined,
          color: enabled ? Colors.green : Colors.grey,
          size: 20,
        ),
      ),
    );
  }
}

class _PreferenceSwitch extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  const _PreferenceSwitch({
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SwitchListTile(
        title: Text(title, style: TextStyles.font14BlackRegular),
        value: value,
        activeThumbColor: ColorsManager.mainColor,
        onChanged: onChanged,
      ),
    );
  }
}
