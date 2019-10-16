import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_AMapNativeParticleSystem extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  static Future<int> nativeCreate() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeCreate([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeCreate', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeSetGLShaderManager(int var0, int var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeSetGLShaderManager([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeSetGLShaderManager', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<int> nativeDestroy(int var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeDestroy([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeDestroy', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeRender(int var0, List<double> var2, List<double> var3, int var4, int var5, double var6, double var7, double var8) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeRender([\'var0\':$var0, \'var2\':$var2, \'var3\':$var3, \'var4\':$var4, \'var5\':$var5, \'var6\':$var6, \'var7\':$var7, \'var8\':$var8])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeRender', {"var0": var0, "var2": var2, "var3": var3, "var4": var4, "var5": var5, "var6": var6, "var7": var7, "var8": var8});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setStartParticleSize(int var0, double var2, double var3) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::setStartParticleSize([\'var0\':$var0, \'var2\':$var2, \'var3\':$var3])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::setStartParticleSize', {"var0": var0, "var2": var2, "var3": var3});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setMaxParticles(int var0, int var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::setMaxParticles([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::setMaxParticles', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setDuration(int var0, int var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::setDuration([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::setDuration', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setParticleLifeTime(int var0, int var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::setParticleLifeTime([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::setParticleLifeTime', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setParticleStartSpeed(int var0, int var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::setParticleStartSpeed([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::setParticleStartSpeed', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setLoop(int var0, bool var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::setLoop([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::setLoop', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setParticleShapeModule(int var0, int var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::setParticleShapeModule([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::setParticleShapeModule', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setParticleEmission(int var0, int var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::setParticleEmission([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::setParticleEmission', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<int> getCurrentParticleNum(int var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::getCurrentParticleNum([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::getCurrentParticleNum', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setParticleOverLifeModule(int var0, int var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::setParticleOverLifeModule([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::setParticleOverLifeModule', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setPreWram(int var0, bool var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::setPreWram([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::setPreWram', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setStartColor(int var0, int var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::setStartColor([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::setStartColor', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeSetTextureId(int var0, int var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeSetTextureId([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeSetTextureId', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<int> nativeCreateParticleEmissionModule(int var0, int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeCreateParticleEmissionModule([\'var0\':$var0, \'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeCreateParticleEmissionModule', {"var0": var0, "var1": var1});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<int> nativeCreateSinglePointParticleShape(double var0, double var1, double var2, bool var3) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeCreateSinglePointParticleShape([\'var0\':$var0, \'var1\':$var1, \'var2\':$var2, \'var3\':$var3])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeCreateSinglePointParticleShape', {"var0": var0, "var1": var1, "var2": var2, "var3": var3});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<int> nativeCreateRectParticleShape(double var0, double var1, double var2, double var3, bool var4) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeCreateRectParticleShape([\'var0\':$var0, \'var1\':$var1, \'var2\':$var2, \'var3\':$var3, \'var4\':$var4])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeCreateRectParticleShape', {"var0": var0, "var1": var1, "var2": var2, "var3": var3, "var4": var4});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<int> nativeCreateRandomColorBetWeenTwoConstants(double var0, double var1, double var2, double var3, double var4, double var5, double var6, double var7) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeCreateRandomColorBetWeenTwoConstants([\'var0\':$var0, \'var1\':$var1, \'var2\':$var2, \'var3\':$var3, \'var4\':$var4, \'var5\':$var5, \'var6\':$var6, \'var7\':$var7])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeCreateRandomColorBetWeenTwoConstants', {"var0": var0, "var1": var1, "var2": var2, "var3": var3, "var4": var4, "var5": var5, "var6": var6, "var7": var7});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<int> nativeCreateParticleOverLifeModule() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeCreateParticleOverLifeModule([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeCreateParticleOverLifeModule', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<int> nativeCreateConstantRotationOverLife(double var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeCreateConstantRotationOverLife([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeCreateConstantRotationOverLife', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<int> nativeCreateRandomVelocityBetweenTwoConstants(double var0, double var1, double var2, double var3, double var4, double var5) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeCreateRandomVelocityBetweenTwoConstants([\'var0\':$var0, \'var1\':$var1, \'var2\':$var2, \'var3\':$var3, \'var4\':$var4, \'var5\':$var5])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeCreateRandomVelocityBetweenTwoConstants', {"var0": var0, "var1": var1, "var2": var2, "var3": var3, "var4": var4, "var5": var5});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<int> nativeCreateCurveSizeOverLife(double var0, double var1, double var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeCreateCurveSizeOverLife([\'var0\':$var0, \'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeCreateCurveSizeOverLife', {"var0": var0, "var1": var1, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeSetOverLifeItem(int var0, int var2, int var4) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeSetOverLifeItem([\'var0\':$var0, \'var2\':$var2, \'var4\':$var4])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeSetOverLifeItem', {"var0": var0, "var2": var2, "var4": var4});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeReleaseVelocityOverLife(int var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeReleaseVelocityOverLife([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeReleaseVelocityOverLife', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeReleaseColorGenerate(int var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeReleaseColorGenerate([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeReleaseColorGenerate', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeReleaseParticleEmissonModule(int var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeReleaseParticleEmissonModule([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeReleaseParticleEmissonModule', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeReleaseParticleOverLifeModule(int var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeReleaseParticleOverLifeModule([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeReleaseParticleOverLifeModule', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeReleaseParticleShapeModule(int var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeReleaseParticleShapeModule([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeReleaseParticleShapeModule', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeReleaseRotationOverLife(int var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeReleaseRotationOverLife([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeReleaseRotationOverLife', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeReleaseSizeOverLife(int var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeReleaseSizeOverLife([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativeParticleSystem::nativeReleaseSizeOverLife', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}