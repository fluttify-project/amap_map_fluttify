import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAGroundOverlayRenderer extends MAOverlayRenderer  {
  // 生成getters
  Future<MAGroundOverlay> get_groundOverlay() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAGroundOverlayRenderer::get_groundOverlay", {'refId': refId});
    return MAGroundOverlay()..refId = result;
  }
  

  // 生成setters
  

  // 生成方法们
  Future<MAGroundOverlayRenderer> initWithGroundOverlay(MAGroundOverlay groundOverlay) async {
    // 日志打印
    print('fluttify-dart: MAGroundOverlayRenderer@$refId::initWithGroundOverlay([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAGroundOverlayRenderer::initWithGroundOverlay', {"groundOverlay": groundOverlay.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAGroundOverlayRenderer()..refId = result;
    }
  }
  
}