// lib/features/chats/ui/widgets/chat_input_field.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class ChatInputField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSend;
  final Function(String) onTextChanged;

  const ChatInputField({
    super.key,
    required this.controller,
    required this.onSend,
    required this.onTextChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: ColorsManager.shadowColor,
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            // Camera button
            IconButton(
              onPressed: () {
                // TODO: Implement image picker
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('إرسال صورة قريباً...')),
                );
              },
              icon: Icon(
                Icons.camera_alt,
                color: ColorsManager.iconSecondary,
              ),
            ),

            // Attachment button
            IconButton(
              onPressed: () {
                // TODO: Implement file picker
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('إرفاق ملف قريباً...')),
                );
              },
              icon: Icon(
                Icons.attach_file,
                color: ColorsManager.iconSecondary,
              ),
            ),

            // Text field
            Expanded(
              child: TextField(
                controller: controller,
                onChanged: onTextChanged,
                maxLines: null,
                textInputAction: TextInputAction.newline,
                style: TextStyles.font14BlackRegular,
                decoration: InputDecoration(
                  hintText: 'اكتب رسالة...',
                  hintStyle: TextStyles.font14GreyRegular,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24.r),
                    borderSide: BorderSide(
                      color: ColorsManager.borderColor,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24.r),
                    borderSide: BorderSide(
                      color: ColorsManager.borderColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24.r),
                    borderSide: BorderSide(
                      color: ColorsManager.mainColor,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 8.h,
                  ),
                  filled: true,
                  fillColor: ColorsManager.inputBackground,
                ),
              ),
            ),

            SizedBox(width: 8.w),

            // Send button
            CircleAvatar(
              backgroundColor: ColorsManager.mainColor,
              radius: 24.r,
              child: IconButton(
                onPressed: onSend,
                icon: Icon(
                  Icons.send,
                  color: Colors.white,
                  size: 20.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}