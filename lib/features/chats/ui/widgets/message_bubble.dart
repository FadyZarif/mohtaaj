// lib/features/chats/ui/widgets/message_bubble.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/chat_model.dart';

class MessageBubble extends StatelessWidget {
  final MessageModel message;
  final bool isMe;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  const MessageBubble({
    super.key,
    required this.message,
    required this.isMe,
    this.onEdit,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerLeft : Alignment.centerRight,
      child: GestureDetector(
        onLongPress: () {
          if (onEdit != null || onDelete != null) {
            _showOptionsBottomSheet(context);
          }
        },
        child: Container(
          margin: EdgeInsets.only(
            bottom: 8.h,
            left: isMe ? 0 : 60.w,
            right: isMe ? 60.w : 0,
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          decoration: BoxDecoration(
            color: isMe
                ? ColorsManager.mainColor
                : Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.r),
              topRight: Radius.circular(12.r),
              bottomLeft: isMe ? Radius.circular(12.r) : Radius.zero,
              bottomRight: isMe ? Radius.zero : Radius.circular(12.r),
            ),
            boxShadow: [
              BoxShadow(
                color: ColorsManager.shadowColor,
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Sender name (if not me)
              if (!isMe && message.sender != null) ...[
                Text(
                  message.sender!.name,
                  style: TextStyles.font12BlackBold,
                ),
                SizedBox(height: 4.h),
              ],

              // Image message
              if (message.type == MessageType.image && message.imageUrl != null)
                _buildImageMessage(),

              // Text body
              if (message.body.isNotEmpty)
                Text(
                  message.body,
                  style: isMe
                      ? TextStyles.font14WhiteRegular
                      : TextStyles.font14BlackRegular,
                ),

              SizedBox(height: 4.h),

              // Time + Status
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Edited indicator
                  if (message.isEdited) ...[
                    Text(
                      'معدلة',
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: isMe
                            ? Colors.white.withOpacity(0.7)
                            : ColorsManager.textTertiary,
                      ),
                    ),
                    SizedBox(width: 4.w),
                  ],

                  // Time
                  Text(
                    _formatTime(message.createdAt),
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: isMe
                          ? Colors.white.withOpacity(0.7)
                          : ColorsManager.textTertiary,
                    ),
                  ),

                  // Read receipt (for my messages only)
                  if (isMe) ...[
                    SizedBox(width: 4.w),
                    Icon(
                      message.readAt != null
                          ? Icons.done_all
                          : Icons.done,
                      size: 14.sp,
                      color: message.readAt != null
                          ? Colors.blue
                          : Colors.white.withOpacity(0.7),
                    ),
                  ],

                  // Optimistic indicator
                  if (message.isOptimistic) ...[
                    SizedBox(width: 4.w),
                    SizedBox(
                      width: 12.w,
                      height: 12.w,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation(
                          isMe ? Colors.white : ColorsManager.mainColor,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageMessage() {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.r),
        child: CachedNetworkImage(
          imageUrl: message.imageUrl!,
          width: 200.w,
          fit: BoxFit.cover,
          placeholder: (_, __) => Container(
            width: 200.w,
            height: 150.h,
            color: ColorsManager.shimmerBase,
            child: const Center(child: CircularProgressIndicator()),
          ),
          errorWidget: (_, __, ___) => Container(
            width: 200.w,
            height: 150.h,
            color: ColorsManager.shimmerBase,
            child: Icon(
              Icons.broken_image,
              color: ColorsManager.iconTertiary,
              size: 40.sp,
            ),
          ),
        ),
      ),
    );
  }

  String _formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  void _showOptionsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      builder: (sheetContext) => Container(
        padding: EdgeInsets.all(16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (onEdit != null)
              ListTile(
                leading: const Icon(Icons.edit, color: ColorsManager.mainColor),
                title: Text('تعديل', style: TextStyles.font16BlackMedium),
                onTap: () {
                  Navigator.pop(sheetContext);
                  onEdit!();
                },
              ),
            if (onDelete != null)
              ListTile(
                leading: const Icon(Icons.delete, color: ColorsManager.error),
                title: Text('حذف', style: TextStyles.font16BlackMedium),
                onTap: () {
                  Navigator.pop(sheetContext);
                  onDelete!();
                },
              ),
          ],
        ),
      ),
    );
  }
}