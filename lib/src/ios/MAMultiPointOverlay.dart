import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAMultiPointOverlay extends MAShape with MAAnnotation, MAOverlay {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  Future<List<MAMultiPointItem>> get_items() async {
    final result = await _channel.invokeMethod("MAMultiPointOverlay::get_items", {'refId': refId});
    return (result as List).cast<int>().map((it) => MAMultiPointItem()..refId = it).toList();
  }
  

  // 生成setters
  

  // 生成方法们
  Future<MAMultiPointOverlay> initWithMultiPointItems(List<MAMultiPointItem> items) async {
    // 日志打印
    print('fluttify-dart: MAMultiPointOverlay@$refId::initWithMultiPointItems([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMultiPointOverlay::initWithMultiPointItems', {"items": items.map((it) => it.refId).toList(), "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAMultiPointOverlay()..refId = result;
    }
  }
  
}