import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_animation_GLAnimation extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_autonavi_amap_mapcore_animation_GLAnimation> clone() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::clone([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::clone', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_autonavi_amap_mapcore_animation_GLAnimation()..refId = result;
    }
  }
  
  Future<void> reset() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::reset([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::reset', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> cancel() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::cancel([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::cancel', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> detach() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::detach([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::detach', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isInitialized() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::isInitialized([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::isInitialized', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> initialize() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::initialize([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::initialize', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setInterpolator(android_content_Context var1, int var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::setInterpolator([\'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::setInterpolator', {"var1": var1.refId, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setStartOffset(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::setStartOffset([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::setStartOffset', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setDuration(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::setDuration([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::setDuration', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> restrictDuration(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::restrictDuration([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::restrictDuration', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> scaleCurrentDuration(double var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::scaleCurrentDuration([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::scaleCurrentDuration', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setStartTime(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::setStartTime([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::setStartTime', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> start() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::start([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::start', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> startNow() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::startNow([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::startNow', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setRepeatMode(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::setRepeatMode([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::setRepeatMode', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setRepeatCount(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::setRepeatCount([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::setRepeatCount', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isFillEnabled() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::isFillEnabled([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::isFillEnabled', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setFillEnabled(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::setFillEnabled([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::setFillEnabled', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setFillBefore(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::setFillBefore([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::setFillBefore', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setFillAfter(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::setFillAfter([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::setFillAfter', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setZAdjustment(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::setZAdjustment([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::setZAdjustment', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setBackgroundColor(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::setBackgroundColor([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::setBackgroundColor', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setDetachWallpaper(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::setDetachWallpaper([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::setDetachWallpaper', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getStartTime() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::getStartTime([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::getStartTime', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getDuration() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::getDuration([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::getDuration', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getStartOffset() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::getStartOffset([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::getStartOffset', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getRepeatMode() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::getRepeatMode([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::getRepeatMode', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getRepeatCount() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::getRepeatCount([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::getRepeatCount', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> getFillBefore() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::getFillBefore([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::getFillBefore', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> getFillAfter() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::getFillAfter([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::getFillAfter', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getZAdjustment() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::getZAdjustment([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::getZAdjustment', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getBackgroundColor() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::getBackgroundColor([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::getBackgroundColor', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> getDetachWallpaper() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::getDetachWallpaper([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::getDetachWallpaper', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> willChangeTransformationMatrix() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::willChangeTransformationMatrix([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::willChangeTransformationMatrix', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> willChangeBounds() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::willChangeBounds([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::willChangeBounds', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setAnimationListener(com_amap_api_maps_model_animation_Animation_AnimationListener var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::setAnimationListener([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::setAnimationListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.autonavi.amap.mapcore.animation.GLAnimation::setAnimationListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.model.animation.Animation.AnimationListener::onAnimationStart':
              // 日志打印
              print('fluttify-dart-callback: onAnimationStart([])');
        
                // 调用回调方法
              var1?.onAnimationStart();
              break;
            case 'Callback::com.amap.api.maps.model.animation.Animation.AnimationListener::onAnimationEnd':
              // 日志打印
              print('fluttify-dart-callback: onAnimationEnd([])');
        
                // 调用回调方法
              var1?.onAnimationEnd();
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
  
  Future<int> computeDurationHint() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::computeDurationHint([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::computeDurationHint', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> getTransformation(int var1, com_autonavi_amap_mapcore_animation_GLTransformation var3) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::getTransformation([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::getTransformation', {"var1": var1, "var3": var3.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> hasEnded() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::hasEnded([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::hasEnded', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> initializeInvalidateRegion(int var1, int var2, int var3, int var4) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::initializeInvalidateRegion([\'var1\':$var1, \'var2\':$var2, \'var3\':$var3, \'var4\':$var4])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::initializeInvalidateRegion', {"var1": var1, "var2": var2, "var3": var3, "var4": var4, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> hasAlpha() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLAnimation@$refId::hasAlpha([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLAnimation::hasAlpha', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}