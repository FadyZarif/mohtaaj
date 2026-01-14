// lib/features/chats/ui/widgets/message_bubble.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:photo_view/photo_view.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/chat_model.dart';

class MessageBubble extends StatelessWidget {
  final MessageModel message;
  final bool isMe;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;
  final VoidCallback? onReport;

  const MessageBubble({
    super.key,
    required this.message,
    required this.isMe,
    this.onEdit,
    this.onDelete,
    this.onReport,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: GestureDetector(
        onLongPress: () {
          if (!message.isDeleted &&
              (onEdit != null || onDelete != null || onReport != null)) {
            _showOptionsBottomSheet(context);
          }
        },
        onTap: () {
          if (message.type == MessageType.image && message.imageUrl != null) {
            _showImageViewer(context);
          }
        },
        child: Container(
          margin: EdgeInsets.only(
            bottom: 8.h,
            left: isMe ? 60.w : 0,
            right: isMe ? 0 : 60.w,
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          decoration: BoxDecoration(
            color: message.isDeleted
                ? ColorsManager
                      .backgroundColor // ✅ لون مختلف للمحذوفة
                : isMe
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
                Text(message.sender!.name, style: TextStyles.font12BlackBold),
                SizedBox(height: 4.h),
              ],

              // ✅ لو محذوفة - اعرض رسالة مخصصة
              if (message.isDeleted) ...[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.block,
                      size: 14.sp,
                      color: ColorsManager.textTertiary,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      'تم حذف هذه الرسالة',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: ColorsManager.textTertiary,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ] else ...[
                // Image message
                if (message.type == MessageType.image &&
                    message.imageUrl != null)
                  _buildImageMessage(),

                // Text body
                if (message.body.isNotEmpty)
                  Text(
                    message.body,
                    style: isMe
                        ? TextStyles.font14WhiteRegular
                        : TextStyles.font14BlackRegular,
                  ),
              ],

              SizedBox(height: 4.h),

              // Time + Status
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // ✅ Edited indicator - بخط أكبر وأوضح
                  if (message.isEdited && !message.isDeleted) ...[
                    Icon(
                      Icons.edit,
                      size: 10.sp,
                      color: isMe
                          ? Colors.white.withOpacity(0.7)
                          : ColorsManager.textTertiary,
                    ),
                    SizedBox(width: 2.w),
                    Text(
                      'معدلة',
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: isMe
                            ? Colors.white.withOpacity(0.7)
                            : ColorsManager.textTertiary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4.w),
                  ],

                  // Time
                  Text(
                    _formatTime(message.createdAt),
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: message.isDeleted
                          ? ColorsManager.textTertiary
                          : isMe
                          ? Colors.white.withOpacity(0.7)
                          : ColorsManager.textTertiary,
                    ),
                  ),

                  // Read receipt (for my messages only) - مش للمحذوفة
                  if (isMe && !message.isDeleted) ...[
                    SizedBox(width: 4.w),
                    Icon(
                      message.readAt != null ? Icons.done_all : Icons.done,
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.r),
      child: CachedNetworkImage(
        imageUrl: message.imageUrl!,
        width: 200.w,
        fit: BoxFit.cover,
        fadeInDuration: Duration.zero,
        fadeOutDuration: Duration.zero,
        memCacheWidth: 600,
        memCacheHeight: 600,
        placeholder: (context, url) => Container(
          width: 200.w,
          height: 200.h,
          color: Colors.grey[300],
          child: Center(
            child: CircularProgressIndicator(
              color: ColorsManager.mainColor,
            ),
          ),
        ),
        errorWidget: (context, url, error) {
          return Container(
            width: 200.w,
            height: 200.h,
            color: Colors.grey[300],
            child: Icon(
              Icons.broken_image,
              size: 50.sp,
              color: Colors.grey[600],
            ),
          );
        },
      ),
    );
  }

  // ✅ أضف Method - Show Image Viewer
  void _showImageViewer(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          body: PhotoView(
            imageProvider: CachedNetworkImageProvider(message.imageUrl!),
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 3,
            initialScale: PhotoViewComputedScale.contained,
            backgroundDecoration: const BoxDecoration(
              color: Colors.black,
            ),
            loadingBuilder: (context, event) => Center(
              child: CircularProgressIndicator(
                color: Colors.white,
                value: event == null
                    ? 0
                    : event.cumulativeBytesLoaded / (event.expectedTotalBytes ?? 1),
              ),
            ),
            errorBuilder: (context, error, stackTrace) => Center(
              child: Icon(
                Icons.broken_image,
                size: 100.sp,
                color: Colors.white,
              ),
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
            if (onReport != null)
              ListTile(
                leading: const Icon(Icons.flag, color: ColorsManager.error),
                title: Text('إبلاغ', style: TextStyles.font16BlackMedium),
                onTap: () {
                  Navigator.pop(sheetContext);
                  onReport!();
                },
              ),
          ],
        ),
      ),
    );
  }
}
