import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MATraceManager extends NSObject  {
  // 生成getters
  

  // 生成setters
  Future<void> set_delegate(MATraceDelegate delegate) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MATraceManager::set_delegate', {'refId': refId, "delegate": delegate.refId});
  
    MethodChannel('MATraceDelegate::Callback')
      .setMethodCallHandler((methodCall) async {
        final args = methodCall.arguments as Map;
        // final refId = args['callerRefId'] as int;
        // if (refId != this.refId) return;
  
        switch (methodCall.method) {
          case 'Callback::MATraceDelegate::mapViewRequireLocationAuth':
            // 日志打印
            print('fluttify-dart-callback: mapViewRequireLocationAuth([])');
        
              // 调用回调方法
            delegate?.mapViewRequireLocationAuth(CLLocationManager()..refId = (args['locationManager']));
            break;
          default:
            break;
        }
      });
  }
  

  // 生成方法们
  static Future<MATraceManager> sharedInstance() async {
    // 日志打印
    print('fluttify-dart: MATraceManager::sharedInstance([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MATraceManager::sharedInstance', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(MATraceManager()..refId = result);
      return MATraceManager()..refId = result;
    }
  }
  
  Future<void> start() async {
    // 日志打印
    print('fluttify-dart: MATraceManager@$refId::start([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MATraceManager::start', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> stop() async {
    // 日志打印
    print('fluttify-dart: MATraceManager@$refId::stop([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MATraceManager::stop', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}