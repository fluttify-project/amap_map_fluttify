import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAOverlayRenderer extends NSObject  {
  // 生成getters
  Future<MAOverlay> get_overlay() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAOverlayRenderer::get_overlay", {'refId': refId});
    return MAGroundOverlay()..refId = result;
  }
  
  Future<CGPoint> get_glPoints() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAOverlayRenderer::get_glPoints", {'refId': refId});
    return CGPoint()..refId = result;
  }
  
  Future<int> get_glPointCount() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAOverlayRenderer::get_glPointCount", {'refId': refId});
    return result;
  }
  
  Future<double> get_alpha() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAOverlayRenderer::get_alpha", {'refId': refId});
    return result;
  }
  
  Future<double> get_contentScale() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAOverlayRenderer::get_contentScale", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_glPoints(List<CGPoint> glPoints) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAOverlayRenderer::set_glPoints', {'refId': refId, "glPoints": glPoints.map((it) => it.refId).toList()});
  
  
  }
  
  Future<void> set_glPointCount(int glPointCount) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAOverlayRenderer::set_glPointCount', {'refId': refId, "glPointCount": glPointCount});
  
  
  }
  
  Future<void> set_alpha(double alpha) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAOverlayRenderer::set_alpha', {'refId': refId, "alpha": alpha});
  
  
  }
  

  // 生成方法们
  Future<MAOverlayRenderer> initWithOverlay(MAOverlay overlay) async {
    // 日志打印
    print('fluttify-dart: MAOverlayRenderer@$refId::initWithOverlay([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAOverlayRenderer::initWithOverlay', {"overlay": overlay.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAOverlayRenderer()..refId = result;
    }
  }
  
  Future<MAMapPoint> getOffsetPoint() async {
    // 日志打印
    print('fluttify-dart: MAOverlayRenderer@$refId::getOffsetPoint([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAOverlayRenderer::getOffsetPoint', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAMapPoint()..refId = result;
    }
  }
  
  Future<double> getMapZoomLevel() async {
    // 日志打印
    print('fluttify-dart: MAOverlayRenderer@$refId::getMapZoomLevel([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAOverlayRenderer::getMapZoomLevel', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<CGPoint> glPointForMapPoint(MAMapPoint mapPoint) async {
    // 日志打印
    print('fluttify-dart: MAOverlayRenderer@$refId::glPointForMapPoint([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAOverlayRenderer::glPointForMapPoint', {"mapPoint": mapPoint.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return CGPoint()..refId = result;
    }
  }
  
  Future<CGPoint> glPointsForMapPointsCount(List<MAMapPoint> mapPoints, int count) async {
    // 日志打印
    print('fluttify-dart: MAOverlayRenderer@$refId::glPointsForMapPoints([\'count\':$count])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAOverlayRenderer::glPointsForMapPointsCount', {"mapPoints": mapPoints.map((it) => it.refId).toList(), "count": count, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return CGPoint()..refId = result;
    }
  }
  
  Future<double> glWidthForWindowWidth(double windowWidth) async {
    // 日志打印
    print('fluttify-dart: MAOverlayRenderer@$refId::glWidthForWindowWidth([\'windowWidth\':$windowWidth])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAOverlayRenderer::glWidthForWindowWidth', {"windowWidth": windowWidth, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> glRender() async {
    // 日志打印
    print('fluttify-dart: MAOverlayRenderer@$refId::glRender([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAOverlayRenderer::glRender', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setNeedsUpdate() async {
    // 日志打印
    print('fluttify-dart: MAOverlayRenderer@$refId::setNeedsUpdate([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAOverlayRenderer::setNeedsUpdate', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}