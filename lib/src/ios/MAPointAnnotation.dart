import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAPointAnnotation extends MAShape  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  Future<CLLocationCoordinate2D> get_coordinate() async {
    final result = await _channel.invokeMethod("MAPointAnnotation::get_coordinate", {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }
  
  Future<bool> get_lockedToScreen() async {
    final result = await _channel.invokeMethod("MAPointAnnotation::get_isLockedToScreen", {'refId': refId});
    return result;
  }
  
  Future<CGPoint> get_lockedScreenPoint() async {
    final result = await _channel.invokeMethod("MAPointAnnotation::get_lockedScreenPoint", {'refId': refId});
    return CGPoint()..refId = result;
  }
  

  // 生成setters
  Future<void> set_coordinate(CLLocationCoordinate2D coordinate) async {
    await _channel.invokeMethod('MAPointAnnotation::set_coordinate', {'refId': refId, "coordinate": coordinate.refId});
  
  
  }
  
  Future<void> set_lockedToScreen(bool lockedToScreen) async {
    await _channel.invokeMethod('MAPointAnnotation::set_lockedToScreen', {'refId': refId, "lockedToScreen": lockedToScreen});
  
  
  }
  
  Future<void> set_lockedScreenPoint(CGPoint lockedScreenPoint) async {
    await _channel.invokeMethod('MAPointAnnotation::set_lockedScreenPoint', {'refId': refId, "lockedScreenPoint": lockedScreenPoint.refId});
  
  
  }
  

  // 生成方法们
  
}