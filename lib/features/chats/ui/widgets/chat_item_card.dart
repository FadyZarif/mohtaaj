// lib/features/chats/ui/widgets/chat_item_card.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/chat_model.dart';

class ChatItemCard extends StatelessWidget {
  final ChatModel chat;
  final String currentUserId;
  final VoidCallback onTap;

  const ChatItemCard({
    super.key,
    required this.chat,
    required this.currentUserId,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final otherUser = chat.buyerId == currentUserId ? chat.seller : chat.buyer;
    final unreadCount = chat.unreadCount ?? 0;
    final hasUnread = unreadCount > 0;

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12.w),
        color: Colors.white,
        child: Row(
          children: [
            // Item Image with User Avatar
            _buildImageStack(),

            SizedBox(width: 12.w),

            // Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // User name + Online indicator
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          otherUser.name,
                          style: TextStyles.font16BlackMedium,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (otherUser.isVerified)
                        Icon(
                          Icons.verified,
                          size: 16.sp,
                          color: ColorsManager.success,
                        ),
                      // Online indicator (TODO: from socket)
                      // Container(
                      //   width: 8.w,
                      //   height: 8.w,
                      //   margin: EdgeInsets.only(right: 6.w),
                      //   decoration: BoxDecoration(
                      //     color: ColorsManager.success,
                      //     shape: BoxShape.circle,
                      //   ),
                      // ),
                    ],
                  ),

                  SizedBox(height: 4.h),

                  // Item name
                  if (chat.item != null)
                    Text(
                      chat.item!.title,
                      style: TextStyles.font14GreyRegular,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),

                  SizedBox(height: 4.h),

                  // Last message + Time
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          chat.lastMsg ?? 'لا توجد رسائل',
                          style: hasUnread
                              ? TextStyles.font14BlackMedium
                              : TextStyles.font14GreyRegular,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                      Text(
                        chat.updatedAt.timeAgo(),
                        style: TextStyles.font12GreyRegular,
                      ),

                      // Unread badge
                      if (hasUnread) ...[
                        SizedBox(width: 8.w),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 2.h,
                          ),
                          decoration: BoxDecoration(
                            color: ColorsManager.error,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Text(
                            unreadCount > 99 ? '99+' : '$unreadCount',
                            style: TextStyles.font12WhiteBold,
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageStack() {
    return SizedBox(
      width: 70.w,
      height: 70.w,
      child: Stack(
        children: [
          // Item image
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: chat.item?.images.isNotEmpty ?? false
                ? CachedNetworkImage(
              imageUrl: chat.item!.images.first,
              width: 70.w,
              height: 70.w,
              fit: BoxFit.cover,
              placeholder: (_, __) => Container(
                color: ColorsManager.shimmerBase,
              ),
              errorWidget: (_, __, ___) => Container(
                color: ColorsManager.shimmerBase,
                child: Icon(
                  Icons.image,
                  color: ColorsManager.iconTertiary,
                ),
              ),
            )
                : Container(
              color: ColorsManager.shimmerBase,
              child: Icon(
                Icons.image,
                color: ColorsManager.iconTertiary,
              ),
            ),
          ),

          // User avatar (small circle)
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 24.w,
              height: 24.w,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: ClipOval(
                child: (chat.buyerId == currentUserId
                    ? chat.seller.avatarUrl
                    : chat.buyer.avatarUrl) !=
                    null
                    ? CachedNetworkImage(
                  imageUrl: chat.buyerId == currentUserId
                      ? chat.seller.avatarUrl!
                      : chat.buyer.avatarUrl!,
                  fit: BoxFit.cover,
                  errorWidget: (_, __, ___) => _defaultAvatar(),
                )
                    : _defaultAvatar(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _defaultAvatar() {
    return Container(
      color: ColorsManager.mainColorLight,
      child: Icon(
        Icons.person,
        size: 14.sp,
        color: Colors.white,
      ),
    );
  }
}