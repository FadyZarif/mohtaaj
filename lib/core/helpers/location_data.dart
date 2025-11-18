class LocationData {
  // ===================== Country Mappings =====================

  /// Map English country names to Arabic
  static const Map<String, String> countryEnToAr = {
    'Egypt': 'مصر',
    'Saudi Arabia': 'السعودية',
    'United Arab Emirates': 'الإمارات',
    'Kuwait': 'الكويت',
    'Qatar': 'قطر',
    'Bahrain': 'البحرين',
    'Oman': 'عمان',
    'Jordan': 'الأردن',
    'Lebanon': 'لبنان',
    'Syria': 'سوريا',
    'Iraq': 'العراق',
    'Palestine': 'فلسطين',
    'Yemen': 'اليمن',
    'Libya': 'ليبيا',
    'Tunisia': 'تونس',
    'Algeria': 'الجزائر',
    'Morocco': 'المغرب',
    'Sudan': 'السودان',
    'Somalia': 'الصومال',
    'Djibouti': 'جيبوتي',
    'Mauritania': 'موريتانيا',
    'Comoros': 'جزر القمر',
  };

  /// Map Arabic country names to country codes (for phone)
  static const Map<String, String> countryToPhoneCode = {
    'مصر': 'EG',
    'السعودية': 'SA',
    'الإمارات': 'AE',
    'الكويت': 'KW',
    'قطر': 'QA',
    'البحرين': 'BH',
    'عمان': 'OM',
    'الأردن': 'JO',
    'لبنان': 'LB',
    'سوريا': 'SY',
    'العراق': 'IQ',
    'فلسطين': 'PS',
    'اليمن': 'YE',
    'ليبيا': 'LY',
    'تونس': 'TN',
    'الجزائر': 'DZ',
    'المغرب': 'MA',
    'السودان': 'SD',
    'الصومال': 'SO',
    'جيبوتي': 'DJ',
    'موريتانيا': 'MR',
    'جزر القمر': 'KM',
  };

  // ===================== City Mappings =====================

  /// Map English city names to Arabic (Egyptian cities)
  static const Map<String, String> egyptCityEnToAr = {
    'Cairo': 'القاهرة',
    'Alexandria': 'الإسكندرية',
    'Giza': 'الجيزة',
    'Shubra El Kheima': 'شبرا الخيمة',
    'Port Said': 'بورسعيد',
    'Suez': 'السويس',
    'Luxor': 'الأقصر',
    'Mansoura': 'المنصورة',
    'El-Mahalla El-Kubra': 'المحلة الكبرى',
    'Tanta': 'طنطا',
    'Asyut': 'أسيوط',
    'Ismailia': 'الإسماعيلية',
    'Faiyum': 'الفيوم',
    'Zagazig': 'الزقازيق',
    'Damietta': 'دمياط',
    'Aswan': 'أسوان',
    'Minya': 'المنيا',
    'Damanhur': 'دمنهور',
    'Beni Suef': 'بني سويف',
    'Qena': 'قنا',
    'Sohag': 'سوهاج',
    'Kafr el-Sheikh': 'كفر الشيخ',
    'Sharm El Sheikh': 'شرم الشيخ',
    'Hurghada': 'الغردقة',
    'Marsa Matruh': 'مرسى مطروح',
    '6th of October City': 'السادس من أكتوبر',
    'New Cairo': 'القاهرة الجديدة',
    'Nasr City': 'مدينة نصر',
    'Heliopolis': 'مصر الجديدة',
    'Maadi': 'المعادي',
    'Dokki': 'الدقي',
    'Mohandessin': 'المهندسين',
  };

  /// Map English city names to Arabic (Saudi cities)
  static const Map<String, String> saudiCityEnToAr = {
    'Riyadh': 'الرياض',
    'Jeddah': 'جدة',
    'Mecca': 'مكة المكرمة',
    'Medina': 'المدينة المنورة',
    'Dammam': 'الدمام',
    'Khobar': 'الخبر',
    'Tabuk': 'تبوك',
    'Buraidah': 'بريدة',
    'Khamis Mushait': 'خميس مشيط',
    'Hail': 'حائل',
    'Abha': 'أبها',
    'Jubail': 'الجبيل',
    'Taif': 'الطائف',
    'Yanbu': 'ينبع',
    'Qatif': 'القطيف',
  };

  /// Map English city names to Arabic (UAE cities)
  static const Map<String, String> uaeCityEnToAr = {
    'Dubai': 'دبي',
    'Abu Dhabi': 'أبوظبي',
    'Sharjah': 'الشارقة',
    'Ajman': 'عجمان',
    'Al Ain': 'العين',
    'Ras Al Khaimah': 'رأس الخيمة',
    'Fujairah': 'الفجيرة',
    'Umm Al Quwain': 'أم القيوين',
  };

  // ===================== Lists =====================

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
    'السادس من أكتوبر',
    'القاهرة الجديدة',
    'مدينة نصر',
    'مصر الجديدة',
    'المعادي',
    'الدقي',
    'المهندسين',
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

  // ===================== Helper Methods =====================

  /// Convert English country name to Arabic
  static String getArabicCountry(String englishName) {
    return countryEnToAr[englishName] ?? englishName;
  }

  /// Convert English city name to Arabic based on country
  static String getArabicCity(String englishName, String country) {
    // Try to find in Egypt cities first
    if (egyptCityEnToAr.containsKey(englishName)) {
      return egyptCityEnToAr[englishName]!;
    }

    // Try Saudi cities
    if (saudiCityEnToAr.containsKey(englishName)) {
      return saudiCityEnToAr[englishName]!;
    }

    // Try UAE cities
    if (uaeCityEnToAr.containsKey(englishName)) {
      return uaeCityEnToAr[englishName]!;
    }

    // Return original if not found
    return englishName;
  }

  /// Find closest matching city from list
  static String? findMatchingCity(String cityName, List<String> cities) {
    // Direct match
    if (cities.contains(cityName)) {
      return cityName;
    }

    // Try to find partial match
    final lowerCity = cityName.toLowerCase();
    for (final city in cities) {
      if (city.toLowerCase().contains(lowerCity) ||
          lowerCity.contains(city.toLowerCase())) {
        return city;
      }
    }

    return null;
  }

  /// Get phone country code from Arabic country name
  static String getPhoneCountryCode(String arabicCountry) {
    return countryToPhoneCode[arabicCountry] ?? 'EG';
  }

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
        return egyptianCities;
    }
  }

  /// Get all cities
  static List<String> getAllCities() {
    return [
      ...egyptianCities,
      ...saudiCities,
      ...uaeCities,
    ];
  }
}