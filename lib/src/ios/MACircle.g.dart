import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MACircle extends MAShape with MAAnnotation, MAOverlay {
  // 生成getters
  Future<List<MAOverlay>> get_hollowShapes() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MACircle::get_hollowShapes", {'refId': refId});
    return (result as List).cast<int>().map((it) => MAGroundOverlay()..refId = it).toList();
  }
  
  Future<CLLocationCoordinate2D> get_coordinate() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MACircle::get_coordinate", {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }
  
  Future<double> get_radius() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MACircle::get_radius", {'refId': refId});
    return result;
  }
  
  Future<MAMapRect> get_boundingMapRect() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MACircle::get_boundingMapRect", {'refId': refId});
    return MAMapRect()..refId = result;
  }
  

  // 生成setters
  Future<void> set_hollowShapes(List<MAOverlay> hollowShapes) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MACircle::set_hollowShapes', {'refId': refId, "hollowShapes": hollowShapes.map((it) => it.refId).toList()});
  
  
  }
  
  Future<void> set_coordinate(CLLocationCoordinate2D coordinate) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MACircle::set_coordinate', {'refId': refId, "coordinate": coordinate.refId});
  
  
  }
  
  Future<void> set_radius(double radius) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MACircle::set_radius', {'refId': refId, "radius": radius});
  
  
  }
  

  // 生成方法们
  static Future<MACircle> circleWithCenterCoordinateRadius(CLLocationCoordinate2D coord, double radius) async {
    // 日志打印
    print('fluttify-dart: MACircle::circleWithCenterCoordinate([\'radius\':$radius])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MACircle::circleWithCenterCoordinateRadius', {"coord": coord.refId, "radius": radius});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MACircle()..refId = result;
    }
  }
  
  static Future<MACircle> circleWithMapRect(MAMapRect mapRect) async {
    // 日志打印
    print('fluttify-dart: MACircle::circleWithMapRect([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MACircle::circleWithMapRect', {"mapRect": mapRect.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MACircle()..refId = result;
    }
  }
  
  Future<bool> setCircleWithCenterCoordinateRadius(CLLocationCoordinate2D coord, double radius) async {
    // 日志打印
    print('fluttify-dart: MACircle@$refId::setCircleWithCenterCoordinate([\'radius\':$radius])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MACircle::setCircleWithCenterCoordinateRadius', {"coord": coord.refId, "radius": radius, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}