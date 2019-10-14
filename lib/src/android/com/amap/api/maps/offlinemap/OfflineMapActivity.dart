import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_offlinemap_OfflineMapActivity extends com_amap_api_offlineservice_AMapPermissionActivity  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<void> showScr() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapActivity@$refId::showScr([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.offlinemap.OfflineMapActivity::showScr', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> closeScr() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapActivity@$refId::closeScr([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.offlinemap.OfflineMapActivity::closeScr', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onClick(android_view_View var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapActivity@$refId::onClick([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.offlinemap.OfflineMapActivity::onClick', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}