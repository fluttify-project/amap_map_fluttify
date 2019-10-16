import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAMapStatus extends NSObject  {
  // 生成getters
  Future<CLLocationCoordinate2D> get_centerCoordinate() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAMapStatus::get_centerCoordinate", {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }
  
  Future<double> get_zoomLevel() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAMapStatus::get_zoomLevel", {'refId': refId});
    return result;
  }
  
  Future<double> get_rotationDegree() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAMapStatus::get_rotationDegree", {'refId': refId});
    return result;
  }
  
  Future<double> get_cameraDegree() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAMapStatus::get_cameraDegree", {'refId': refId});
    return result;
  }
  
  Future<CGPoint> get_screenAnchor() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAMapStatus::get_screenAnchor", {'refId': refId});
    return CGPoint()..refId = result;
  }
  

  // 生成setters
  Future<void> set_centerCoordinate(CLLocationCoordinate2D centerCoordinate) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAMapStatus::set_centerCoordinate', {'refId': refId, "centerCoordinate": centerCoordinate.refId});
  
  
  }
  
  Future<void> set_zoomLevel(double zoomLevel) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAMapStatus::set_zoomLevel', {'refId': refId, "zoomLevel": zoomLevel});
  
  
  }
  
  Future<void> set_rotationDegree(double rotationDegree) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAMapStatus::set_rotationDegree', {'refId': refId, "rotationDegree": rotationDegree});
  
  
  }
  
  Future<void> set_cameraDegree(double cameraDegree) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAMapStatus::set_cameraDegree', {'refId': refId, "cameraDegree": cameraDegree});
  
  
  }
  
  Future<void> set_screenAnchor(CGPoint screenAnchor) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAMapStatus::set_screenAnchor', {'refId': refId, "screenAnchor": screenAnchor.refId});
  
  
  }
  

  // 生成方法们
  static Future<MAMapStatus> statusWithCenterCoordinateZoomLevelrotationDegreecameraDegreescreenAnchor(CLLocationCoordinate2D coordinate, double zoomLevel, double rotationDegree, double cameraDegree, CGPoint screenAnchor) async {
    // 日志打印
    print('fluttify-dart: MAMapStatus::statusWithCenterCoordinate([\'zoomLevel\':$zoomLevel, \'rotationDegree\':$rotationDegree, \'cameraDegree\':$cameraDegree])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAMapStatus::statusWithCenterCoordinateZoomLevelrotationDegreecameraDegreescreenAnchor', {"coordinate": coordinate.refId, "zoomLevel": zoomLevel, "rotationDegree": rotationDegree, "cameraDegree": cameraDegree, "screenAnchor": screenAnchor.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAMapStatus()..refId = result;
    }
  }
  
}