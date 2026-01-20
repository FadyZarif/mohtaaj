import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/notifications_cubit/notifications_cubit.dart';
import '../../logic/notifications_cubit/notifications_state.dart';
import '../widgets/notification_item.dart';
import '../widgets/empty_notifications.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NotificationsCubit>()..loadNotifications(),
      child: const _NotificationsScreenBody(),
    );
  }
}

class _NotificationsScreenBody extends StatefulWidget {
  const _NotificationsScreenBody();

  @override
  State<_NotificationsScreenBody> createState() =>
      _NotificationsScreenBodyState();
}

class _NotificationsScreenBodyState extends State<_NotificationsScreenBody> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      context.read<NotificationsCubit>().loadMoreNotifications();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('الإشعارات', style: TextStyles.font18BlackSemiBold),
        actions: [
          BlocBuilder<NotificationsCubit, NotificationsState>(
            buildWhen: (previous, current) =>
                previous.showUnreadOnly != current.showUnreadOnly,
            builder: (context, state) {
              return IconButton(
                icon: Icon(
                  state.showUnreadOnly
                      ? Icons.filter_alt
                      : Icons.filter_alt_outlined,
                  color: state.showUnreadOnly
                      ? ColorsManager.mainColor
                      : ColorsManager.textPrimary,
                ),
                onPressed: () {
                  context.read<NotificationsCubit>().toggleUnreadFilter();
                },
                tooltip: 'عرض غير المقروءة فقط',
              );
            },
          ),
          BlocBuilder<NotificationsCubit, NotificationsState>(
            buildWhen: (previous, current) =>
                previous.unreadCount != current.unreadCount,
            builder: (context, state) {
              if (state.unreadCount == 0) return const SizedBox.shrink();
              return IconButton(
                icon: const Icon(Icons.done_all, color: ColorsManager.textPrimary),
                onPressed: () => _showMarkAllAsReadDialog(context),
                tooltip: 'تعليم الكل كمقروء',
              );
            },
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, color: ColorsManager.textPrimary),
            onSelected: (value) {
              if (value == 'delete_read') _showDeleteAllReadDialog(context);
            },
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'delete_read', child: Text('حذف المقروءة')),
            ],
          ),
        ],
      ),
      body: RefreshIndicator(
        color: ColorsManager.mainColor,
        onRefresh: () => context.read<NotificationsCubit>().refresh(),
        child: BlocConsumer<NotificationsCubit, NotificationsState>(
          listenWhen: (previous, current) => current.error != null,
          listener: (context, state) {
            if (state.error != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error!)),
              );
            }
          },
          buildWhen: (previous, current) =>
              previous.notifications != current.notifications ||
              previous.isLoading != current.isLoading,
          builder: (context, state) {
            if (state.isLoading && state.notifications.isEmpty) {
              return const Center(
                child: CircularProgressIndicator(color: ColorsManager.mainColor),
              );
            }
            if (state.notifications.isEmpty) return const EmptyNotifications();

            return ListView.separated(
              controller: _scrollController,
              padding: EdgeInsets.symmetric(vertical: 8.h),
              itemCount: state.notifications.length + (state.isLoadingMore ? 1 : 0),
              separatorBuilder: (context, index) => const Divider(height: 1),
              itemBuilder: (context, index) {
                if (index == state.notifications.length) {
                  return Padding(
                    padding: EdgeInsets.all(16.h),
                    child: const Center(
                      child: CircularProgressIndicator(color: ColorsManager.mainColor),
                    ),
                  );
                }
                final notification = state.notifications[index];
                return NotificationItem(
                  notification: notification,
                  onTap: () => _handleNotificationTap(context, notification),
                  onDelete: () => _showDeleteDialog(context, notification.id),
                );
              },
            );
          },
        ),
      ),
    );
  }

  void _handleNotificationTap(BuildContext context, notification) {
    final cubit = context.read<NotificationsCubit>();
    if (!notification.read) cubit.markAsRead(notification.id);

    if (notification.type == 'new_message' && notification.data != null) {
      final chatId = notification.data!['chatId'];
      if (chatId != null) {
        context.pushNamed(Routes.chatRoomScreen, arguments: chatId);
      }
    }
  }

  void _showMarkAllAsReadDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('تعليم الكل كمقروء'),
        content: const Text('هل تريد تعليم جميع الإشعارات كمقروءة؟'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('إلغاء'),
          ),
          TextButton(
            onPressed: () {
              context.read<NotificationsCubit>().markAllAsRead();
              Navigator.pop(dialogContext);
            },
            child: const Text('تأكيد'),
          ),
        ],
      ),
    );
  }

  void _showDeleteDialog(BuildContext context, String notificationId) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('حذف الإشعار'),
        content: const Text('هل تريد حذف هذا الإشعار؟'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('إلغاء'),
          ),
          TextButton(
            onPressed: () {
              context.read<NotificationsCubit>().deleteNotification(notificationId);
              Navigator.pop(dialogContext);
            },
            child: const Text('حذف'),
          ),
        ],
      ),
    );
  }

  void _showDeleteAllReadDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('حذف المقروءة'),
        content: const Text('هل تريد حذف جميع الإشعارات المقروءة؟'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('إلغاء'),
          ),
          TextButton(
            onPressed: () {
              context.read<NotificationsCubit>().deleteAllReadNotifications();
              Navigator.pop(dialogContext);
            },
            child: const Text('حذف'),
          ),
        ],
      ),
    );
  }
}
