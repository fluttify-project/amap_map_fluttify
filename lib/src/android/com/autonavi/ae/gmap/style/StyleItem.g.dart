import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_ae_gmap_style_StyleItem extends java_lang_Object  {
  // 生成getters
  Future<int> get_mainKey() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.style.StyleItem::get_mainKey", {'refId': refId});
    return result;
  }
  
  Future<List<int>> get_subKey() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.style.StyleItem::get_subKey", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_mainKey(int mainKey) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.style.StyleItem::set_mainKey', {'refId': refId, "mainKey": mainKey});
  
  
  }
  
  Future<void> set_subKey(List<int> subKey) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.style.StyleItem::set_subKey', {'refId': refId, "subKey": subKey});
  
  
  }
  

  // 生成方法们
  Future<com_autonavi_ae_gmap_style_StyleElement> get(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.style.StyleItem@$refId::get([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.style.StyleItem::get', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_autonavi_ae_gmap_style_StyleElement()..refId = result;
    }
  }
  
  Future<void> put(int var1, com_autonavi_ae_gmap_style_StyleElement var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.style.StyleItem@$refId::put([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.style.StyleItem::put', {"var1": var1, "var2": var2.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isValid() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.style.StyleItem@$refId::isValid([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.style.StyleItem::isValid', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}