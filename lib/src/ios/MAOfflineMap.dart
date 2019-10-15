import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAOfflineMap extends NSObject  {
  // 生成getters
  Future<List<MAOfflineProvince>> get_provinces() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAOfflineMap::get_provinces", {'refId': refId});
    return (result as List).cast<int>().map((it) => MAOfflineProvince()..refId = it).toList();
  }
  
  Future<List<MAOfflineItemMunicipality>> get_municipalities() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAOfflineMap::get_municipalities", {'refId': refId});
    return (result as List).cast<int>().map((it) => MAOfflineItemMunicipality()..refId = it).toList();
  }
  
  Future<MAOfflineItemNationWide> get_nationWide() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAOfflineMap::get_nationWide", {'refId': refId});
    return MAOfflineItemNationWide()..refId = result;
  }
  
  Future<List<MAOfflineCity>> get_cities() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAOfflineMap::get_cities", {'refId': refId});
    return (result as List).cast<int>().map((it) => MAOfflineCity()..refId = it).toList();
  }
  
  Future<String> get_version() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAOfflineMap::get_version", {'refId': refId});
    return result;
  }
  

  // 生成setters
  

  // 生成方法们
  static Future<MAOfflineMap> sharedOfflineMap() async {
    // 日志打印
    print('fluttify-dart: MAOfflineMap::sharedOfflineMap([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAOfflineMap::sharedOfflineMap', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAOfflineMap()..refId = result;
    }
  }
  
  Future<void> setupWithCompletionBlock(void block(bool setupSuccess)) async {
    // 日志打印
    print('fluttify-dart: MAOfflineMap@$refId::setupWithCompletionBlock([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAOfflineMap::setupWithCompletionBlock', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('MAOfflineMap::setupWithCompletionBlock::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'MAOfflineMap::setupWithCompletionBlock_Callback::block':
              // 日志打印
        
        
                // 调用回调方法
              block(args['setupSuccess']);
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
  
  Future<bool> isDownloadingForItem(MAOfflineItem item) async {
    // 日志打印
    print('fluttify-dart: MAOfflineMap@$refId::isDownloadingForItem([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAOfflineMap::isDownloadingForItem', {"item": item.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> pauseItem(MAOfflineItem item) async {
    // 日志打印
    print('fluttify-dart: MAOfflineMap@$refId::pauseItem([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAOfflineMap::pauseItem', {"item": item.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> deleteItem(MAOfflineItem item) async {
    // 日志打印
    print('fluttify-dart: MAOfflineMap@$refId::deleteItem([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAOfflineMap::deleteItem', {"item": item.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> cancelAll() async {
    // 日志打印
    print('fluttify-dart: MAOfflineMap@$refId::cancelAll([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAOfflineMap::cancelAll', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> clearDisk() async {
    // 日志打印
    print('fluttify-dart: MAOfflineMap@$refId::clearDisk([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAOfflineMap::clearDisk', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}