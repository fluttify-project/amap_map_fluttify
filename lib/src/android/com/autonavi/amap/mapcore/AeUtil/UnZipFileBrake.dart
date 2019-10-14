import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_AeUtil_UnZipFileBrake extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  Future<bool> get_mIsAborted() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AeUtil.UnZipFileBrake::get_mIsAborted", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_mIsAborted(bool mIsAborted) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AeUtil.UnZipFileBrake::set_mIsAborted', {'refId': refId, "mIsAborted": mIsAborted});
  
  
  }
  

  // 生成方法们
  
}