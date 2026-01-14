class OnboardingModel {
  final String image;
  final String title;
  final String description;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

// Onboarding data
List<OnboardingModel> onboardingPages = [
  OnboardingModel(
    image: 'assets/images/onboarding_1.png', // سنستخدم placeholder أو SVG
    title: 'بيع واشتري بسهولة',
    description: 'تصفح آلاف الإعلانات وابحث عن ما تحتاجه بسهولة وسرعة',
  ),
  OnboardingModel(
    image: 'assets/images/onboarding_2.png',
    title: 'تبرع وساعد غيرك',
    description: 'شارك الأشياء التي لا تحتاجها مع من يحتاجها',
  ),
  OnboardingModel(
    image: 'assets/images/onboarding_3.png',
    title: 'تبادل الأغراض',
    description: 'بدّل أغراضك مع أشخاص آخرين واحصل على ما تريد',
  ),
];
