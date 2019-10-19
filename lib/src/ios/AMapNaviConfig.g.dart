import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapNaviConfig extends NSObject  {
  // 生成getters
  Future<String> get_appScheme() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("AMapNaviConfig::get_appScheme", {'refId': refId});
  
    return result;
  }
  
  Future<String> get_appName() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("AMapNaviConfig::get_appName", {'refId': refId});
  
    return result;
  }
  
  Future<CLLocationCoordinate2D> get_destination() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("AMapNaviConfig::get_destination", {'refId': refId});
    kNativeObjectPool.add(CLLocationCoordinate2D()..refId = result);
    return CLLocationCoordinate2D()..refId = result;
  }
  
  Future<AMapDrivingStrategy> get_strategy() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("AMapNaviConfig::get_strategy", {'refId': refId});
  
    return AMapDrivingStrategy.values[result];
  }
  

  // 生成setters
  Future<void> set_appScheme(String appScheme) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('AMapNaviConfig::set_appScheme', {'refId': refId, "appScheme": appScheme});
  
  
  }
  
  Future<void> set_appName(String appName) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('AMapNaviConfig::set_appName', {'refId': refId, "appName": appName});
  
  
  }
  
  Future<void> set_destination(CLLocationCoordinate2D destination) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('AMapNaviConfig::set_destination', {'refId': refId, "destination": destination.refId});
  
  
  }
  
  Future<void> set_strategy(AMapDrivingStrategy strategy) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('AMapNaviConfig::set_strategy', {'refId': refId, "strategy": strategy.index});
  
  
  }
  

  // 生成方法们
  
}