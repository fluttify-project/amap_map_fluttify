import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_ae_gmap_gloverlay_GLOverlayTexture extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  Future<int> get_mResId() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.gloverlay.GLOverlayTexture::get_mResId", {'refId': refId});
    return result;
  }
  
  Future<int> get_mWidth() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.gloverlay.GLOverlayTexture::get_mWidth", {'refId': refId});
    return result;
  }
  
  Future<int> get_mHeight() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.gloverlay.GLOverlayTexture::get_mHeight", {'refId': refId});
    return result;
  }
  
  Future<int> get_mResWidth() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.gloverlay.GLOverlayTexture::get_mResWidth", {'refId': refId});
    return result;
  }
  
  Future<int> get_mResHeight() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.gloverlay.GLOverlayTexture::get_mResHeight", {'refId': refId});
    return result;
  }
  
  Future<double> get_mAnchorXRatio() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.gloverlay.GLOverlayTexture::get_mAnchorXRatio", {'refId': refId});
    return result;
  }
  
  Future<double> get_mAnchorYRatio() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.gloverlay.GLOverlayTexture::get_mAnchorYRatio", {'refId': refId});
    return result;
  }
  
  Future<int> get_mAnchor() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.gloverlay.GLOverlayTexture::get_mAnchor", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_mResId(int mResId) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.gloverlay.GLOverlayTexture::set_mResId', {'refId': refId, "mResId": mResId});
  
  
  }
  
  Future<void> set_mWidth(int mWidth) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.gloverlay.GLOverlayTexture::set_mWidth', {'refId': refId, "mWidth": mWidth});
  
  
  }
  
  Future<void> set_mHeight(int mHeight) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.gloverlay.GLOverlayTexture::set_mHeight', {'refId': refId, "mHeight": mHeight});
  
  
  }
  
  Future<void> set_mResWidth(int mResWidth) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.gloverlay.GLOverlayTexture::set_mResWidth', {'refId': refId, "mResWidth": mResWidth});
  
  
  }
  
  Future<void> set_mResHeight(int mResHeight) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.gloverlay.GLOverlayTexture::set_mResHeight', {'refId': refId, "mResHeight": mResHeight});
  
  
  }
  
  Future<void> set_mAnchorXRatio(double mAnchorXRatio) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.gloverlay.GLOverlayTexture::set_mAnchorXRatio', {'refId': refId, "mAnchorXRatio": mAnchorXRatio});
  
  
  }
  
  Future<void> set_mAnchorYRatio(double mAnchorYRatio) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.gloverlay.GLOverlayTexture::set_mAnchorYRatio', {'refId': refId, "mAnchorYRatio": mAnchorYRatio});
  
  
  }
  
  Future<void> set_mAnchor(int mAnchor) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.gloverlay.GLOverlayTexture::set_mAnchor', {'refId': refId, "mAnchor": mAnchor});
  
  
  }
  

  // 生成方法们
  
}