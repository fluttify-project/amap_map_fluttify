import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAOfflineCity extends MAOfflineItem  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  Future<String> get_cityCode() async {
    final result = await _channel.invokeMethod("MAOfflineCity::get_cityCode", {'refId': refId});
    return result;
  }
  
  Future<String> get_cityName() async {
    final result = await _channel.invokeMethod("MAOfflineCity::get_cityName", {'refId': refId});
    return result;
  }
  
  Future<String> get_urlString() async {
    final result = await _channel.invokeMethod("MAOfflineCity::get_urlString", {'refId': refId});
    return result;
  }
  
  Future<MAOfflineCityStatus> get_status() async {
    final result = await _channel.invokeMethod("MAOfflineCity::get_status", {'refId': refId});
    return MAOfflineCityStatus.values[result];
  }
  

  // 生成setters
  

  // 生成方法们
  
}