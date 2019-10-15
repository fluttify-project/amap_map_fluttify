import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_ae_gmap_GLMapEngine_InitParam extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  Future<String> get_mRootPath() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.GLMapEngine.InitParam::get_mRootPath", {'refId': refId});
    return result;
  }
  
  Future<String> get_mConfigPath() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.GLMapEngine.InitParam::get_mConfigPath", {'refId': refId});
    return result;
  }
  
  Future<String> get_mConfigContent() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.GLMapEngine.InitParam::get_mConfigContent", {'refId': refId});
    return result;
  }
  
  Future<String> get_mOfflineDataPath() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.GLMapEngine.InitParam::get_mOfflineDataPath", {'refId': refId});
    return result;
  }
  
  Future<String> get_mP3dCrossPath() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.GLMapEngine.InitParam::get_mP3dCrossPath", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_mRootPath(String mRootPath) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapEngine.InitParam::set_mRootPath', {'refId': refId, "mRootPath": mRootPath});
  
  
  }
  
  Future<void> set_mConfigPath(String mConfigPath) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapEngine.InitParam::set_mConfigPath', {'refId': refId, "mConfigPath": mConfigPath});
  
  
  }
  
  Future<void> set_mConfigContent(String mConfigContent) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapEngine.InitParam::set_mConfigContent', {'refId': refId, "mConfigContent": mConfigContent});
  
  
  }
  
  Future<void> set_mOfflineDataPath(String mOfflineDataPath) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapEngine.InitParam::set_mOfflineDataPath', {'refId': refId, "mOfflineDataPath": mOfflineDataPath});
  
  
  }
  
  Future<void> set_mP3dCrossPath(String mP3dCrossPath) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapEngine.InitParam::set_mP3dCrossPath', {'refId': refId, "mP3dCrossPath": mP3dCrossPath});
  
  
  }
  

  // 生成方法们
  
}