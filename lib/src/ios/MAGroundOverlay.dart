import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAGroundOverlay extends MAShape with MAAnnotation, MAOverlay {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  Future<double> get_alpha() async {
    final result = await _channel.invokeMethod("MAGroundOverlay::get_alpha", {'refId': refId});
    return result;
  }
  
  Future<double> get_zoomLevel() async {
    final result = await _channel.invokeMethod("MAGroundOverlay::get_zoomLevel", {'refId': refId});
    return result;
  }
  
  Future<MACoordinateBounds> get_bounds() async {
    final result = await _channel.invokeMethod("MAGroundOverlay::get_bounds", {'refId': refId});
    return MACoordinateBounds()..refId = result;
  }
  

  // 生成setters
  Future<void> set_alpha(double alpha) async {
    await _channel.invokeMethod('MAGroundOverlay::set_alpha', {'refId': refId, "alpha": alpha});
  
  
  }
  

  // 生成方法们
  
}