import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAMultiPoint extends MAShape  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  Future<MAMapPoint> get_points() async {
    final result = await _channel.invokeMethod("MAMultiPoint::get_points", {'refId': refId});
    return MAMapPoint()..refId = result;
  }
  
  Future<int> get_pointCount() async {
    final result = await _channel.invokeMethod("MAMultiPoint::get_pointCount", {'refId': refId});
    return result;
  }
  
  Future<bool> get_cross180Longitude() async {
    final result = await _channel.invokeMethod("MAMultiPoint::get_cross180Longitude", {'refId': refId});
    return result;
  }
  

  // 生成setters
  

  // 生成方法们
  
}