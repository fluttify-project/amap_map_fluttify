import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_ae_gmap_gloverlay_GLCrossVector_AVectorCrossAttr extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  Future<int> get_stAreaColor() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.gloverlay.GLCrossVector.AVectorCrossAttr::get_stAreaColor", {'refId': refId});
    return result;
  }
  
  Future<int> get_stArrowBorderColor() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.gloverlay.GLCrossVector.AVectorCrossAttr::get_stArrowBorderColor", {'refId': refId});
    return result;
  }
  
  Future<int> get_fArrowBorderWidth() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.gloverlay.GLCrossVector.AVectorCrossAttr::get_fArrowBorderWidth", {'refId': refId});
    return result;
  }
  
  Future<int> get_fArrowLineWidth() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.gloverlay.GLCrossVector.AVectorCrossAttr::get_fArrowLineWidth", {'refId': refId});
    return result;
  }
  
  Future<int> get_stArrowLineColor() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.gloverlay.GLCrossVector.AVectorCrossAttr::get_stArrowLineColor", {'refId': refId});
    return result;
  }
  
  Future<bool> get_dayMode() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.gloverlay.GLCrossVector.AVectorCrossAttr::get_dayMode", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_stAreaColor(int stAreaColor) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.gloverlay.GLCrossVector.AVectorCrossAttr::set_stAreaColor', {'refId': refId, "stAreaColor": stAreaColor});
  
  
  }
  
  Future<void> set_stArrowBorderColor(int stArrowBorderColor) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.gloverlay.GLCrossVector.AVectorCrossAttr::set_stArrowBorderColor', {'refId': refId, "stArrowBorderColor": stArrowBorderColor});
  
  
  }
  
  Future<void> set_fArrowBorderWidth(int fArrowBorderWidth) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.gloverlay.GLCrossVector.AVectorCrossAttr::set_fArrowBorderWidth', {'refId': refId, "fArrowBorderWidth": fArrowBorderWidth});
  
  
  }
  
  Future<void> set_fArrowLineWidth(int fArrowLineWidth) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.gloverlay.GLCrossVector.AVectorCrossAttr::set_fArrowLineWidth', {'refId': refId, "fArrowLineWidth": fArrowLineWidth});
  
  
  }
  
  Future<void> set_stArrowLineColor(int stArrowLineColor) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.gloverlay.GLCrossVector.AVectorCrossAttr::set_stArrowLineColor', {'refId': refId, "stArrowLineColor": stArrowLineColor});
  
  
  }
  
  Future<void> set_dayMode(bool dayMode) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.gloverlay.GLCrossVector.AVectorCrossAttr::set_dayMode', {'refId': refId, "dayMode": dayMode});
  
  
  }
  

  // 生成方法们
  
}