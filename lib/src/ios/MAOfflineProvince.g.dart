import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAOfflineProvince extends MAOfflineItem  {
  // 生成getters
  Future<List> get_cities() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAOfflineProvince::get_cities", {'refId': refId});
    kNativeObjectPool.addAll((result as List).cast<int>().map((it) => NSObject()..refId = it).toList());
    return (result as List).cast<int>().map((it) => NSObject()..refId = it).toList();
  }
  

  // 生成setters
  

  // 生成方法们
  
}