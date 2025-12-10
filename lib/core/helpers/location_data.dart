/// LocationData - Helper class for Arab countries and their administrative divisions
///
/// Contains data for 22 Arab countries with their governorates/regions/emirates
///
/// Features:
/// - Country name translation (EN ↔ AR)
/// - City/Governorate name translation (EN ↔ AR)
/// - Phone country codes and dial codes
/// - Smart location detection from GPS coordinates
/// - Administrative division type information
///
/// Usage Examples:
/// ```dart
/// // Get cities for a country
/// List<String> cities = LocationData.getCitiesByCountry('مصر');
///
/// // Get dial code
/// String dialCode = LocationData.getDialCodeByCountry('مصر'); // '+20'
///
/// // Auto-detect from GPS
/// String? city = LocationData.detectCityFromPlacemark(
///   locality: placemark.locality,
///   subAdministrativeArea: placemark.subAdministrativeArea,
///   administrativeArea: placemark.administrativeArea,
///   arabicCountry: 'مصر',
/// );
/// ```
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
  static const Map<String, String> countryArToCode = {
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

  /// Map  country code to dial code
  static const Map<String, String> codeToDial = {
    'EG': '+20',
    'SA': '+966',
    'AE': '+971',
    'KW': '+965',
    'QA': '+974',
    'BH': '+973',
    'OM': '+968',
    'JO': '+962',
    'LB': '+961',
    'SY': '+963',
    'IQ': '+964',
    'PS': '+970',
    'YE': '+967',
    'LY': '+218',
    'TN': '+216',
    'DZ': '+213',
    'MA': '+212',
    'SD': '+249',
    'SO': '+252',
    'DJ': '+253',
    'MR': '+222',
    'KM': '+269',
  };

  // ===================== Governorate/Region Mappings =====================

  /// Map English governorate names to Arabic (Egyptian governorates - 27 محافظة)
  static const Map<String, String> egyptCityEnToAr = {
    'Cairo': 'القاهرة',
    'Alexandria': 'الإسكندرية',
    'Giza': 'الجيزة',
    'Qalyubia': 'القليوبية',
    'Port Said': 'بورسعيد',
    'Suez': 'السويس',
    'Luxor': 'الأقصر',
    'Dakahlia': 'الدقهلية',
    'Gharbia': 'الغربية',
    'Asyut': 'أسيوط',
    'Ismailia': 'الإسماعيلية',
    'Faiyum': 'الفيوم',
    'Sharqia': 'الشرقية',
    'Damietta': 'دمياط',
    'Aswan': 'أسوان',
    'Minya': 'المنيا',
    'Beheira': 'البحيرة',
    'Beni Suef': 'بني سويف',
    'Qena': 'قنا',
    'Sohag': 'سوهاج',
    'Kafr el-Sheikh': 'كفر الشيخ',
    'Monufia': 'المنوفية',
    'Red Sea': 'البحر الأحمر',
    'Matrouh': 'مطروح',
    'North Sinai': 'شمال سيناء',
    'South Sinai': 'جنوب سيناء',
    'New Valley': 'الوادي الجديد',
  };

  /// Map English region names to Arabic (Saudi regions - 13 منطقة إدارية)
  static const Map<String, String> saudiCityEnToAr = {
    'Riyadh': 'الرياض',
    'Makkah': 'مكة المكرمة',
    'Madinah': 'المدينة المنورة',
    'Eastern Province': 'الشرقية',
    'Asir': 'عسير',
    'Tabuk': 'تبوك',
    'Qassim': 'القصيم',
    'Hail': 'حائل',
    'Northern Borders': 'الحدود الشمالية',
    'Jazan': 'جازان',
    'Najran': 'نجران',
    'Al Baha': 'الباحة',
    'Al Jawf': 'الجوف',
  };

  /// Map English emirate names to Arabic (UAE emirates - 7 إمارات)
  static const Map<String, String> uaeCityEnToAr = {
    'Abu Dhabi': 'أبوظبي',
    'Dubai': 'دبي',
    'Sharjah': 'الشارقة',
    'Ajman': 'عجمان',
    'Umm Al Quwain': 'أم القيوين',
    'Ras Al Khaimah': 'رأس الخيمة',
    'Fujairah': 'الفجيرة',
  };

  /// Map English governorate names to Arabic (Kuwait governorates - 6 محافظات)
  static const Map<String, String> kuwaitCityEnToAr = {
    'Capital': 'العاصمة',
    'Hawalli': 'حولي',
    'Farwaniya': 'الفروانية',
    'Mubarak Al-Kabeer': 'مبارك الكبير',
    'Ahmadi': 'الأحمدي',
    'Jahra': 'الجهراء',
  };

  /// Map English municipality names to Arabic (Qatar municipalities - 8 بلديات)
  static const Map<String, String> qatarCityEnToAr = {
    'Doha': 'الدوحة',
    'Al Rayyan': 'الريان',
    'Umm Salal': 'أم صلال',
    'Al Khor': 'الخور',
    'Al Wakrah': 'الوكرة',
    'Al Daayen': 'الضعاين',
    'Al Shamal': 'الشمال',
    'Al Shahaniya': 'الشحانية',
  };

  /// Map English governorate names to Arabic (Bahrain governorates - 4 محافظات)
  static const Map<String, String> bahrainCityEnToAr = {
    'Capital': 'العاصمة',
    'Muharraq': 'المحرق',
    'Northern': 'الشمالية',
    'Southern': 'الجنوبية',
  };

  /// Map English governorate names to Arabic (Oman governorates - 11 محافظة)
  static const Map<String, String> omanCityEnToAr = {
    'Muscat': 'مسقط',
    'Dhofar': 'ظفار',
    'Musandam': 'مسندم',
    'Al Buraimi': 'البريمي',
    'Ad Dakhiliyah': 'الداخلية',
    'North Al Batinah': 'شمال الباطنة',
    'South Al Batinah': 'جنوب الباطنة',
    'South Al Sharqiyah': 'جنوب الشرقية',
    'North Al Sharqiyah': 'شمال الشرقية',
    'Ad Dhahirah': 'الظاهرة',
    'Al Wusta': 'الوسطى',
  };

  /// Map English governorate names to Arabic (Jordan governorates - 12 محافظة)
  static const Map<String, String> jordanCityEnToAr = {
    'Amman': 'عمان',
    'Irbid': 'إربد',
    'Zarqa': 'الزرقاء',
    'Balqa': 'البلقاء',
    'Madaba': 'مادبا',
    'Karak': 'الكرك',
    'Tafilah': 'الطفيلة',
    'Ma\'an': 'معان',
    'Aqaba': 'العقبة',
    'Jerash': 'جرش',
    'Ajloun': 'عجلون',
    'Mafraq': 'المفرق',
  };

  /// Map English governorate names to Arabic (Lebanon governorates - 8 محافظات)
  static const Map<String, String> lebanonCityEnToAr = {
    'Beirut': 'بيروت',
    'Mount Lebanon': 'جبل لبنان',
    'North': 'الشمال',
    'South': 'الجنوب',
    'Bekaa': 'البقاع',
    'Nabatieh': 'النبطية',
    'Akkar': 'عكار',
    'Baalbek-Hermel': 'بعلبك الهرمل',
  };

  /// Map English governorate names to Arabic (Syria governorates - 14 محافظة)
  static const Map<String, String> syriaCityEnToAr = {
    'Damascus': 'دمشق',
    'Rif Dimashq': 'ريف دمشق',
    'Aleppo': 'حلب',
    'Homs': 'حمص',
    'Hama': 'حماة',
    'Latakia': 'اللاذقية',
    'Tartus': 'طرطوس',
    'Idlib': 'إدلب',
    'Daraa': 'درعا',
    'Deir ez-Zor': 'دير الزور',
    'Al-Hasakah': 'الحسكة',
    'Ar-Raqqah': 'الرقة',
    'As-Suwayda': 'السويداء',
    'Quneitra': 'القنيطرة',
  };

  /// Map English governorate names to Arabic (Iraq governorates - 19 محافظة)
  static const Map<String, String> iraqCityEnToAr = {
    'Baghdad': 'بغداد',
    'Basra': 'البصرة',
    'Nineveh': 'نينوى',
    'Erbil': 'أربيل',
    'Sulaymaniyah': 'السليمانية',
    'Dohuk': 'دهوك',
    'Kirkuk': 'كركوك',
    'Anbar': 'الأنبار',
    'Diyala': 'ديالى',
    'Saladin': 'صلاح الدين',
    'Najaf': 'النجف',
    'Karbala': 'كربلاء',
    'Babil': 'بابل',
    'Wasit': 'واسط',
    'Maysan': 'ميسان',
    'Dhi Qar': 'ذي قار',
    'Muthanna': 'المثنى',
    'Qadisiyyah': 'القادسية',
    'Halabja': 'حلبجة',
  };

  /// Map English governorate names to Arabic (Palestine governorates - 16 محافظة)
  static const Map<String, String> palestineCityEnToAr = {
    'Jerusalem': 'القدس',
    'Hebron': 'الخليل',
    'Bethlehem': 'بيت لحم',
    'Ramallah and Al-Bireh': 'رام الله والبيرة',
    'Nablus': 'نابلس',
    'Jenin': 'جنين',
    'Tulkarm': 'طولكرم',
    'Qalqilya': 'قلقيلية',
    'Salfit': 'سلفيت',
    'Tubas': 'طوباس',
    'Jericho': 'أريحا',
    'Gaza': 'غزة',
    'North Gaza': 'شمال غزة',
    'Khan Yunis': 'خان يونس',
    'Rafah': 'رفح',
    'Deir al-Balah': 'دير البلح',
  };

  /// Map English governorate names to Arabic (Yemen governorates - 22 محافظة)
  static const Map<String, String> yemenCityEnToAr = {
    'Sana\'a': 'صنعاء',
    'Aden': 'عدن',
    'Taiz': 'تعز',
    'Hodeidah': 'الحديدة',
    'Ibb': 'إب',
    'Dhamar': 'ذمار',
    'Al Mahwit': 'المحويت',
    'Hajjah': 'حجة',
    'Saada': 'صعدة',
    'Amran': 'عمران',
    'Al Bayda': 'البيضاء',
    'Abyan': 'أبين',
    'Shabwah': 'شبوة',
    'Hadramaut': 'حضرموت',
    'Al Mahrah': 'المهرة',
    'Lahij': 'لحج',
    'Al Dali': 'الضالع',
    'Raymah': 'ريمة',
    'Al Jawf': 'الجوف',
    'Marib': 'مأرب',
    'Socotra': 'سقطرى',
    'Amanat Al Asimah': 'أمانة العاصمة',
  };

  /// Map English district names to Arabic (Libya districts - 22 شعبية)
  static const Map<String, String> libyaCityEnToAr = {
    'Tripoli': 'طرابلس',
    'Benghazi': 'بنغازي',
    'Misrata': 'مصراتة',
    'Al Bayda': 'البيضاء',
    'Zawiya': 'الزاوية',
    'Zuwara': 'زوارة',
    'Ajdabiya': 'أجدابيا',
    'Sebha': 'سبها',
    'Derna': 'درنة',
    'Tobruk': 'طبرق',
    'Khoms': 'الخمس',
    'Gharyan': 'غريان',
    'Murzuq': 'مرزق',
    'Sirte': 'سرت',
    'Ghat': 'غات',
    'Jufra': 'الجفرة',
    'Wadi al Hayaa': 'وادي الحياة',
    'Nalut': 'نالوت',
    'Jabal al Akhdar': 'الجبل الأخضر',
    'Nuqat al Khams': 'النقاط الخمس',
    'Wadi al Shatii': 'وادي الشاطئ',
    'Al Wahat': 'الواحات',
  };

  /// Map English governorate names to Arabic (Tunisia governorates - 24 ولاية)
  static const Map<String, String> tunisiaCityEnToAr = {
    'Tunis': 'تونس',
    'Ariana': 'أريانة',
    'Ben Arous': 'بن عروس',
    'Manouba': 'منوبة',
    'Nabeul': 'نابل',
    'Zaghouan': 'زغوان',
    'Bizerte': 'بنزرت',
    'Beja': 'باجة',
    'Jendouba': 'جندوبة',
    'Kef': 'الكاف',
    'Siliana': 'سليانة',
    'Kairouan': 'القيروان',
    'Kasserine': 'القصرين',
    'Sidi Bouzid': 'سيدي بوزيد',
    'Sousse': 'سوسة',
    'Monastir': 'المنستير',
    'Mahdia': 'المهدية',
    'Sfax': 'صفاقس',
    'Gafsa': 'قفصة',
    'Tozeur': 'توزر',
    'Kebili': 'قبلي',
    'Gabes': 'قابس',
    'Medenine': 'مدنين',
    'Tataouine': 'تطاوين',
  };

  /// Map English province names to Arabic (Algeria provinces - 58 ولاية - showing main ones)
  static const Map<String, String> algeriaCityEnToAr = {
    'Algiers': 'الجزائر',
    'Oran': 'وهران',
    'Constantine': 'قسنطينة',
    'Annaba': 'عنابة',
    'Blida': 'البليدة',
    'Batna': 'باتنة',
    'Setif': 'سطيف',
    'Tlemcen': 'تلمسان',
    'Biskra': 'بسكرة',
    'Bejaia': 'بجاية',
    'Tizi Ouzou': 'تيزي وزو',
    'Mostaganem': 'مستغانم',
    'Tiaret': 'تيارت',
    'Sidi Bel Abbes': 'سيدي بلعباس',
    'Skikda': 'سكيكدة',
    'Ouargla': 'ورقلة',
    'Djelfa': 'الجلفة',
    'Jijel': 'جيجل',
    'Chlef': 'الشلف',
    'Laghouat': 'الأغواط',
    'Bechar': 'بشار',
    'Tebessa': 'تبسة',
    'El Oued': 'الوادي',
    'Ghardaia': 'غرداية',
    'Ain Defla': 'عين الدفلى',
    'Bouira': 'البويرة',
    'Tipaza': 'تيبازة',
    'Mila': 'ميلة',
    'Guelma': 'قالمة',
    'Relizane': 'غليزان',
  };

  /// Map English region names to Arabic (Morocco regions - 12 جهة)
  static const Map<String, String> moroccoCityEnToAr = {
    'Tanger-Tetouan-Al Hoceima': 'طنجة تطوان الحسيمة',
    'Oriental': 'الشرق',
    'Fes-Meknes': 'فاس مكناس',
    'Rabat-Sale-Kenitra': 'الرباط سلا القنيطرة',
    'Beni Mellal-Khenifra': 'بني ملال خنيفرة',
    'Casablanca-Settat': 'الدار البيضاء سطات',
    'Marrakesh-Safi': 'مراكش آسفي',
    'Draa-Tafilalet': 'درعة تافيلالت',
    'Souss-Massa': 'سوس ماسة',
    'Guelmim-Oued Noun': 'كلميم واد نون',
    'Laayoune-Sakia El Hamra': 'العيون الساقية الحمراء',
    'Dakhla-Oued Ed-Dahab': 'الداخلة وادي الذهب',
  };

  /// Map English state names to Arabic (Sudan states - 18 ولاية)
  static const Map<String, String> sudanCityEnToAr = {
    'Khartoum': 'الخرطوم',
    'North Khartoum': 'الخرطوم بحري',
    'Omdurman': 'أم درمان',
    'Red Sea': 'البحر الأحمر',
    'Kassala': 'كسلا',
    'Gedaref': 'القضارف',
    'Sennar': 'سنار',
    'Blue Nile': 'النيل الأزرق',
    'White Nile': 'النيل الأبيض',
    'North Kordofan': 'شمال كردفان',
    'South Kordofan': 'جنوب كردفان',
    'West Kordofan': 'غرب كردفان',
    'North Darfur': 'شمال دارفور',
    'South Darfur': 'جنوب دارفور',
    'East Darfur': 'شرق دارفور',
    'West Darfur': 'غرب دارفور',
    'Central Darfur': 'وسط دارفور',
    'Northern': 'الشمالية',
  };

  /// Map English region names to Arabic (Somalia regions - 18 إقليم)
  static const Map<String, String> somaliaCityEnToAr = {
    'Banaadir': 'بنادر',
    'Awdal': 'أودال',
    'Woqooyi Galbeed': 'ولقي جلبيد',
    'Togdheer': 'توجدير',
    'Sanaag': 'سناج',
    'Sool': 'سول',
    'Bari': 'باري',
    'Nugaal': 'نوجال',
    'Mudug': 'مدج',
    'Galgaduud': 'جلجدود',
    'Hiran': 'هيران',
    'Middle Shabelle': 'شبيلي الوسطى',
    'Lower Shabelle': 'شبيلي السفلى',
    'Bakool': 'باكول',
    'Bay': 'باي',
    'Gedo': 'جيدو',
    'Middle Juba': 'جوبا الوسطى',
    'Lower Juba': 'جوبا السفلى',
  };

  /// Map English region names to Arabic (Djibouti regions - 6 أقاليم)
  static const Map<String, String> djiboutiCityEnToAr = {
    'Djibouti': 'جيبوتي',
    'Ali Sabieh': 'علي صبيح',
    'Dikhil': 'ديخيل',
    'Tadjourah': 'تاجورة',
    'Obock': 'أوبوك',
    'Arta': 'أرتا',
  };

  /// Map English region names to Arabic (Mauritania regions - 15 ولاية)
  static const Map<String, String> mauritaniaCityEnToAr = {
    'Nouakchott Nord': 'نواكشوط الشمالية',
    'Nouakchott Ouest': 'نواكشوط الغربية',
    'Nouakchott Sud': 'نواكشوط الجنوبية',
    'Adrar': 'أدرار',
    'Assaba': 'العصابة',
    'Brakna': 'البراكنة',
    'Dakhlet Nouadhibou': 'داخلة نواذيبو',
    'Gorgol': 'كوركول',
    'Guidimaka': 'كيديماغا',
    'Hodh Ech Chargui': 'الحوض الشرقي',
    'Hodh El Gharbi': 'الحوض الغربي',
    'Inchiri': 'إينشيري',
    'Tagant': 'تكانت',
    'Tiris Zemmour': 'تيرس زمور',
    'Trarza': 'الترارزة',
  };

  /// Map English island names to Arabic (Comoros islands - 3 جزر)
  static const Map<String, String> comorosCityEnToAr = {
    'Grande Comore': 'القمر الكبرى',
    'Anjouan': 'أنجوان',
    'Moheli': 'موهيلي',
  };

  // ===================== Unified Mappings =====================

  /// Unified map of all cities (English to Arabic)
  static final Map<String, String> _allCitiesEnToAr = {
    ...egyptCityEnToAr,
    ...saudiCityEnToAr,
    ...uaeCityEnToAr,
    ...kuwaitCityEnToAr,
    ...qatarCityEnToAr,
    ...bahrainCityEnToAr,
    ...omanCityEnToAr,
    ...jordanCityEnToAr,
    ...lebanonCityEnToAr,
    ...syriaCityEnToAr,
    ...iraqCityEnToAr,
    ...palestineCityEnToAr,
    ...yemenCityEnToAr,
    ...libyaCityEnToAr,
    ...tunisiaCityEnToAr,
    ...algeriaCityEnToAr,
    ...moroccoCityEnToAr,
    ...sudanCityEnToAr,
    ...somaliaCityEnToAr,
    ...djiboutiCityEnToAr,
    ...mauritaniaCityEnToAr,
    ...comorosCityEnToAr,
  };

  /// Map of country to its city mapping
  static const Map<String, Map<String, String>> _countryCityMaps = {
    'مصر': egyptCityEnToAr,
    'السعودية': saudiCityEnToAr,
    'الإمارات': uaeCityEnToAr,
    'الكويت': kuwaitCityEnToAr,
    'قطر': qatarCityEnToAr,
    'البحرين': bahrainCityEnToAr,
    'عمان': omanCityEnToAr,
    'الأردن': jordanCityEnToAr,
    'لبنان': lebanonCityEnToAr,
    'سوريا': syriaCityEnToAr,
    'العراق': iraqCityEnToAr,
    'فلسطين': palestineCityEnToAr,
    'اليمن': yemenCityEnToAr,
    'ليبيا': libyaCityEnToAr,
    'تونس': tunisiaCityEnToAr,
    'الجزائر': algeriaCityEnToAr,
    'المغرب': moroccoCityEnToAr,
    'السودان': sudanCityEnToAr,
    'الصومال': somaliaCityEnToAr,
    'جيبوتي': djiboutiCityEnToAr,
    'موريتانيا': mauritaniaCityEnToAr,
    'جزر القمر': comorosCityEnToAr,
  };

  // ===================== Governorates/Regions Lists =====================
  // Note: Variable names kept as "Cities" for backward compatibility

  // Egyptian Governorates (27 محافظة)
  static const List<String> egyptianCities = [
    'القاهرة',
    'الإسكندرية',
    'الجيزة',
    'القليوبية',
    'بورسعيد',
    'السويس',
    'الأقصر',
    'الدقهلية',
    'الغربية',
    'أسيوط',
    'الإسماعيلية',
    'الفيوم',
    'الشرقية',
    'دمياط',
    'أسوان',
    'المنيا',
    'البحيرة',
    'بني سويف',
    'قنا',
    'سوهاج',
    'كفر الشيخ',
    'المنوفية',
    'البحر الأحمر',
    'مطروح',
    'شمال سيناء',
    'جنوب سيناء',
    'الوادي الجديد',
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

  // Saudi Regions (13 منطقة إدارية)
  static const List<String> saudiCities = [
    'الرياض',
    'مكة المكرمة',
    'المدينة المنورة',
    'الشرقية',
    'عسير',
    'تبوك',
    'القصيم',
    'حائل',
    'الحدود الشمالية',
    'جازان',
    'نجران',
    'الباحة',
    'الجوف',
  ];

  // UAE Emirates (7 إمارات)
  static const List<String> uaeCities = [
    'أبوظبي',
    'دبي',
    'الشارقة',
    'عجمان',
    'أم القيوين',
    'رأس الخيمة',
    'الفجيرة',
  ];

  // Kuwait Governorates (6 محافظات)
  static const List<String> kuwaitCities = [
    'العاصمة',
    'حولي',
    'الفروانية',
    'مبارك الكبير',
    'الأحمدي',
    'الجهراء',
  ];

  // Qatar Municipalities (8 بلديات)
  static const List<String> qatarCities = [
    'الدوحة',
    'الريان',
    'أم صلال',
    'الخور',
    'الوكرة',
    'الضعاين',
    'الشمال',
    'الشحانية',
  ];

  // Bahrain Governorates (4 محافظات)
  static const List<String> bahrainCities = [
    'العاصمة',
    'المحرق',
    'الشمالية',
    'الجنوبية',
  ];

  // Oman Governorates (11 محافظة)
  static const List<String> omanCities = [
    'مسقط',
    'ظفار',
    'مسندم',
    'البريمي',
    'الداخلية',
    'شمال الباطنة',
    'جنوب الباطنة',
    'جنوب الشرقية',
    'شمال الشرقية',
    'الظاهرة',
    'الوسطى',
  ];

  // Jordan Governorates (12 محافظة)
  static const List<String> jordanCities = [
    'عمان',
    'إربد',
    'الزرقاء',
    'البلقاء',
    'مادبا',
    'الكرك',
    'الطفيلة',
    'معان',
    'العقبة',
    'جرش',
    'عجلون',
    'المفرق',
  ];

  // Lebanon Governorates (8 محافظات)
  static const List<String> lebanonCities = [
    'بيروت',
    'جبل لبنان',
    'الشمال',
    'الجنوب',
    'البقاع',
    'النبطية',
    'عكار',
    'بعلبك الهرمل',
  ];

  // Syria Governorates (14 محافظة)
  static const List<String> syriaCities = [
    'دمشق',
    'ريف دمشق',
    'حلب',
    'حمص',
    'حماة',
    'اللاذقية',
    'طرطوس',
    'إدلب',
    'درعا',
    'دير الزور',
    'الحسكة',
    'الرقة',
    'السويداء',
    'القنيطرة',
  ];

  // Iraq Governorates (19 محافظة)
  static const List<String> iraqCities = [
    'بغداد',
    'البصرة',
    'نينوى',
    'أربيل',
    'السليمانية',
    'دهوك',
    'كركوك',
    'الأنبار',
    'ديالى',
    'صلاح الدين',
    'النجف',
    'كربلاء',
    'بابل',
    'واسط',
    'ميسان',
    'ذي قار',
    'المثنى',
    'القادسية',
    'حلبجة',
  ];

  // Palestine Governorates (16 محافظة)
  static const List<String> palestineCities = [
    'القدس',
    'الخليل',
    'بيت لحم',
    'رام الله والبيرة',
    'نابلس',
    'جنين',
    'طولكرم',
    'قلقيلية',
    'سلفيت',
    'طوباس',
    'أريحا',
    'غزة',
    'شمال غزة',
    'خان يونس',
    'رفح',
    'دير البلح',
  ];

  // Yemen Governorates (22 محافظة)
  static const List<String> yemenCities = [
    'صنعاء',
    'عدن',
    'تعز',
    'الحديدة',
    'إب',
    'ذمار',
    'المحويت',
    'حجة',
    'صعدة',
    'عمران',
    'البيضاء',
    'أبين',
    'شبوة',
    'حضرموت',
    'المهرة',
    'لحج',
    'الضالع',
    'ريمة',
    'الجوف',
    'مأرب',
    'سقطرى',
    'أمانة العاصمة',
  ];

  // Libya Districts (22 شعبية)
  static const List<String> libyaCities = [
    'طرابلس',
    'بنغازي',
    'مصراتة',
    'البيضاء',
    'الزاوية',
    'زوارة',
    'أجدابيا',
    'سبها',
    'درنة',
    'طبرق',
    'الخمس',
    'غريان',
    'مرزق',
    'سرت',
    'غات',
    'الجفرة',
    'وادي الحياة',
    'نالوت',
    'الجبل الأخضر',
    'النقاط الخمس',
    'وادي الشاطئ',
    'الواحات',
  ];

  // Tunisia Governorates (24 ولاية)
  static const List<String> tunisiaCities = [
    'تونس',
    'أريانة',
    'بن عروس',
    'منوبة',
    'نابل',
    'زغوان',
    'بنزرت',
    'باجة',
    'جندوبة',
    'الكاف',
    'سليانة',
    'القيروان',
    'القصرين',
    'سيدي بوزيد',
    'سوسة',
    'المنستير',
    'المهدية',
    'صفاقس',
    'قفصة',
    'توزر',
    'قبلي',
    'قابس',
    'مدنين',
    'تطاوين',
  ];

  // Algeria Provinces (58 ولاية - Main 30 shown)
  static const List<String> algeriaCities = [
    'الجزائر',
    'وهران',
    'قسنطينة',
    'عنابة',
    'البليدة',
    'باتنة',
    'سطيف',
    'تلمسان',
    'بسكرة',
    'بجاية',
    'تيزي وزو',
    'مستغانم',
    'تيارت',
    'سيدي بلعباس',
    'سكيكدة',
    'ورقلة',
    'الجلفة',
    'جيجل',
    'الشلف',
    'الأغواط',
    'بشار',
    'تبسة',
    'الوادي',
    'غرداية',
    'عين الدفلى',
    'البويرة',
    'تيبازة',
    'ميلة',
    'قالمة',
    'غليزان',
  ];

  // Morocco Regions (12 جهة)
  static const List<String> moroccoCities = [
    'طنجة تطوان الحسيمة',
    'الشرق',
    'فاس مكناس',
    'الرباط سلا القنيطرة',
    'بني ملال خنيفرة',
    'الدار البيضاء سطات',
    'مراكش آسفي',
    'درعة تافيلالت',
    'سوس ماسة',
    'كلميم واد نون',
    'العيون الساقية الحمراء',
    'الداخلة وادي الذهب',
  ];

  // Sudan States (18 ولاية)
  static const List<String> sudanCities = [
    'الخرطوم',
    'الخرطوم بحري',
    'أم درمان',
    'البحر الأحمر',
    'كسلا',
    'القضارف',
    'سنار',
    'النيل الأزرق',
    'النيل الأبيض',
    'شمال كردفان',
    'جنوب كردفان',
    'غرب كردفان',
    'شمال دارفور',
    'جنوب دارفور',
    'شرق دارفور',
    'غرب دارفور',
    'وسط دارفور',
    'الشمالية',
  ];

  // Somalia Regions (18 إقليم)
  static const List<String> somaliaCities = [
    'بنادر',
    'أودال',
    'ولقي جلبيد',
    'توجدير',
    'سناج',
    'سول',
    'باري',
    'نوجال',
    'مدج',
    'جلجدود',
    'هيران',
    'شبيلي الوسطى',
    'شبيلي السفلى',
    'باكول',
    'باي',
    'جيدو',
    'جوبا الوسطى',
    'جوبا السفلى',
  ];

  // Djibouti Regions (6 أقاليم)
  static const List<String> djiboutiCities = [
    'جيبوتي',
    'علي صبيح',
    'ديخيل',
    'تاجورة',
    'أوبوك',
    'أرتا',
  ];

  // Mauritania Regions (15 ولاية)
  static const List<String> mauritaniaCities = [
    'نواكشوط الشمالية',
    'نواكشوط الغربية',
    'نواكشوط الجنوبية',
    'أدرار',
    'العصابة',
    'البراكنة',
    'داخلة نواذيبو',
    'كوركول',
    'كيديماغا',
    'الحوض الشرقي',
    'الحوض الغربي',
    'إينشيري',
    'تكانت',
    'تيرس زمور',
    'الترارزة',
  ];

  // Comoros Islands (3 جزر)
  static const List<String> comorosCities = [
    'القمر الكبرى',
    'أنجوان',
    'موهيلي',
  ];

  // ===================== Helper Methods =====================

  /// Convert English country name to Arabic
  static String getArabicCountry(String englishName) {
    return countryEnToAr[englishName] ?? englishName;
  }

  /// Convert Arabic country name to English
  static String? getEnglishCountry(String arabicName) {
    return countryEnToAr.entries
        .firstWhere(
          (entry) => entry.value == arabicName,
          orElse: () => MapEntry(arabicName, arabicName),
        )
        .key;
  }

  /// Convert English city name to Arabic (optimized with unified map)
  static String getArabicCity(String englishName, [String? country]) {
    // If country is specified, try that country's cities first
    if (country != null && _countryCityMaps.containsKey(country)) {
      final cityMap = _countryCityMaps[country];
      if (cityMap!.containsKey(englishName)) {
        return cityMap[englishName]!;
      }
    }

    // Otherwise, search in unified map
    return _allCitiesEnToAr[englishName] ?? englishName;
  }

  /// Convert Arabic city name to English
  static String? getEnglishCity(String arabicName, [String? country]) {
    // If country is specified, try that country's cities first
    if (country != null && _countryCityMaps.containsKey(country)) {
      final cityMap = _countryCityMaps[country];
      final entry = cityMap!.entries.firstWhere(
        (e) => e.value == arabicName,
        orElse: () => const MapEntry('', ''),
      );
      if (entry.key.isNotEmpty) return entry.key;
    }

    // Otherwise, search in unified map
    return _allCitiesEnToAr.entries
        .firstWhere(
          (e) => e.value == arabicName,
          orElse: () => const MapEntry('', ''),
        )
        .key
        .ifEmpty(() => null);
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
  static String getCodeByCountry(String arabicCountry) {
    return countryArToCode[arabicCountry] ?? 'EG';
  }

  /// get dial code from Arabic country name
  static String getDialByCode(String countryCode) {
    return codeToDial[countryCode] ?? '+20';
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
      case 'الكويت':
        return kuwaitCities;
      case 'قطر':
        return qatarCities;
      case 'البحرين':
        return bahrainCities;
      case 'عمان':
        return omanCities;
      case 'الأردن':
        return jordanCities;
      case 'لبنان':
        return lebanonCities;
      case 'سوريا':
        return syriaCities;
      case 'العراق':
        return iraqCities;
      case 'فلسطين':
        return palestineCities;
      case 'اليمن':
        return yemenCities;
      case 'ليبيا':
        return libyaCities;
      case 'تونس':
        return tunisiaCities;
      case 'الجزائر':
        return algeriaCities;
      case 'المغرب':
        return moroccoCities;
      case 'السودان':
        return sudanCities;
      case 'الصومال':
        return somaliaCities;
      case 'جيبوتي':
        return djiboutiCities;
      case 'موريتانيا':
        return mauritaniaCities;
      case 'جزر القمر':
        return comorosCities;
      default:
        return egyptianCities;
    }
  }

  /// Smart city detection from Placemark with fallback logic
  /// Used for auto-detection from GPS coordinates
  static String? detectCityFromPlacemark({
    required String? locality,
    required String? subAdministrativeArea,
    required String? administrativeArea,
    required String arabicCountry,
  }) {
    // Get list of governorates/cities for this country
    final citiesList = getCitiesByCountry(arabicCountry);

    if (citiesList.isEmpty) return null;

    // Try locality first (most specific)
    if (locality != null && locality.isNotEmpty) {
      final arabicCity = getArabicCity(locality, arabicCountry);
      final match = findMatchingCity(arabicCity, citiesList);
      if (match != null) return match;
    }

    // Try subAdministrativeArea (governorate level)
    if (subAdministrativeArea != null && subAdministrativeArea.isNotEmpty) {
      final arabicCity = getArabicCity(subAdministrativeArea, arabicCountry);
      final match = findMatchingCity(arabicCity, citiesList);
      if (match != null) return match;
    }

    // Try administrativeArea (state/region level)
    if (administrativeArea != null && administrativeArea.isNotEmpty) {
      final arabicCity = getArabicCity(administrativeArea, arabicCountry);
      final match = findMatchingCity(arabicCity, citiesList);
      if (match != null) return match;
    }

    // Return first city as fallback (usually capital)
    return citiesList.first;
  }

  /// Get the administrative division type name for a country
  /// Returns the Arabic name (e.g., "محافظة", "ولاية", "إمارة")
  static String getAdministrativeDivisionType(String arabicCountry) {
    switch (arabicCountry) {
      case 'مصر':
      case 'الأردن':
      case 'سوريا':
      case 'اليمن':
      case 'لبنان':
      case 'عمان':
      case 'الكويت':
      case 'البحرين':
      case 'العراق':
      case 'فلسطين':
        return 'محافظة';

      case 'السعودية':
        return 'منطقة';

      case 'الإمارات':
        return 'إمارة';

      case 'قطر':
        return 'بلدية';

      case 'تونس':
      case 'الجزائر':
      case 'موريتانيا':
      case 'السودان':
        return 'ولاية';

      case 'المغرب':
        return 'جهة';

      case 'ليبيا':
        return 'شعبية';

      case 'الصومال':
      case 'جيبوتي':
        return 'إقليم';

      case 'جزر القمر':
        return 'جزيرة';

      default:
        return 'منطقة';
    }
  }

  /// Get count of administrative divisions for a country
  static int getAdministrativeDivisionCount(String arabicCountry) {
    return getCitiesByCountry(arabicCountry).length;
  }

  /// Get dial code directly from Arabic country name
  static String getDialCodeByCountry(String arabicCountry) {
    final countryCode = getCodeByCountry(arabicCountry);
    return getDialByCode(countryCode);
  }

  /// Check if a city exists in a specific country
  static bool isCityInCountry(String cityName, String country) {
    final cities = getCitiesByCountry(country);
    return cities.contains(cityName);
  }

  /// Get all cities from all countries
  static List<String> getAllCities() {
    return [
      ...egyptianCities,
      ...saudiCities,
      ...uaeCities,
      ...kuwaitCities,
      ...qatarCities,
      ...bahrainCities,
      ...omanCities,
      ...jordanCities,
      ...lebanonCities,
      ...syriaCities,
      ...iraqCities,
      ...palestineCities,
      ...yemenCities,
      ...libyaCities,
      ...tunisiaCities,
      ...algeriaCities,
      ...moroccoCities,
      ...sudanCities,
      ...somaliaCities,
      ...djiboutiCities,
      ...mauritaniaCities,
      ...comorosCities,
    ];
  }

  /// Find which country a city belongs to
  static String? findCountryByCity(String cityName) {
    for (final country in arabCountries) {
      if (isCityInCountry(cityName, country)) {
        return country;
      }
    }
    return null;
  }

  /// Validate country code
  static bool isValidCountryCode(String code) {
    return codeToDial.containsKey(code);
  }

  /// Validate dial code
  static bool isValidDialCode(String dialCode) {
    return codeToDial.containsValue(dialCode);
  }

  /// Get country code from dial code
  static String? getCodeByDialCode(String dialCode) {
    return codeToDial.entries
        .firstWhere(
          (entry) => entry.value == dialCode,
          orElse: () => const MapEntry('', ''),
        )
        .key
        .ifEmpty(() => null);
  }

  /// Get Arabic country from dial code
  static String? getCountryByDialCode(String dialCode) {
    final code = getCodeByDialCode(dialCode);
    if (code == null) return null;
    return countryArToCode.entries
        .firstWhere(
          (entry) => entry.value == code,
          orElse: () => const MapEntry('', ''),
        )
        .key
        .ifEmpty(() => null);
  }
}

/// Extension helper for String
extension _StringExtension on String {
  String? ifEmpty(String? Function() orElse) {
    return isEmpty ? orElse() : this;
  }
}