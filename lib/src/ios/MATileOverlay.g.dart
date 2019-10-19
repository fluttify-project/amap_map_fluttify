import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MATileOverlay extends NSObject with MAAnnotation, MAOverlay {
  // 生成getters
  Future<int> get_minimumZ() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MATileOverlay::get_minimumZ", {'refId': refId});
  
    return result;
  }
  
  Future<int> get_maximumZ() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MATileOverlay::get_maximumZ", {'refId': refId});
  
    return result;
  }
  
  Future<String> get_URLTemplate() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MATileOverlay::get_URLTemplate", {'refId': refId});
  
    return result;
  }
  
  Future<bool> get_canReplaceMapContent() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MATileOverlay::get_canReplaceMapContent", {'refId': refId});
  
    return result;
  }
  
  Future<MAMapRect> get_boundingMapRect() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MATileOverlay::get_boundingMapRect", {'refId': refId});
    kNativeObjectPool.add(MAMapRect()..refId = result);
    return MAMapRect()..refId = result;
  }
  
  Future<bool> get_disableOffScreenTileLoading() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MATileOverlay::get_disableOffScreenTileLoading", {'refId': refId});
  
    return result;
  }
  

  // 生成setters
  Future<void> set_minimumZ(int minimumZ) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MATileOverlay::set_minimumZ', {'refId': refId, "minimumZ": minimumZ});
  
  
  }
  
  Future<void> set_maximumZ(int maximumZ) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MATileOverlay::set_maximumZ', {'refId': refId, "maximumZ": maximumZ});
  
  
  }
  
  Future<void> set_canReplaceMapContent(bool canReplaceMapContent) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MATileOverlay::set_canReplaceMapContent', {'refId': refId, "canReplaceMapContent": canReplaceMapContent});
  
  
  }
  
  Future<void> set_boundingMapRect(MAMapRect boundingMapRect) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MATileOverlay::set_boundingMapRect', {'refId': refId, "boundingMapRect": boundingMapRect.refId});
  
  
  }
  
  Future<void> set_disableOffScreenTileLoading(bool disableOffScreenTileLoading) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MATileOverlay::set_disableOffScreenTileLoading', {'refId': refId, "disableOffScreenTileLoading": disableOffScreenTileLoading});
  
  
  }
  

  // 生成方法们
  Future<void> cancelLoadOfTileAtPath(MATileOverlayPath path) async {
    // 日志打印
    print('fluttify-dart: MATileOverlay@$refId::cancelLoadOfTileAtPath([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MATileOverlay::cancelLoadOfTileAtPath', {"path": path.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}