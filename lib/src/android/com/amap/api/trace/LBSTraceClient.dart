import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_trace_LBSTraceClient extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  static Future<com_amap_api_trace_LBSTraceClient> getInstance(android_content_Context var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.trace.LBSTraceClient::getInstance([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.trace.LBSTraceClient::getInstance', {"var0": var0.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_trace_LBSTraceClient()..refId = result;
    }
  }
  
  Future<void> queryProcessedTrace(int var1, List<com_amap_api_trace_TraceLocation> var2, int var3, com_amap_api_trace_TraceListener var4) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.trace.LBSTraceClient@$refId::queryProcessedTrace([\'var1\':$var1, \'var3\':$var3])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.trace.LBSTraceClient::queryProcessedTrace', {"var1": var1, "var2": var2.map((it) => it.refId).toList(), "var3": var3, "var4": var4.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> startTrace(com_amap_api_trace_TraceStatusListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.trace.LBSTraceClient@$refId::startTrace([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.trace.LBSTraceClient::startTrace', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.trace.LBSTraceClient::startTrace::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.trace.TraceStatusListener::onTraceStatus':
              // 日志打印
              print('fluttify-dart-callback: onTraceStatus([\'var3\':$args[var3]])');
        
                // 调用回调方法
              var1?.onTraceStatus((args['var1'] as List).cast<int>().map((it) => com_amap_api_trace_TraceLocation()..refId = it).toList(), (args['var2'] as List).cast<int>().map((it) => com_amap_api_maps_model_LatLng()..refId = it).toList(), args['var3']);
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
  
  Future<void> stopTrace() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.trace.LBSTraceClient@$refId::stopTrace([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.trace.LBSTraceClient::stopTrace', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> destroy() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.trace.LBSTraceClient@$refId::destroy([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.trace.LBSTraceClient::destroy', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}