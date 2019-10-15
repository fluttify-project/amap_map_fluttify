import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_ae_gmap_GLMapRender extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  Future<bool> get_mSurfacedestoryed() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.GLMapRender::get_mSurfacedestoryed", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_mGLMapView(com_autonavi_amap_mapcore_interfaces_IAMap mGLMapView) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapRender::set_mGLMapView', {'refId': refId, "mGLMapView": mGLMapView.refId});
  
  
  }
  
  Future<void> set_mSurfacedestoryed(bool mSurfacedestoryed) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapRender::set_mSurfacedestoryed', {'refId': refId, "mSurfacedestoryed": mSurfacedestoryed});
  
  
  }
  

  // 生成方法们
  Future<void> setTrafficMode(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapRender@$refId::setTrafficMode([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapRender::setTrafficMode', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> resetTickCount(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapRender@$refId::resetTickCount([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapRender::resetTickCount', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isRenderPause() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapRender@$refId::isRenderPause([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapRender::isRenderPause', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setRenderFps(double var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapRender@$refId::setRenderFps([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapRender::setRenderFps', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> renderPause() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapRender@$refId::renderPause([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapRender::renderPause', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> renderResume() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapRender@$refId::renderResume([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapRender::renderResume', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onAttachedToWindow() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapRender@$refId::onAttachedToWindow([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapRender::onAttachedToWindow', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onDetachedFromWindow() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapRender@$refId::onDetachedFromWindow([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapRender::onDetachedFromWindow', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onSurfaceDestory() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapRender@$refId::onSurfaceDestory([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapRender::onSurfaceDestory', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}