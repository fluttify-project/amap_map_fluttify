import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_Rectangle extends java_lang_Object  {
  // 生成getters
  Future<double> get_left() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.amap.mapcore.Rectangle::get_left", {'refId': refId});
  
    return result;
  }
  
  Future<double> get_right() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.amap.mapcore.Rectangle::get_right", {'refId': refId});
  
    return result;
  }
  
  Future<double> get_bottom() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.amap.mapcore.Rectangle::get_bottom", {'refId': refId});
  
    return result;
  }
  
  Future<double> get_top() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.amap.mapcore.Rectangle::get_top", {'refId': refId});
  
    return result;
  }
  

  // 生成setters
  Future<void> set_left(double left) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Rectangle::set_left', {'refId': refId, "left": left});
  
  
  }
  
  Future<void> set_right(double right) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Rectangle::set_right', {'refId': refId, "right": right});
  
  
  }
  
  Future<void> set_bottom(double bottom) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Rectangle::set_bottom', {'refId': refId, "bottom": bottom});
  
  
  }
  
  Future<void> set_top(double top) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Rectangle::set_top', {'refId': refId, "top": top});
  
  
  }
  

  // 生成方法们
  Future<int> getBeyond180Mode() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Rectangle@$refId::getBeyond180Mode([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Rectangle::getBeyond180Mode', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> contains(int var1, int var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Rectangle@$refId::contains([\'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Rectangle::contains', {"var1": var1, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isOverlap(int var1, int var2, int var3, int var4) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Rectangle@$refId::isOverlap([\'var1\':$var1, \'var2\':$var2, \'var3\':$var3, \'var4\':$var4])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Rectangle::isOverlap', {"var1": var1, "var2": var2, "var3": var3, "var4": var4, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}