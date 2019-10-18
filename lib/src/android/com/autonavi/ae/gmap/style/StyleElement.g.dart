import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_ae_gmap_style_StyleElement extends java_lang_Object  {
  // 生成getters
  Future<int> get_styleElementType() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.style.StyleElement::get_styleElementType", {'refId': refId});
    return result;
  }
  
  Future<int> get_value() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.style.StyleElement::get_value", {'refId': refId});
    return result;
  }
  
  Future<int> get_textureId() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.style.StyleElement::get_textureId", {'refId': refId});
    return result;
  }
  
  Future<double> get_opacity() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.style.StyleElement::get_opacity", {'refId': refId});
    return result;
  }
  
  Future<int> get_lineWidth() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.style.StyleElement::get_lineWidth", {'refId': refId});
    return result;
  }
  
  Future<int> get_visible() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.style.StyleElement::get_visible", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_styleElementType(int styleElementType) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.style.StyleElement::set_styleElementType', {'refId': refId, "styleElementType": styleElementType});
  
  
  }
  
  Future<void> set_value(int value) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.style.StyleElement::set_value', {'refId': refId, "value": value});
  
  
  }
  
  Future<void> set_textureId(int textureId) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.style.StyleElement::set_textureId', {'refId': refId, "textureId": textureId});
  
  
  }
  
  Future<void> set_opacity(double opacity) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.style.StyleElement::set_opacity', {'refId': refId, "opacity": opacity});
  
  
  }
  
  Future<void> set_lineWidth(int lineWidth) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.style.StyleElement::set_lineWidth', {'refId': refId, "lineWidth": lineWidth});
  
  
  }
  
  Future<void> set_visible(int visible) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.style.StyleElement::set_visible', {'refId': refId, "visible": visible});
  
  
  }
  

  // 生成方法们
  
}