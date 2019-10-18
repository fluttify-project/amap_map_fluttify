import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_WearMapView extends android_view_ViewGroup  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_maps_AMap> getMap({bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.WearMapView@$refId::getMap([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/com_amap_api_maps_WearMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.WearMapView::getMap', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_AMap()..refId = result;
    }
  }
  
  Future<void> onCreate(android_os_Bundle var1, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.WearMapView@$refId::onCreate([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/com_amap_api_maps_WearMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.WearMapView::onCreate', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onResume({bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.WearMapView@$refId::onResume([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/com_amap_api_maps_WearMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.WearMapView::onResume', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onPause({bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.WearMapView@$refId::onPause([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/com_amap_api_maps_WearMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.WearMapView::onPause', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onDestroy({bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.WearMapView@$refId::onDestroy([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/com_amap_api_maps_WearMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.WearMapView::onDestroy', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onLowMemory({bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.WearMapView@$refId::onLowMemory([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/com_amap_api_maps_WearMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.WearMapView::onLowMemory', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onSaveInstanceState(android_os_Bundle var1, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.WearMapView@$refId::onSaveInstanceState([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/com_amap_api_maps_WearMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.WearMapView::onSaveInstanceState', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setVisibility(int var1, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.WearMapView@$refId::setVisibility([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/com_amap_api_maps_WearMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.WearMapView::setVisibility', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setOnDismissCallbackListener(com_amap_api_maps_WearMapView_OnDismissCallback var1, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.WearMapView@$refId::setOnDismissCallbackListener([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/com_amap_api_maps_WearMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.WearMapView::setOnDismissCallbackListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.WearMapView::setOnDismissCallbackListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.WearMapView.OnDismissCallback::onDismiss':
              // 日志打印
              print('fluttify-dart-callback: onDismiss([])');
        
                // 调用回调方法
              var1?.onDismiss();
              break;
            case 'Callback::com.amap.api.maps.WearMapView.OnDismissCallback::onNotifySwipe':
              // 日志打印
              print('fluttify-dart-callback: onNotifySwipe([])');
        
                // 调用回调方法
              var1?.onNotifySwipe();
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
  
  Future<void> onDismiss({bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.WearMapView@$refId::onDismiss([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/com_amap_api_maps_WearMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.WearMapView::onDismiss', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onEnterAmbient(android_os_Bundle var1, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.WearMapView@$refId::onEnterAmbient([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/com_amap_api_maps_WearMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.WearMapView::onEnterAmbient', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onExitAmbient({bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.WearMapView@$refId::onExitAmbient([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/com_amap_api_maps_WearMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.WearMapView::onExitAmbient', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}