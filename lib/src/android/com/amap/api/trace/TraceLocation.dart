import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_trace_TraceLocation extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<double> getLatitude() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.trace.TraceLocation@$refId::getLatitude([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.trace.TraceLocation::getLatitude', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setLatitude(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.trace.TraceLocation@$refId::setLatitude([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.trace.TraceLocation::setLatitude', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getLongitude() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.trace.TraceLocation@$refId::getLongitude([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.trace.TraceLocation::getLongitude', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setLongitude(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.trace.TraceLocation@$refId::setLongitude([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.trace.TraceLocation::setLongitude', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getSpeed() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.trace.TraceLocation@$refId::getSpeed([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.trace.TraceLocation::getSpeed', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setSpeed(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.trace.TraceLocation@$refId::setSpeed([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.trace.TraceLocation::setSpeed', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getBearing() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.trace.TraceLocation@$refId::getBearing([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.trace.TraceLocation::getBearing', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setBearing(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.trace.TraceLocation@$refId::setBearing([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.trace.TraceLocation::setBearing', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getTime() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.trace.TraceLocation@$refId::getTime([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.trace.TraceLocation::getTime', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setTime(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.trace.TraceLocation@$refId::setTime([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.trace.TraceLocation::setTime', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_trace_TraceLocation> copy() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.trace.TraceLocation@$refId::copy([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.trace.TraceLocation::copy', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_trace_TraceLocation()..refId = result;
    }
  }
  
}