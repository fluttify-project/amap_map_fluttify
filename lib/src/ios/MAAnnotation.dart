import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin MAAnnotation on NSObject {
  Future<CLLocationCoordinate2D> get_coordinate() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAAnnotation::get_coordinate", {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }
  
  Future<String> get_title() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAAnnotation::get_title", {'refId': refId});
    return result;
  }
  
  Future<String> get_subtitle() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAAnnotation::get_subtitle", {'refId': refId});
    return result;
  }
  

  Future<void> set_title(String title) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotation::set_title', {'refId': refId, "title": title});
  
  
  }
  
  Future<void> set_subtitle(String subtitle) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotation::set_subtitle', {'refId': refId, "subtitle": subtitle});
  
  
  }
  

  Future<void> setCoordinate(CLLocationCoordinate2D newCoordinate) {}
  
}