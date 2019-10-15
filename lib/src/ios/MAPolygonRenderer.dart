import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAPolygonRenderer extends MAOverlayPathRenderer  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  Future<MAPolygon> get_polygon() async {
    final result = await _channel.invokeMethod("MAPolygonRenderer::get_polygon", {'refId': refId});
    return MAPolygon()..refId = result;
  }
  

  // 生成setters
  

  // 生成方法们
  Future<MAPolygonRenderer> initWithPolygon(MAPolygon polygon) async {
    // 日志打印
    print('fluttify-dart: MAPolygonRenderer@$refId::initWithPolygon([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAPolygonRenderer::initWithPolygon', {"polygon": polygon.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAPolygonRenderer()..refId = result;
    }
  }
  
}