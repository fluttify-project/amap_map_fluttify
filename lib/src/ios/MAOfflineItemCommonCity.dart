import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAOfflineItemCommonCity extends MAOfflineCity  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  Future<MAOfflineItem> get_province() async {
    final result = await _channel.invokeMethod("MAOfflineItemCommonCity::get_province", {'refId': refId});
    return MAOfflineItem()..refId = result;
  }
  

  // 生成setters
  Future<void> set_province(MAOfflineItem province) async {
    await _channel.invokeMethod('MAOfflineItemCommonCity::set_province', {'refId': refId, "province": province.refId});
  
  
  }
  

  // 生成方法们
  
}