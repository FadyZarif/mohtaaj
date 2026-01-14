import 'package:flutter/material.dart';

class OnboardingModel {
  final IconData icon;
  final String title;
  final String description;

  OnboardingModel({
    required this.icon,
    required this.title,
    required this.description,
  });
}

// Onboarding data
List<OnboardingModel> onboardingPages = [
  OnboardingModel(
    icon: Icons.shopping_bag_outlined, // سنستخدم placeholder أو SVG
    title: 'بيع واشتري بسهولة',
    description: 'تصفح آلاف الإعلانات وابحث عن ما تحتاجه بسهولة وسرعة',
  ),
  OnboardingModel(
    icon: Icons.handshake,
    title: 'تبرع وساعد غيرك',
    description: 'شارك الأشياء التي لا تحتاجها مع من يحتاجها',
  ),
  OnboardingModel(
    icon: Icons.compare_arrows,
    title: 'تبادل الأغراض',
    description: 'بدّل أغراضك مع أشخاص آخرين واحصل على ما تريد',
  ),
];
