import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAOfflineItemCommonCity extends MAOfflineCity  {
  // 生成getters
  Future<MAOfflineItem> get_province() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAOfflineItemCommonCity::get_province", {'refId': refId});
    return MAOfflineItem()..refId = result;
  }
  

  // 生成setters
  Future<void> set_province(MAOfflineItem province) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAOfflineItemCommonCity::set_province', {'refId': refId, "province": province.refId});
  
  
  }
  

  // 生成方法们
  
}