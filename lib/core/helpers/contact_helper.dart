import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';
import 'spacing.dart';

/// Helper class for managing contact actions (Phone call & WhatsApp)
class ContactHelper {
  /// Show a bottom sheet with contact options (Phone call & WhatsApp)
  static Future<void> showContactOptions(
    BuildContext context,
    String phoneNumber,
  ) async {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => _ContactOptionsSheet(
        phoneNumber: phoneNumber,
      ),
    );
  }
}

class _ContactOptionsSheet extends StatelessWidget {
  final String phoneNumber;

  const _ContactOptionsSheet({
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Title
          Text(
            'اختر طريقة التواصل',
            style: TextStyles.font18BlackSemiBold,
          ),
          verticalSpace(24),

          // Phone Call Option
          _buildContactOption(
            context,
            icon: Icons.phone,
            label: 'اتصال هاتفي',
            color: ColorsManager.success,
            onTap: () {
              Navigator.pop(context);
              _makePhoneCall(context, phoneNumber);
            },
          ),
          verticalSpace(16),

          // WhatsApp Option
          _buildContactOption(
            context,
            icon: Icons.chat_bubble,
            label: 'واتس اب',
            color: const Color(0xFF25D366),
            onTap: () {
              Navigator.pop(context);
              _openWhatsApp(context, phoneNumber);
            },
          ),
          verticalSpace(24),

          // Cancel Button
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'إلغاء',
                style: TextStyles.font16BlackMedium.copyWith(
                  color: ColorsManager.textSecondary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactOption(
    BuildContext context, {
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color.withValues(alpha: 0.3)),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 24,
              ),
            ),
            horizontalSpace(16),
            Expanded(
              child: Text(
                label,
                style: TextStyles.font16BlackSemiBold,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: ColorsManager.textSecondary,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _makePhoneCall(BuildContext context, String phoneNumber) async {
    if (phoneNumber.isEmpty) {
      if (context.mounted) {
        _showErrorSnackBar(context, 'رقم الهاتف غير متوفر');
      }
      return;
    }

    // Remove any non-digit characters except +
    final cleanedNumber = phoneNumber.replaceAll(RegExp(r'[^\d+]'), '');
    final Uri phoneUri = Uri(scheme: 'tel', path: cleanedNumber);

    try {
      if (await canLaunchUrl(phoneUri)) {
        if (context.mounted) {
          await launchUrl(phoneUri);
        }
      } else {
        if (context.mounted) {
          _showErrorSnackBar(context, 'لا يمكن إجراء المكالمة من جهازك');
        }
      }
    } catch (e) {
      if (context.mounted) {
        _showErrorSnackBar(context, 'فشل إجراء المكالمة');
      }
    }
  }

  Future<void> _openWhatsApp(BuildContext context, String phoneNumber) async {
    if (phoneNumber.isEmpty) {
      if (context.mounted) {
        _showErrorSnackBar(context, 'رقم الهاتف غير متوفر');
      }
      return;
    }

    // Remove any non-digit characters except +
    final cleanedNumber = phoneNumber.replaceAll(RegExp(r'[^\d+]'), '');

    // Ensure the number starts with country code
    String whatsappNumber = cleanedNumber;
    if (!whatsappNumber.startsWith('+')) {
      // If no country code, assume Egypt (+20)
      if (whatsappNumber.startsWith('0')) {
        whatsappNumber = '+20${whatsappNumber.substring(1)}';
      } else if (!whatsappNumber.startsWith('20')) {
        whatsappNumber = '+20$whatsappNumber';
      } else {
        whatsappNumber = '+$whatsappNumber';
      }
    }

    print(whatsappNumber);

    final String message = 'مرحبا';
    final Uri whatsappUri = Uri.parse(
      'https://wa.me/$whatsappNumber?text=${Uri.encodeComponent(message)}',
    );

    try {
      if (await canLaunchUrl(whatsappUri)) {
        if (context.mounted) {
          await launchUrl(whatsappUri, mode: LaunchMode.externalApplication);
        }
      } else {
        if (context.mounted) {
          _showErrorSnackBar(context, 'واتس اب غير مثبت على جهازك');
        }
      }
    } catch (e) {
      if (context.mounted) {
        _showErrorSnackBar(context, 'فشل فتح واتس اب');
      }
    }
  }

  void _showErrorSnackBar(BuildContext context, String message) {
    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: ColorsManager.error,
      ),
    );
  }
}

