import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAMultiColoredPolylineRenderer extends MAPolylineRenderer  {
  // 生成getters
  Future<MAMultiPolyline> get_multiPolyline() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAMultiColoredPolylineRenderer::get_multiPolyline", {'refId': refId});
    kNativeObjectPool.add(MAMultiPolyline()..refId = result);
    return MAMultiPolyline()..refId = result;
  }
  
  Future<bool> get_gradient() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAMultiColoredPolylineRenderer::get_isGradient", {'refId': refId});
  
    return result;
  }
  

  // 生成setters
  Future<void> set_gradient(bool gradient) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAMultiColoredPolylineRenderer::set_gradient', {'refId': refId, "gradient": gradient});
  
  
  }
  

  // 生成方法们
  Future<MAMultiColoredPolylineRenderer> initWithMultiPolyline(MAMultiPolyline multiPolyline) async {
    // 日志打印
    print('fluttify-dart: MAMultiColoredPolylineRenderer@$refId::initWithMultiPolyline([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAMultiColoredPolylineRenderer::initWithMultiPolyline', {"multiPolyline": multiPolyline.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(MAMultiColoredPolylineRenderer()..refId = result);
      return MAMultiColoredPolylineRenderer()..refId = result;
    }
  }
  
}