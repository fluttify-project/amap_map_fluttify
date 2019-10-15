import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapRouteConfig extends NSObject  {
  // 生成getters
  Future<String> get_appScheme() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("AMapRouteConfig::get_appScheme", {'refId': refId});
    return result;
  }
  
  Future<String> get_appName() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("AMapRouteConfig::get_appName", {'refId': refId});
    return result;
  }
  
  Future<CLLocationCoordinate2D> get_startCoordinate() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("AMapRouteConfig::get_startCoordinate", {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }
  
  Future<CLLocationCoordinate2D> get_destinationCoordinate() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("AMapRouteConfig::get_destinationCoordinate", {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }
  
  Future<AMapDrivingStrategy> get_drivingStrategy() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("AMapRouteConfig::get_drivingStrategy", {'refId': refId});
    return AMapDrivingStrategy.values[result];
  }
  
  Future<AMapTransitStrategy> get_transitStrategy() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("AMapRouteConfig::get_transitStrategy", {'refId': refId});
    return AMapTransitStrategy.values[result];
  }
  
  Future<AMapRouteSearchType> get_routeType() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("AMapRouteConfig::get_routeType", {'refId': refId});
    return AMapRouteSearchType.values[result];
  }
  

  // 生成setters
  Future<void> set_appScheme(String appScheme) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('AMapRouteConfig::set_appScheme', {'refId': refId, "appScheme": appScheme});
  
  
  }
  
  Future<void> set_appName(String appName) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('AMapRouteConfig::set_appName', {'refId': refId, "appName": appName});
  
  
  }
  
  Future<void> set_startCoordinate(CLLocationCoordinate2D startCoordinate) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('AMapRouteConfig::set_startCoordinate', {'refId': refId, "startCoordinate": startCoordinate.refId});
  
  
  }
  
  Future<void> set_destinationCoordinate(CLLocationCoordinate2D destinationCoordinate) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('AMapRouteConfig::set_destinationCoordinate', {'refId': refId, "destinationCoordinate": destinationCoordinate.refId});
  
  
  }
  
  Future<void> set_drivingStrategy(AMapDrivingStrategy drivingStrategy) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('AMapRouteConfig::set_drivingStrategy', {'refId': refId, "drivingStrategy": drivingStrategy.index});
  
  
  }
  
  Future<void> set_transitStrategy(AMapTransitStrategy transitStrategy) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('AMapRouteConfig::set_transitStrategy', {'refId': refId, "transitStrategy": transitStrategy.index});
  
  
  }
  
  Future<void> set_routeType(AMapRouteSearchType routeType) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('AMapRouteConfig::set_routeType', {'refId': refId, "routeType": routeType.index});
  
  
  }
  

  // 生成方法们
  
}