import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAIndoorFloorInfo extends NSObject  {
  // 生成getters
  Future<String> get_floorName() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorFloorInfo::get_floorName", {'refId': refId});
  
    return result;
  }
  
  Future<int> get_floorIndex() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorFloorInfo::get_floorIndex", {'refId': refId});
  
    return result;
  }
  
  Future<String> get_floorNona() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorFloorInfo::get_floorNona", {'refId': refId});
  
    return result;
  }
  
  Future<bool> get_isPark() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorFloorInfo::get_isPark", {'refId': refId});
  
    return result;
  }
  

  // 生成setters
  

  // 生成方法们
  
}