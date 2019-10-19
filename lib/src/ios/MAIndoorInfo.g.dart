import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAIndoorInfo extends NSObject  {
  // 生成getters
  Future<String> get_cnName() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorInfo::get_cnName", {'refId': refId});
  
    return result;
  }
  
  Future<String> get_enName() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorInfo::get_enName", {'refId': refId});
  
    return result;
  }
  
  Future<String> get_poiID() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorInfo::get_poiID", {'refId': refId});
  
    return result;
  }
  
  Future<String> get_buildingType() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorInfo::get_buildingType", {'refId': refId});
  
    return result;
  }
  
  Future<int> get_activeFloorIndex() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorInfo::get_activeFloorIndex", {'refId': refId});
  
    return result;
  }
  
  Future<int> get_activeFloorInfoIndex() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorInfo::get_activeFloorInfoIndex", {'refId': refId});
  
    return result;
  }
  
  Future<List> get_floorInfo() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorInfo::get_floorInfo", {'refId': refId});
    kNativeObjectPool.addAll((result as List).cast<int>().map((it) => NSObject()..refId = it).toList());
    return (result as List).cast<int>().map((it) => NSObject()..refId = it).toList();
  }
  
  Future<int> get_numberOfFloor() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorInfo::get_numberOfFloor", {'refId': refId});
  
    return result;
  }
  
  Future<int> get_numberOfParkFloor() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorInfo::get_numberOfParkFloor", {'refId': refId});
  
    return result;
  }
  

  // 生成setters
  

  // 生成方法们
  
}