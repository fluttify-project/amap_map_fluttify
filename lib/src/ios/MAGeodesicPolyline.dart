import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAGeodesicPolyline extends MAPolyline  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  static Future<MAGeodesicPolyline> polylineWithPoints(List<MAMapPoint> points, int count) async {
    // 日志打印
    print('fluttify-dart: MAGeodesicPolyline::polylineWithPoints([\'count\':$count])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAGeodesicPolyline::polylineWithPointsCount', {"points": points.map((it) => it.refId).toList(), "count": count});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAGeodesicPolyline()..refId = result;
    }
  }
  
  static Future<MAGeodesicPolyline> polylineWithCoordinates(List<CLLocationCoordinate2D> coords, int count) async {
    // 日志打印
    print('fluttify-dart: MAGeodesicPolyline::polylineWithCoordinates([\'count\':$count])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAGeodesicPolyline::polylineWithCoordinatesCount', {"coords": coords.map((it) => it.refId).toList(), "count": count});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAGeodesicPolyline()..refId = result;
    }
  }
  
  Future<bool> setPolylineWithPoints(List<MAMapPoint> points, int count) async {
    // 日志打印
    print('fluttify-dart: MAGeodesicPolyline@$refId::setPolylineWithPoints([\'count\':$count])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAGeodesicPolyline::setPolylineWithPointsCount', {"points": points.map((it) => it.refId).toList(), "count": count, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> setPolylineWithCoordinates(List<CLLocationCoordinate2D> coords, int count) async {
    // 日志打印
    print('fluttify-dart: MAGeodesicPolyline@$refId::setPolylineWithCoordinates([\'count\':$count])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAGeodesicPolyline::setPolylineWithCoordinatesCount', {"coords": coords.map((it) => it.refId).toList(), "count": count, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}