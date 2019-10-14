import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAOverlayPathRenderer extends MAOverlayRenderer  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  Future<double> get_lineWidth() async {
    final result = await _channel.invokeMethod("MAOverlayPathRenderer::get_lineWidth", {'refId': refId});
    return result;
  }
  
  Future<MALineJoinType> get_lineJoinType() async {
    final result = await _channel.invokeMethod("MAOverlayPathRenderer::get_lineJoinType", {'refId': refId});
    return MALineJoinType.values[result];
  }
  
  Future<MALineCapType> get_lineCapType() async {
    final result = await _channel.invokeMethod("MAOverlayPathRenderer::get_lineCapType", {'refId': refId});
    return MALineCapType.values[result];
  }
  
  Future<double> get_miterLimit() async {
    final result = await _channel.invokeMethod("MAOverlayPathRenderer::get_miterLimit", {'refId': refId});
    return result;
  }
  
  Future<bool> get_lineDash() async {
    final result = await _channel.invokeMethod("MAOverlayPathRenderer::get_lineDash", {'refId': refId});
    return result;
  }
  
  Future<MALineDashType> get_lineDashType() async {
    final result = await _channel.invokeMethod("MAOverlayPathRenderer::get_lineDashType", {'refId': refId});
    return MALineDashType.values[result];
  }
  

  // 生成setters
  Future<void> set_lineWidth(double lineWidth) async {
    await _channel.invokeMethod('MAOverlayPathRenderer::set_lineWidth', {'refId': refId, "lineWidth": lineWidth});
  
  
  }
  
  Future<void> set_lineJoinType(MALineJoinType lineJoinType) async {
    await _channel.invokeMethod('MAOverlayPathRenderer::set_lineJoinType', {'refId': refId, "lineJoinType": lineJoinType.index});
  
  
  }
  
  Future<void> set_lineCapType(MALineCapType lineCapType) async {
    await _channel.invokeMethod('MAOverlayPathRenderer::set_lineCapType', {'refId': refId, "lineCapType": lineCapType.index});
  
  
  }
  
  Future<void> set_miterLimit(double miterLimit) async {
    await _channel.invokeMethod('MAOverlayPathRenderer::set_miterLimit', {'refId': refId, "miterLimit": miterLimit});
  
  
  }
  
  Future<void> set_lineDash(bool lineDash) async {
    await _channel.invokeMethod('MAOverlayPathRenderer::set_lineDash', {'refId': refId, "lineDash": lineDash});
  
  
  }
  
  Future<void> set_lineDashType(MALineDashType lineDashType) async {
    await _channel.invokeMethod('MAOverlayPathRenderer::set_lineDashType', {'refId': refId, "lineDashType": lineDashType.index});
  
  
  }
  

  // 生成方法们
  
}