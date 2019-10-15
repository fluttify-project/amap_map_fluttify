import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MACircle extends MAShape with MAAnnotation, MAOverlay {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  Future<CLLocationCoordinate2D> get_coordinate() async {
    final result = await _channel.invokeMethod("MACircle::get_coordinate", {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }
  
  Future<MAMapRect> get_boundingMapRect() async {
    final result = await _channel.invokeMethod("MACircle::get_boundingMapRect", {'refId': refId});
    return MAMapRect()..refId = result;
  }
  

  // 生成setters
  Future<void> set_hollowShapes(List<MAOverlay> hollowShapes) async {
    await _channel.invokeMethod('MACircle::set_hollowShapes', {'refId': refId, "hollowShapes": hollowShapes.map((it) => it.refId).toList()});
  
  
  }
  
  Future<void> set_coordinate(CLLocationCoordinate2D coordinate) async {
    await _channel.invokeMethod('MACircle::set_coordinate', {'refId': refId, "coordinate": coordinate.refId});
  
  
  }
  

  // 生成方法们
  static Future<MACircle> circleWithMapRect(MAMapRect mapRect) async {
    // 日志打印
    print('fluttify-dart: MACircle::circleWithMapRect([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MACircle::circleWithMapRect', {"mapRect": mapRect.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MACircle()..refId = result;
    }
  }
  
}