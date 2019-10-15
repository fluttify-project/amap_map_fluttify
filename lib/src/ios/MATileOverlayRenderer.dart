import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MATileOverlayRenderer extends MAOverlayRenderer  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  Future<MATileOverlay> get_tileOverlay() async {
    final result = await _channel.invokeMethod("MATileOverlayRenderer::get_tileOverlay", {'refId': refId});
    return MATileOverlay()..refId = result;
  }
  

  // 生成setters
  

  // 生成方法们
  Future<MATileOverlayRenderer> initWithTileOverlay(MATileOverlay tileOverlay) async {
    // 日志打印
    print('fluttify-dart: MATileOverlayRenderer@$refId::initWithTileOverlay([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MATileOverlayRenderer::initWithTileOverlay', {"tileOverlay": tileOverlay.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MATileOverlayRenderer()..refId = result;
    }
  }
  
  Future<void> reloadData() async {
    // 日志打印
    print('fluttify-dart: MATileOverlayRenderer@$refId::reloadData([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MATileOverlayRenderer::reloadData', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}