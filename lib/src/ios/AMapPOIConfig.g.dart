import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapPOIConfig extends NSObject  {
  // 生成getters
  Future<String> get_appScheme() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("AMapPOIConfig::get_appScheme", {'refId': refId});
    return result;
  }
  
  Future<String> get_appName() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("AMapPOIConfig::get_appName", {'refId': refId});
    return result;
  }
  
  Future<String> get_keywords() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("AMapPOIConfig::get_keywords", {'refId': refId});
    return result;
  }
  
  Future<CLLocationCoordinate2D> get_leftTopCoordinate() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("AMapPOIConfig::get_leftTopCoordinate", {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }
  
  Future<CLLocationCoordinate2D> get_rightBottomCoordinate() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("AMapPOIConfig::get_rightBottomCoordinate", {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }
  

  // 生成setters
  Future<void> set_appScheme(String appScheme) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('AMapPOIConfig::set_appScheme', {'refId': refId, "appScheme": appScheme});
  
  
  }
  
  Future<void> set_appName(String appName) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('AMapPOIConfig::set_appName', {'refId': refId, "appName": appName});
  
  
  }
  
  Future<void> set_keywords(String keywords) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('AMapPOIConfig::set_keywords', {'refId': refId, "keywords": keywords});
  
  
  }
  
  Future<void> set_leftTopCoordinate(CLLocationCoordinate2D leftTopCoordinate) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('AMapPOIConfig::set_leftTopCoordinate', {'refId': refId, "leftTopCoordinate": leftTopCoordinate.refId});
  
  
  }
  
  Future<void> set_rightBottomCoordinate(CLLocationCoordinate2D rightBottomCoordinate) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('AMapPOIConfig::set_rightBottomCoordinate', {'refId': refId, "rightBottomCoordinate": rightBottomCoordinate.refId});
  
  
  }
  

  // 生成方法们
  
}