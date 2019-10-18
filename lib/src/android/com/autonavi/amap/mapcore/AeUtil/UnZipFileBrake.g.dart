import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_AeUtil_UnZipFileBrake extends java_lang_Object  {
  // 生成getters
  Future<bool> get_mIsAborted() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.amap.mapcore.AeUtil.UnZipFileBrake::get_mIsAborted", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_mIsAborted(bool mIsAborted) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AeUtil.UnZipFileBrake::set_mIsAborted', {'refId': refId, "mIsAborted": mIsAborted});
  
  
  }
  

  // 生成方法们
  
}