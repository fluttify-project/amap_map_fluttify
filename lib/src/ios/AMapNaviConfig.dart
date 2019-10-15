import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapNaviConfig extends NSObject  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  Future<String> get_appScheme() async {
    final result = await _channel.invokeMethod("AMapNaviConfig::get_appScheme", {'refId': refId});
    return result;
  }
  
  Future<String> get_appName() async {
    final result = await _channel.invokeMethod("AMapNaviConfig::get_appName", {'refId': refId});
    return result;
  }
  
  Future<CLLocationCoordinate2D> get_destination() async {
    final result = await _channel.invokeMethod("AMapNaviConfig::get_destination", {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }
  
  Future<AMapDrivingStrategy> get_strategy() async {
    final result = await _channel.invokeMethod("AMapNaviConfig::get_strategy", {'refId': refId});
    return AMapDrivingStrategy.values[result];
  }
  

  // 生成setters
  Future<void> set_appScheme(String appScheme) async {
    await _channel.invokeMethod('AMapNaviConfig::set_appScheme', {'refId': refId, "appScheme": appScheme});
  
  
  }
  
  Future<void> set_appName(String appName) async {
    await _channel.invokeMethod('AMapNaviConfig::set_appName', {'refId': refId, "appName": appName});
  
  
  }
  
  Future<void> set_destination(CLLocationCoordinate2D destination) async {
    await _channel.invokeMethod('AMapNaviConfig::set_destination', {'refId': refId, "destination": destination.refId});
  
  
  }
  
  Future<void> set_strategy(AMapDrivingStrategy strategy) async {
    await _channel.invokeMethod('AMapNaviConfig::set_strategy', {'refId': refId, "strategy": strategy.index});
  
  
  }
  

  // 生成方法们
  
}