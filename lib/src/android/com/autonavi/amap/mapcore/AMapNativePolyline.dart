import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_AMapNativePolyline extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  static Future<int> nativeCreate() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativePolyline::nativeCreate([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativePolyline::nativeCreate', );
  
  
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
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativePolyline::nativeSetGLShaderManager([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativePolyline::nativeSetGLShaderManager', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeDrawLineByTextureID(int var0, List<double> var2, int var3, double var4, int var5, double var6, double var7, double var8, double var9, double var10, bool var11, bool var12, bool var13, List<double> var14, int var15, int var16) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativePolyline::nativeDrawLineByTextureID([\'var0\':$var0, \'var2\':$var2, \'var3\':$var3, \'var4\':$var4, \'var5\':$var5, \'var6\':$var6, \'var7\':$var7, \'var8\':$var8, \'var9\':$var9, \'var10\':$var10, \'var11\':$var11, \'var12\':$var12, \'var13\':$var13, \'var14\':$var14, \'var15\':$var15, \'var16\':$var16])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativePolyline::nativeDrawLineByTextureID', {"var0": var0, "var2": var2, "var3": var3, "var4": var4, "var5": var5, "var6": var6, "var7": var7, "var8": var8, "var9": var9, "var10": var10, "var11": var11, "var12": var12, "var13": var13, "var14": var14, "var15": var15, "var16": var16});
  
  
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
    print('fluttify-dart: com.autonavi.amap.mapcore.AMapNativePolyline::nativeDestroy([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.AMapNativePolyline::nativeDestroy', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}