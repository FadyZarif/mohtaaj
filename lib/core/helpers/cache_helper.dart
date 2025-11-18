import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {



  // ========================== Shared Preferences Methods ==========================
  static SharedPreferences? sharedPreferences;

  static Future<void> init() async {
      sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool?> saveData({ required String key , required dynamic value }) async{

    if(value is String) {
       return await sharedPreferences?.setString(key, value);
    } else if(value is int) {
      return await sharedPreferences?.setInt(key, value);
    } else if(value is bool) {
      return await sharedPreferences?.setBool(key, value);
    } else if(value is double) {
      return await sharedPreferences?.setDouble(key, value);
    } else {
      return await sharedPreferences?.setStringList(key, value);
    }

  }

  static dynamic getData({required String key}){
    return sharedPreferences?.get(key);
  }

  static Future<bool?> clearData() async {
    return await sharedPreferences?.clear();
  }

  // ========================== Secure Storage Methods ==========================
  static final FlutterSecureStorage secureStorage = const FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
  );

  static Future<void> saveSecureData({ required String key , required String value }) async {
    await secureStorage.write(key: key, value: value);
  }

  static Future<String?> getSecureData({ required String key }) async {
    return await secureStorage.read(key: key);
  }
  static Future<void> clearSecureData({ required String key }) async {
    await secureStorage.delete(key: key);
  }
  static Future<void> clearSecureAllData() async {
    await secureStorage.deleteAll();
  }


}