import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_maploader_AMapLoader extends java_lang_Object  {
  // 生成getters
  Future<bool> get_isFinish() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.amap.mapcore.maploader.AMapLoader::get_isFinish", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_isFinish(bool isFinish) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.maploader.AMapLoader::set_isFinish', {'refId': refId, "isFinish": isFinish});
  
  
  }
  

  // 生成方法们
  Future<void> onDownload(List<int> var1, int var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.maploader.AMapLoader@$refId::onDownload([\'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.maploader.AMapLoader::onDownload', {"var1": var1, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onStop() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.maploader.AMapLoader@$refId::onStop([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.maploader.AMapLoader::onStop', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onFinish() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.maploader.AMapLoader@$refId::onFinish([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.maploader.AMapLoader::onFinish', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> doRequest() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.maploader.AMapLoader@$refId::doRequest([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.maploader.AMapLoader::doRequest', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> doCancel() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.maploader.AMapLoader@$refId::doCancel([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.maploader.AMapLoader::doCancel', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getDeviceId(android_content_Context var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.maploader.AMapLoader@$refId::getDeviceId([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.maploader.AMapLoader::getDeviceId', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}