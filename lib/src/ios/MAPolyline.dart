import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAPolyline extends MAMultiPoint with MAAnnotation, MAOverlay {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  static Future<MAPolyline> polylineWithPoints(List<MAMapPoint> points, int count) async {
    // 日志打印
    print('fluttify-dart: MAPolyline::polylineWithPoints([\'count\':$count])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAPolyline::polylineWithPointsCount', {"points": points.map((it) => it.refId).toList(), "count": count});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAPolyline()..refId = result;
    }
  }
  
  static Future<MAPolyline> polylineWithCoordinates(List<CLLocationCoordinate2D> coords, int count) async {
    // 日志打印
    print('fluttify-dart: MAPolyline::polylineWithCoordinates([\'count\':$count])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAPolyline::polylineWithCoordinatesCount', {"coords": coords.map((it) => it.refId).toList(), "count": count});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAPolyline()..refId = result;
    }
  }
  
  Future<bool> setPolylineWithPoints(List<MAMapPoint> points, int count) async {
    // 日志打印
    print('fluttify-dart: MAPolyline@$refId::setPolylineWithPoints([\'count\':$count])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAPolyline::setPolylineWithPointsCount', {"points": points.map((it) => it.refId).toList(), "count": count, "refId": refId});
  
  
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
    print('fluttify-dart: MAPolyline@$refId::setPolylineWithCoordinates([\'count\':$count])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAPolyline::setPolylineWithCoordinatesCount', {"coords": coords.map((it) => it.refId).toList(), "count": count, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}