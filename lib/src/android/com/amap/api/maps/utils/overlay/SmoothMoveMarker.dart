import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_utils_overlay_SmoothMoveMarker extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<void> setPoints(List<com_amap_api_maps_model_LatLng> var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.utils.overlay.SmoothMoveMarker@$refId::setPoints([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.utils.overlay.SmoothMoveMarker::setPoints', {"var1": var1.map((it) => it.refId).toList(), "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setTotalDuration(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.utils.overlay.SmoothMoveMarker@$refId::setTotalDuration([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.utils.overlay.SmoothMoveMarker::setTotalDuration', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> startSmoothMove() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.utils.overlay.SmoothMoveMarker@$refId::startSmoothMove([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.utils.overlay.SmoothMoveMarker::startSmoothMove', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> stopMove() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.utils.overlay.SmoothMoveMarker@$refId::stopMove([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.utils.overlay.SmoothMoveMarker::stopMove', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_Marker> getMarker() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.utils.overlay.SmoothMoveMarker@$refId::getMarker([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.utils.overlay.SmoothMoveMarker::getMarker', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_Marker()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_LatLng> getPosition() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.utils.overlay.SmoothMoveMarker@$refId::getPosition([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.utils.overlay.SmoothMoveMarker::getPosition', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_LatLng()..refId = result;
    }
  }
  
  Future<int> getIndex() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.utils.overlay.SmoothMoveMarker@$refId::getIndex([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.utils.overlay.SmoothMoveMarker::getIndex', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> resetIndex() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.utils.overlay.SmoothMoveMarker@$refId::resetIndex([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.utils.overlay.SmoothMoveMarker::resetIndex', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.utils.overlay.SmoothMoveMarker@$refId::destroy([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.utils.overlay.SmoothMoveMarker::destroy', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> removeMarker() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.utils.overlay.SmoothMoveMarker@$refId::removeMarker([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.utils.overlay.SmoothMoveMarker::removeMarker', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setPosition(com_amap_api_maps_model_LatLng var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.utils.overlay.SmoothMoveMarker@$refId::setPosition([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.utils.overlay.SmoothMoveMarker::setPosition', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setDescriptor(com_amap_api_maps_model_BitmapDescriptor var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.utils.overlay.SmoothMoveMarker@$refId::setDescriptor([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.utils.overlay.SmoothMoveMarker::setDescriptor', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setRotate(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.utils.overlay.SmoothMoveMarker@$refId::setRotate([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.utils.overlay.SmoothMoveMarker::setRotate', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setVisible(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.utils.overlay.SmoothMoveMarker@$refId::setVisible([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.utils.overlay.SmoothMoveMarker::setVisible', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setMoveListener(com_amap_api_maps_utils_overlay_SmoothMoveMarker_MoveListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.utils.overlay.SmoothMoveMarker@$refId::setMoveListener([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.utils.overlay.SmoothMoveMarker::setMoveListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.utils.overlay.SmoothMoveMarker::setMoveListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.utils.overlay.SmoothMoveMarker.MoveListener::move':
              // 日志打印
              print('fluttify-dart-callback: move([\'var1\':$args[var1]])');
        
                // 调用回调方法
              var1?.move(args['var1']);
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
  
}