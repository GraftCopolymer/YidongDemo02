//  封装一个Shared Preferences工具类方便调用

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SPUtils{
  static SharedPreferences? _prefs;
  static Future<void> init() async {
    if(_prefs != null){
      return;
    }
    // 在使用SharedPreferences.getInstance()之前一定要调用这个方法，否则会报错
    WidgetsFlutterBinding.ensureInitialized();
    _prefs = await SharedPreferences.getInstance();
  }

  static SharedPreferences get prefs => _prefs!;
}