// lib/features/chats/ui/screens/chat_room_screen.dart

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/chat_model.dart';
import '../../logic/chat_room/chat_room_cubit.dart';
import '../../logic/chat_room/chat_room_state.dart';
import '../widgets/chat_input_field.dart';
import '../widgets/item_preview_card.dart';
import '../widgets/message_bubble.dart';
import '../widgets/typing_indicator.dart';

class ChatRoomScreen extends StatefulWidget {
  final String chatId;

  const ChatRoomScreen({super.key, required this.chatId});

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  final _messageController = TextEditingController();
  final _scrollController = ScrollController();
  Timer? _typingTimer;

  @override
  void initState() {
    super.initState();
    context.read<ChatRoomCubit>().init(getIt<String>()); // Current user ID

    // Listen to scroll for pagination
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels == 0) {
      // Reached top - load more messages
      context.read<ChatRoomCubit>().loadMoreMessages();
    }
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    _typingTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      appBar: _buildAppBar(),
      body: BlocConsumer<ChatRoomCubit, ChatRoomState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (chat, messages, isOnline, isTyping) {
              return Column(
                children: [
                  // Item Preview Card
                  if (chat.item != null)
                    ItemPreviewCard(
                      item: chat.item!,
                      onTap: () {
                        context.pushNamed(
                          Routes.itemDetailsScreen,
                          arguments: chat.item!.id,
                        );
                      },
                    ),

                  // Messages List
                  Expanded(
                    child: _buildMessagesList(messages, isTyping),
                  ),

                  // Input Field
                  ChatInputField(
                    controller: _messageController,
                    onSend: _sendMessage,
                    onTextChanged: _onTextChanged,
                  ),
                ],
              );
            },
            editingMessage: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(
              child: Text(message, style: TextStyles.font16GreyRegular),
            ),
          );
        },
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      title: BlocBuilder<ChatRoomCubit, ChatRoomState>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (chat, _, isOnline, __) {
              final otherUser = chat.buyerId == getIt<String>()
                  ? chat.seller
                  : chat.buyer;

              return Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                otherUser.name,
                                style: TextStyles.font16BlackMedium,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            if (otherUser.isVerified)
                              Padding(
                                padding: EdgeInsets.only(right: 4.w),
                                child: Icon(
                                  Icons.verified,
                                  size: 14.sp,
                                  color: ColorsManager.success,
                                ),
                              ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 8.w,
                              height: 8.w,
                              margin: EdgeInsets.only(left: 4.w),
                              decoration: BoxDecoration(
                                color: isOnline
                                    ? ColorsManager.success
                                    : ColorsManager.textTertiary,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Text(
                              isOnline ? 'متصل الآن' : 'غير متصل',
                              style: TextStyles.font12GreyRegular,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }

  Widget _buildMessagesList(List<MessageModel> messages, bool isTyping) {
    if (messages.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.chat_bubble_outline,
              size: 60.sp,
              color: ColorsManager.textTertiary,
            ),
            SizedBox(height: 16.h),
            Text(
              'لا توجد رسائل بعد\nابدأ المحادثة!',
              textAlign: TextAlign.center,
              style: TextStyles.font16GreyRegular,
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      controller: _scrollController,
      reverse: true,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      itemCount: messages.length + (isTyping ? 1 : 0),
      itemBuilder: (context, index) {
        // Typing indicator at bottom
        if (isTyping && index == messages.length) {
          return const TypingIndicator();
        }

        final messageIndex = isTyping ? index : index;
        final reversedIndex = messages.length - 1 - messageIndex;
        final message = messages[reversedIndex];
        final isMe = message.senderId == getIt<String>();

        // Show date separator
        final showDateSeparator = reversedIndex == 0 ||
            !_isSameDay(
              message.createdAt,
              messages[reversedIndex - 1].createdAt,
            );

        return Column(
          children: [
            if (showDateSeparator) _buildDateSeparator(message.createdAt),
            MessageBubble(
              message: message,
              isMe: isMe,
              onEdit: isMe && !message.isDeleted
                  ? () => _showEditDialog(message)
                  : null,
              onDelete: isMe && !message.isDeleted
                  ? () => _confirmDelete(message)
                  : null,
            ),
          ],
        );
      },
    );
  }

  Widget _buildDateSeparator(DateTime date) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Row(
        children: [
          Expanded(child: Divider(color: ColorsManager.dividerColor)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              _formatDate(date),
              style: TextStyles.font12GreyRegular,
            ),
          ),
          Expanded(child: Divider(color: ColorsManager.dividerColor)),
        ],
      ),
    );
  }

  bool _isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final messageDate = DateTime(date.year, date.month, date.day);

    if (messageDate == today) {
      return 'اليوم';
    } else if (messageDate == yesterday) {
      return 'أمس';
    } else {
      return '${date.day}/${date.month}/${date.year}';
    }
  }

  void _sendMessage() {
    final text = _messageController.text.trim();
    if (text.isEmpty) return;

    context.read<ChatRoomCubit>().sendMessage(text);
    _messageController.clear();

    // Scroll to bottom
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  void _onTextChanged(String text) {
    context.read<ChatRoomCubit>().onTextChanged(text);
  }

  void _showEditDialog(MessageModel message) {
    final controller = TextEditingController(text: message.body);

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('تعديل الرسالة', style: TextStyles.font18BlackBold),
        content: TextField(
          controller: controller,
          maxLines: 3,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text('إلغاء', style: TextStyles.font14GreyMedium),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<ChatRoomCubit>().editMessage(
                message.id,
                controller.text.trim(),
              );
              Navigator.pop(dialogContext);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsManager.mainColor,
            ),
            child: Text('حفظ', style: TextStyles.font14WhiteMedium),
          ),
        ],
      ),
    );
  }

  void _confirmDelete(MessageModel message) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('حذف الرسالة', style: TextStyles.font18BlackBold),
        content: Text(
          'هل أنت متأكد من حذف هذه الرسالة؟',
          style: TextStyles.font14GreyRegular,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text('إلغاء', style: TextStyles.font14GreyMedium),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<ChatRoomCubit>().deleteMessage(message.id);
              Navigator.pop(dialogContext);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsManager.error,
            ),
            child: Text('حذف', style: TextStyles.font14WhiteMedium),
          ),
        ],
      ),
    );
  }
}