import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MACustomBuildingOverlayRenderer extends MAOverlayRenderer  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  Future<MACustomBuildingOverlay> get_customBuildingOverlay() async {
    final result = await _channel.invokeMethod("MACustomBuildingOverlayRenderer::get_customBuildingOverlay", {'refId': refId});
    return MACustomBuildingOverlay()..refId = result;
  }
  

  // 生成setters
  

  // 生成方法们
  Future<MACustomBuildingOverlayRenderer> initWithCustomBuildingOverlay(MACustomBuildingOverlay customBuildingOverlay) async {
    // 日志打印
    print('fluttify-dart: MACustomBuildingOverlayRenderer@$refId::initWithCustomBuildingOverlay([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MACustomBuildingOverlayRenderer::initWithCustomBuildingOverlay', {"customBuildingOverlay": customBuildingOverlay.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MACustomBuildingOverlayRenderer()..refId = result;
    }
  }
  
}