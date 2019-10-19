import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_ae_gmap_glanimation_AdglMapAnimationMgr extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<void> setMapCoreListener() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.glanimation.AdglMapAnimationMgr@$refId::setMapCoreListener([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.glanimation.AdglMapAnimationMgr::setMapCoreListener', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> clearAnimations() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.glanimation.AdglMapAnimationMgr@$refId::clearAnimations([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.glanimation.AdglMapAnimationMgr::clearAnimations', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getAnimationsCount() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.glanimation.AdglMapAnimationMgr@$refId::getAnimationsCount([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.glanimation.AdglMapAnimationMgr::getAnimationsCount', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> doAnimations(com_autonavi_ae_gmap_GLMapState var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.glanimation.AdglMapAnimationMgr@$refId::doAnimations([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.glanimation.AdglMapAnimationMgr::doAnimations', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> addAnimation(com_autonavi_ae_gmap_glanimation_AbstractAdglAnimation var1, com_amap_api_maps_AMap_CancelableCallback var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.glanimation.AdglMapAnimationMgr@$refId::addAnimation([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.glanimation.AdglMapAnimationMgr::addAnimation', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.autonavi.ae.gmap.glanimation.AdglMapAnimationMgr::addAnimation::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.AMap.CancelableCallback::onFinish':
              // 日志打印
              print('fluttify-dart-callback: onFinish([])');
        
                // 调用回调方法
              var2?.onFinish();
              break;
            case 'Callback::com.amap.api.maps.AMap.CancelableCallback::onCancel':
              // 日志打印
              print('fluttify-dart-callback: onCancel([])');
        
                // 调用回调方法
              var2?.onCancel();
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
  
  Future<void> setMapAnimationListener(com_autonavi_ae_gmap_glanimation_AdglMapAnimationMgr_MapAnimationListener var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.glanimation.AdglMapAnimationMgr@$refId::setMapAnimationListener([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.glanimation.AdglMapAnimationMgr::setMapAnimationListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.autonavi.ae.gmap.glanimation.AdglMapAnimationMgr::setMapAnimationListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
        
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