class LocationData {
  // Egyptian Cities
  static const List<String> egyptianCities = [
    'القاهرة',
    'الإسكندرية',
    'الجيزة',
    'شبرا الخيمة',
    'بورسعيد',
    'السويس',
    'الأقصر',
    'المنصورة',
    'المحلة الكبرى',
    'طنطا',
    'أسيوط',
    'الإسماعيلية',
    'الفيوم',
    'الزقازيق',
    'دمياط',
    'أسوان',
    'المنيا',
    'دمنهور',
    'بني سويف',
    'قنا',
    'سوهاج',
    'كفر الشيخ',
    'شرم الشيخ',
    'الغردقة',
    'مرسى مطروح',
  ];

  // Arab Countries
  static const List<String> arabCountries = [
    'مصر',
    'السعودية',
    'الإمارات',
    'الكويت',
    'قطر',
    'البحرين',
    'عمان',
    'الأردن',
    'لبنان',
    'سوريا',
    'العراق',
    'فلسطين',
    'اليمن',
    'ليبيا',
    'تونس',
    'الجزائر',
    'المغرب',
    'السودان',
    'الصومال',
    'جيبوتي',
    'موريتانيا',
    'جزر القمر',
  ];

  // Saudi Cities
  static const List<String> saudiCities = [
    'الرياض',
    'جدة',
    'مكة المكرمة',
    'المدينة المنورة',
    'الدمام',
    'الخبر',
    'تبوك',
    'بريدة',
    'خميس مشيط',
    'حائل',
    'أبها',
    'الجبيل',
    'الطائف',
    'ينبع',
    'القطيف',
  ];

  // UAE Cities
  static const List<String> uaeCities = [
    'دبي',
    'أبوظبي',
    'الشارقة',
    'عجمان',
    'العين',
    'رأس الخيمة',
    'الفجيرة',
    'أم القيوين',
  ];

  /// Get cities based on country
  static List<String> getCitiesByCountry(String country) {
    switch (country) {
      case 'مصر':
        return egyptianCities;
      case 'السعودية':
        return saudiCities;
      case 'الإمارات':
        return uaeCities;
      default:
        return egyptianCities; // Default to Egyptian cities
    }
  }

  /// Get all cities (can be expanded)
  static List<String> getAllCities() {
    return [
      ...egyptianCities,
      ...saudiCities,
      ...uaeCities,
    ];
  }
}
