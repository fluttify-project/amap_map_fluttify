import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapURLSearch extends NSObject  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  static Future<void> getLatestAMapApp() async {
    // 日志打印
    print('fluttify-dart: AMapURLSearch::getLatestAMapApp([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('AMapURLSearch::getLatestAMapApp', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<bool> openAMapNavigation(AMapNaviConfig config) async {
    // 日志打印
    print('fluttify-dart: AMapURLSearch::openAMapNavigation([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('AMapURLSearch::openAMapNavigation', {"config": config.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<bool> openAMapRouteSearch(AMapRouteConfig config) async {
    // 日志打印
    print('fluttify-dart: AMapURLSearch::openAMapRouteSearch([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('AMapURLSearch::openAMapRouteSearch', {"config": config.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<bool> openAMapPOISearch(AMapPOIConfig config) async {
    // 日志打印
    print('fluttify-dart: AMapURLSearch::openAMapPOISearch([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('AMapURLSearch::openAMapPOISearch', {"config": config.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}