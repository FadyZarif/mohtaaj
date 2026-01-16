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
import '../../../reports/data/models/report_model.dart';
import '../../../reports/ui/widgets/report_dialog.dart';
import '../../data/models/chat_model.dart';
import '../../logic/chat_room/chat_room_cubit.dart';
import '../../logic/chat_room/chat_room_state.dart';
import '../../logic/chats_list/chats_list_cubit.dart';
import '../../../../core/helpers/spacing.dart';
import '../widgets/chat_input_field.dart';
import '../widgets/chat_item_actions.dart';
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
  String? _currentUserId;

  @override
  void initState() {
    super.initState();
    try {
      _currentUserId = getIt<String>(instanceName: 'userId');

      // ✅ Mark as read - بس لو ChatsListCubit موجود
      try {
        context.read<ChatsListCubit>().markChatAsRead(widget.chatId);
      } catch (e) {
        print('⚠️ ChatsListCubit not found - skipping markChatAsRead');
      }

      // Initialize chat room
      context.read<ChatRoomCubit>().init(_currentUserId!);
    } catch (e) {
      print('User not logged in: $e');
    }

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels == 0) {
      // Reached top - load more messages
      context.read<ChatRoomCubit>().loadMoreMessages();
    }
  }

  // ✅ أضف الـ method ده
  void _handleTyping() {
    final cubit = context.read<ChatRoomCubit>();

    // Emit typing = true
    cubit.setTyping(true);

    // Cancel previous timer
    _typingTimer?.cancel();

    // Stop typing after 2 seconds of inactivity
    _typingTimer = Timer(const Duration(seconds: 2), () {
      cubit.setTyping(false);
    });
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
              print('❌ Error: $message');
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
            success: (chat, messages, isOnline, isTyping, isClosingItem, isRatingUser, hasRatedSeller) {
              // Check if buyer should see rating section
              final isBuyer = chat.buyerId == _currentUserId;
              final isItemClosed = chat.item?.status == 'closed';
              final isActualBuyer = chat.item?.buyerId == _currentUserId;
              // ✅ canRate من الـ API مباشرة
              final canRate = chat.item?.canRate ?? false;
              final showRatingSection = canRate;

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

                  // Seller Actions (Mark as sold) - show inline
                  if (chat.item != null &&
                      _currentUserId != null &&
                      chat.sellerId == _currentUserId &&
                      chat.item?.status == 'active')
                    ChatItemActions(
                      chat: chat,
                      currentUserId: _currentUserId!,
                      isClosingItem: isClosingItem,
                      isRatingUser: isRatingUser,
                      hasRatedSeller: hasRatedSeller,
                    ),

                  // Already rated message - actual buyer who can't rate anymore
                  if (isBuyer && isItemClosed && isActualBuyer && !canRate)
                    ChatItemActions(
                      chat: chat,
                      currentUserId: _currentUserId!,
                      isClosingItem: isClosingItem,
                      isRatingUser: isRatingUser,
                      hasRatedSeller: hasRatedSeller,
                    ),

                  verticalSpace(8),

                  // Messages List
                  Expanded(
                    child: _buildMessagesList(messages, isTyping),
                  ),

                  // Buyer Rating Section - show at bottom above input
                  if (showRatingSection)
                    ChatItemActions(
                      chat: chat,
                      currentUserId: _currentUserId!,
                      isClosingItem: isClosingItem,
                      isRatingUser: isRatingUser,
                      hasRatedSeller: hasRatedSeller,
                    ),

                  // Input Field
                  ChatInputField(
                    controller: _messageController,
                    onSend: () {
                      final text = _messageController.text.trim();
                      if (text.isNotEmpty) {
                        context.read<ChatRoomCubit>().sendMessage(text);
                        _messageController.clear();
                      }
                    },
                    onTextChanged: (text) {
                      _handleTyping();
                    },
                    onCameraPressed: () {
                      context.read<ChatRoomCubit>().pickImageFromCamera();
                    },
                    onGalleryPressed: () {
                      context.read<ChatRoomCubit>().pickImageFromGallery();
                    },
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
            success: (chat, _, isOnline, __, ___, ____, _____) {
              final otherUser = chat.buyerId == _currentUserId
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
                            // verified badge
                            // if (otherUser.isVerified)
                            //   Padding(
                            //     padding: EdgeInsets.only(right: 4.w),
                            //     child: Icon(
                            //       Icons.verified,
                            //       size: 14.sp,
                            //       color: ColorsManager.success,
                            //     ),
                            //   ),
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
            orElse: () => const Text(''),
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
        if (isTyping && index == 0) {
          return const TypingIndicator();
        }

        final adjustedIndex = isTyping ? index - 1 : index;

        // ✅ messageIndex في الـ messages list
        final messageIndex = messages.length - 1 - adjustedIndex;
        final message = messages[messageIndex];
        final isMe = message.senderId == _currentUserId;

        // ✅ Date Separator يظهر فوق أول رسالة في اليوم الجديد
        bool showDateSeparator = false;

        if (messageIndex == 0) {
          // ✅ أول رسالة (الأقدم) - دايماً نعرض separator فوقها
          showDateSeparator = true;
        } else {
          // ✅ قارن مع الرسالة الأقدم منها (messageIndex - 1)
          final previousMessage = messages[messageIndex - 1];
          showDateSeparator = !_isSameDay(
            message.createdAt,
            previousMessage.createdAt,
          );
        }

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
               onReport: !isMe
                  ? () => _reportMessageDialog(context,message)
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
          Expanded(child: Divider(color: ColorsManager.borderColor)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              _formatDate(date),
              style: TextStyles.font12GreyMedium,
            ),
          ),
          Expanded(child: Divider(color: ColorsManager.borderColor)),
        ],
      ),
    );
  }

  bool _isSameDay(DateTime date1, DateTime date2) {
    final local1 = date1.toLocal();
    final local2 = date2.toLocal();
    return local1.year == local2.year &&
        local1.month == local2.month &&
        local1.day == local2.day;
  }

  String _formatDate(DateTime date) {
    final localDate = date.toLocal();
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final chatDate = DateTime(localDate.year, localDate.month, localDate.day);

    if (chatDate == today) {
      return 'اليوم';
    } else if (chatDate == yesterday) {
      return 'أمس';
    } else {
      return '${localDate.day}/${localDate.month}/${localDate.year}';
    }
  }

  void _showEditDialog(MessageModel message) {
    final controller = TextEditingController(text: message.body);

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('تعديل الرسالة', style: TextStyles.font16BlackSemiBold),
        content: TextField(
          controller: controller,
          maxLines: null,
          decoration: InputDecoration(
            hintText: 'اكتب الرسالة...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text('إلغاء', style: TextStyles.font14GreyMedium),
          ),
          ElevatedButton(
            onPressed: () {
              final newText = controller.text.trim();
              if (newText.isNotEmpty && newText != message.body) {
                context.read<ChatRoomCubit>().editMessage(message.id, newText);
              }
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
        title: Text('حذف الرسالة', style: TextStyles.font16BlackSemiBold),
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

  void _reportMessageDialog(BuildContext context, MessageModel message) {
    // ✅ Check if reporting self
    final currentUserId = getIt<String>(instanceName: 'userId');
    final isReportingSelf = message.sender?.id == currentUserId;

    showDialog(
      context: context,
      builder: (context) => ReportDialog(
        targetType: ReportTargetType.message,
        targetId: message.id,
        targetName: '\"${message.body}\" من ${message.sender?.name ?? 'مستخدم'}',
        isOwnContent: isReportingSelf, // ✅ Pass ownership info
      ),
    );
  }
}