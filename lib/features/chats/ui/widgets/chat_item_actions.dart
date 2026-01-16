// lib/features/chats/ui/widgets/chat_item_actions.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/chat_model.dart';
import '../../logic/chat_room/chat_room_cubit.dart';
import '../../logic/chat_room/chat_room_state.dart';
import 'confirm_sale_dialog.dart';

class ChatItemActions extends StatefulWidget {
  final ChatModel chat;
  final String currentUserId;
  final bool isClosingItem;
  final bool isRatingUser;
  final bool hasRatedSeller;

  const ChatItemActions({
    super.key,
    required this.chat,
    required this.currentUserId,
    required this.isClosingItem,
    required this.isRatingUser,
    required this.hasRatedSeller,
  });

  @override
  State<ChatItemActions> createState() => _ChatItemActionsState();
}

class _ChatItemActionsState extends State<ChatItemActions> {
  int _selectedRating = 5;
  final _commentController = TextEditingController();

  bool get _isSeller => widget.chat.sellerId == widget.currentUserId;
  bool get _isBuyer => widget.chat.buyerId == widget.currentUserId;
  bool get _isItemActive => widget.chat.item?.status == 'active';
  bool get _isItemClosed => widget.chat.item?.status == 'closed';
  bool get _isActualBuyer => widget.chat.item?.buyerId == widget.currentUserId;
  // ✅ canRate من الـ API - يعني المشتري الفعلي ولسه مقيمش
  bool get _canRate => widget.chat.item?.canRate ?? false;

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.chat.item == null) return const SizedBox.shrink();

    // Seller view - show "Sold to buyer" button when item is active
    if (_isSeller && _isItemActive) {
      return _buildSellerActions(context);
    }

    // Buyer view - show rating section if canRate=true OR already rated (actual buyer)
    if (_isBuyer && _isItemClosed && _isActualBuyer) {
      // canRate=true → show rating form
      // canRate=false && isActualBuyer → already rated
      return _buildBuyerRatingSection(context);
    }

    return const SizedBox.shrink();
  }

  Widget _buildSellerActions(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.w),
      child: ElevatedButton.icon(
        onPressed: widget.isClosingItem
            ? null
            : () => _showConfirmSaleDialog(context),
        icon: widget.isClosingItem
            ? SizedBox(
                width: 16.w,
                height: 16.w,
                child: const CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              )
            : const Icon(Icons.sell_outlined, color: Colors.white),
        label: Text(
          'تم البيع لهذا المشتري',
          style: TextStyles.font14WhiteMedium,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsManager.success,
          padding: EdgeInsets.symmetric(vertical: 12.h),
          minimumSize: Size(double.infinity, 44.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
    );
  }

  Widget _buildBuyerRatingSection(BuildContext context) {
    if (widget.hasRatedSeller) {
      return _buildAlreadyRatedMessage();
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: ColorsManager.shadowColor,
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.star_outline,
                color: ColorsManager.ratingStarFilled,
                size: 18.sp,
              ),
              horizontalSpace(6),
              Text(
                'قيم تجربتك مع البائع',
                style: TextStyles.font14BlackSemiBold,
              ),
            ],
          ),
          verticalSpace(12),
          // Star Rating + Comment in Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Star Rating
              Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  5,
                  (index) => GestureDetector(
                    onTap: () => setState(() => _selectedRating = index + 1),
                    child: Padding(
                      padding: EdgeInsets.only(left: 2.w),
                      child: Icon(
                        index < _selectedRating ? Icons.star : Icons.star_border,
                        size: 28.sp,
                        color: ColorsManager.ratingStarFilled,
                      ),
                    ),
                  ),
                ),
              ),
              horizontalSpace(12),
              // Comment TextField - Compact
              Expanded(
                child: TextField(
                  controller: _commentController,
                  maxLines: 1,
                  style: TextStyles.font14BlackRegular,
                  decoration: InputDecoration(
                    hintText: 'تعليق (اختياري)',
                    hintStyle: TextStyles.font12GreyRegular,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 10.h,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(color: ColorsManager.borderColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(color: ColorsManager.borderColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(color: ColorsManager.mainColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(12),
          // Submit Button
          SizedBox(
            width: double.infinity,
            height: 40.h,
            child: ElevatedButton(
              onPressed: widget.isRatingUser ? null : () => _submitRating(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsManager.mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              child: widget.isRatingUser
                  ? SizedBox(
                      width: 18.w,
                      height: 18.w,
                      child: const CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    )
                  : Text(
                      'إرسال التقييم',
                      style: TextStyles.font14WhiteMedium,
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAlreadyRatedMessage() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.w),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: ColorsManager.success.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: ColorsManager.success.withOpacity(0.3)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.check_circle_outline,
            color: ColorsManager.success,
            size: 20.sp,
          ),
          horizontalSpace(8),
          Text(
            'تم التقييم بنجاح',
            style: TextStyles.font14BlackMedium.copyWith(
              color: ColorsManager.success,
            ),
          ),
        ],
      ),
    );
  }

  void _showConfirmSaleDialog(BuildContext context) {
    // Store cubit reference before opening dialog
    final cubit = context.read<ChatRoomCubit>();

    showDialog(
      context: context,
      builder: (dialogContext) => BlocBuilder<ChatRoomCubit, ChatRoomState>(
        bloc: cubit,
        builder: (_, state) {
          final isLoading = state.maybeWhen(
            success: (_, __, ___, ____, isClosingItem, _____, ______) =>
                isClosingItem,
            orElse: () => false,
          );

          return ConfirmSaleDialog(
            buyerName: widget.chat.buyer.name,
            isLoading: isLoading,
            onConfirm: () {
              cubit.closeItemAsSold();
              Navigator.pop(dialogContext);
            },
          );
        },
      ),
    );
  }

  void _submitRating(BuildContext context) {
    context.read<ChatRoomCubit>().rateSeller(
          _selectedRating,
          _commentController.text.trim().isEmpty
              ? null
              : _commentController.text.trim(),
        );
  }
}
