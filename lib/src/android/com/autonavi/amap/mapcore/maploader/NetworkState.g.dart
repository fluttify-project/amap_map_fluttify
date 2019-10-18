import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_maploader_NetworkState extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<void> setNetworkListener(com_autonavi_amap_mapcore_maploader_NetworkState_NetworkChangeListener var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.maploader.NetworkState@$refId::setNetworkListener([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.maploader.NetworkState::setNetworkListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.autonavi.amap.mapcore.maploader.NetworkState::setNetworkListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.autonavi.amap.mapcore.maploader.NetworkState.NetworkChangeListener::networkStateChanged':
              // 日志打印
              print('fluttify-dart-callback: networkStateChanged([])');
        
                // 调用回调方法
              var1?.networkStateChanged(android_content_Context()..refId = (args['var1']));
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> registerNetChangeReceiver(android_content_Context var1, bool var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.maploader.NetworkState@$refId::registerNetChangeReceiver([\'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.maploader.NetworkState::registerNetChangeReceiver', {"var1": var1.refId, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<bool> isNetworkConnected(android_content_Context var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.maploader.NetworkState::isNetworkConnected([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.maploader.NetworkState::isNetworkConnected', {"var0": var0.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}