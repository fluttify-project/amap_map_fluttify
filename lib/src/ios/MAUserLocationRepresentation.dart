import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAUserLocationRepresentation extends NSObject  {
  // 生成getters
  Future<bool> get_showsAccuracyRing() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAUserLocationRepresentation::get_showsAccuracyRing", {'refId': refId});
    return result;
  }
  
  Future<bool> get_showsHeadingIndicator() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAUserLocationRepresentation::get_showsHeadingIndicator", {'refId': refId});
    return result;
  }
  
  Future<double> get_lineWidth() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAUserLocationRepresentation::get_lineWidth", {'refId': refId});
    return result;
  }
  
  Future<bool> get_enablePulseAnnimation() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAUserLocationRepresentation::get_enablePulseAnnimation", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_showsAccuracyRing(bool showsAccuracyRing) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAUserLocationRepresentation::set_showsAccuracyRing', {'refId': refId, "showsAccuracyRing": showsAccuracyRing});
  
  
  }
  
  Future<void> set_showsHeadingIndicator(bool showsHeadingIndicator) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAUserLocationRepresentation::set_showsHeadingIndicator', {'refId': refId, "showsHeadingIndicator": showsHeadingIndicator});
  
  
  }
  
  Future<void> set_lineWidth(double lineWidth) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAUserLocationRepresentation::set_lineWidth', {'refId': refId, "lineWidth": lineWidth});
  
  
  }
  
  Future<void> set_enablePulseAnnimation(bool enablePulseAnnimation) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAUserLocationRepresentation::set_enablePulseAnnimation', {'refId': refId, "enablePulseAnnimation": enablePulseAnnimation});
  
  
  }
  

  // 生成方法们
  
}