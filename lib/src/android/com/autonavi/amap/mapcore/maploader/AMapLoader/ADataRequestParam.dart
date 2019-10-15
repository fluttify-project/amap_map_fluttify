import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_maploader_AMapLoader_ADataRequestParam extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  Future<String> get_requestUrl() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.maploader.AMapLoader.ADataRequestParam::get_requestUrl", {'refId': refId});
    return result;
  }
  
  Future<int> get_handler() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.maploader.AMapLoader.ADataRequestParam::get_handler", {'refId': refId});
    return result;
  }
  
  Future<int> get_nRequestType() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.maploader.AMapLoader.ADataRequestParam::get_nRequestType", {'refId': refId});
    return result;
  }
  
  Future<List<int>> get_enCodeString() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.maploader.AMapLoader.ADataRequestParam::get_enCodeString", {'refId': refId});
    return result;
  }
  
  Future<int> get_nCompress() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.maploader.AMapLoader.ADataRequestParam::get_nCompress", {'refId': refId});
    return result;
  }
  
  Future<String> get_requestBaseUrl() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.maploader.AMapLoader.ADataRequestParam::get_requestBaseUrl", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_requestUrl(String requestUrl) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.maploader.AMapLoader.ADataRequestParam::set_requestUrl', {'refId': refId, "requestUrl": requestUrl});
  
  
  }
  
  Future<void> set_handler(int handler) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.maploader.AMapLoader.ADataRequestParam::set_handler', {'refId': refId, "handler": handler});
  
  
  }
  
  Future<void> set_nRequestType(int nRequestType) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.maploader.AMapLoader.ADataRequestParam::set_nRequestType', {'refId': refId, "nRequestType": nRequestType});
  
  
  }
  
  Future<void> set_enCodeString(List<int> enCodeString) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.maploader.AMapLoader.ADataRequestParam::set_enCodeString', {'refId': refId, "enCodeString": enCodeString});
  
  
  }
  
  Future<void> set_nCompress(int nCompress) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.maploader.AMapLoader.ADataRequestParam::set_nCompress', {'refId': refId, "nCompress": nCompress});
  
  
  }
  
  Future<void> set_requestBaseUrl(String requestBaseUrl) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.maploader.AMapLoader.ADataRequestParam::set_requestBaseUrl', {'refId': refId, "requestBaseUrl": requestBaseUrl});
  
  
  }
  

  // 生成方法们
  
}