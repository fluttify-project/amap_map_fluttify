import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MACircleRenderer extends MAOverlayPathRenderer  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  Future<MACircle> get_circle() async {
    final result = await _channel.invokeMethod("MACircleRenderer::get_circle", {'refId': refId});
    return MACircle()..refId = result;
  }
  

  // 生成setters
  

  // 生成方法们
  Future<MACircleRenderer> initWithCircle(MACircle circle) async {
    // 日志打印
    print('fluttify-dart: MACircleRenderer@$refId::initWithCircle([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MACircleRenderer::initWithCircle', {"circle": circle.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MACircleRenderer()..refId = result;
    }
  }
  
}