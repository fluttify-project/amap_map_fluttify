import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAMultiTexturePolylineRenderer extends MAPolylineRenderer  {
  // 生成getters
  Future<MAMultiPolyline> get_multiPolyline() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAMultiTexturePolylineRenderer::get_multiPolyline", {'refId': refId});
    kNativeObjectPool.add(MAMultiPolyline()..refId = result);
    return MAMultiPolyline()..refId = result;
  }
  
  Future<List> get_strokeTextureImages() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAMultiTexturePolylineRenderer::get_strokeTextureImages", {'refId': refId});
    kNativeObjectPool.addAll((result as List).cast<int>().map((it) => NSObject()..refId = it).toList());
    return (result as List).cast<int>().map((it) => NSObject()..refId = it).toList();
  }
  

  // 生成setters
  Future<void> set_strokeTextureImages(List strokeTextureImages) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAMultiTexturePolylineRenderer::set_strokeTextureImages', {'refId': refId, "strokeTextureImages": strokeTextureImages.map((it) => it.refId).toList()});
  
  
  }
  

  // 生成方法们
  Future<MAMultiTexturePolylineRenderer> initWithMultiPolyline(MAMultiPolyline multiPolyline) async {
    // 日志打印
    print('fluttify-dart: MAMultiTexturePolylineRenderer@$refId::initWithMultiPolyline([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAMultiTexturePolylineRenderer::initWithMultiPolyline', {"multiPolyline": multiPolyline.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(MAMultiTexturePolylineRenderer()..refId = result);
      return MAMultiTexturePolylineRenderer()..refId = result;
    }
  }
  
}