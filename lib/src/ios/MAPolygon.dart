import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAPolygon extends MAMultiPoint with MAAnnotation, MAOverlay {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  

  // 生成setters
  Future<void> set_hollowShapes(List<MAOverlay> hollowShapes) async {
    await _channel.invokeMethod('MAPolygon::set_hollowShapes', {'refId': refId, "hollowShapes": hollowShapes.map((it) => it.refId).toList()});
  
  
  }
  

  // 生成方法们
  static Future<MAPolygon> polygonWithCoordinates(List<CLLocationCoordinate2D> coords, int count) async {
    // 日志打印
    print('fluttify-dart: MAPolygon::polygonWithCoordinates([\'count\':$count])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAPolygon::polygonWithCoordinatesCount', {"coords": coords.map((it) => it.refId).toList(), "count": count});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAPolygon()..refId = result;
    }
  }
  
  static Future<MAPolygon> polygonWithPoints(List<MAMapPoint> points, int count) async {
    // 日志打印
    print('fluttify-dart: MAPolygon::polygonWithPoints([\'count\':$count])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAPolygon::polygonWithPointsCount', {"points": points.map((it) => it.refId).toList(), "count": count});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAPolygon()..refId = result;
    }
  }
  
  Future<bool> setPolygonWithPoints(List<MAMapPoint> points, int count) async {
    // 日志打印
    print('fluttify-dart: MAPolygon@$refId::setPolygonWithPoints([\'count\':$count])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAPolygon::setPolygonWithPointsCount', {"points": points.map((it) => it.refId).toList(), "count": count, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> setPolygonWithCoordinates(List<CLLocationCoordinate2D> coords, int count) async {
    // 日志打印
    print('fluttify-dart: MAPolygon@$refId::setPolygonWithCoordinates([\'count\':$count])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAPolygon::setPolygonWithCoordinatesCount', {"coords": coords.map((it) => it.refId).toList(), "count": count, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}