import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAParticleOverlay extends MAShape with MAAnnotation, MAOverlay {
  // 生成getters
  Future<MAParticleOverlayOptions> get_overlayOption() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAParticleOverlay::get_overlayOption", {'refId': refId});
    return MAParticleOverlayOptions()..refId = result;
  }
  

  // 生成setters
  

  // 生成方法们
  static Future<MAParticleOverlay> particleOverlayWithOption(MAParticleOverlayOptions option) async {
    // 日志打印
    print('fluttify-dart: MAParticleOverlay::particleOverlayWithOption([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAParticleOverlay::particleOverlayWithOption', {"option": option.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAParticleOverlay()..refId = result;
    }
  }
  
  Future<void> updateOverlayOption(MAParticleOverlayOptions overlayOption) async {
    // 日志打印
    print('fluttify-dart: MAParticleOverlay@$refId::updateOverlayOption([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAParticleOverlay::updateOverlayOption', {"overlayOption": overlayOption.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}