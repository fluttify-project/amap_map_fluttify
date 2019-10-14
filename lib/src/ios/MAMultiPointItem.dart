import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAMultiPointItem extends NSObject with MAAnnotation, NSCopying {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  Future<CLLocationCoordinate2D> get_coordinate() async {
    final result = await _channel.invokeMethod("MAMultiPointItem::get_coordinate", {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }
  
  Future<String> get_customID() async {
    final result = await _channel.invokeMethod("MAMultiPointItem::get_customID", {'refId': refId});
    return result;
  }
  
  Future<String> get_title() async {
    final result = await _channel.invokeMethod("MAMultiPointItem::get_title", {'refId': refId});
    return result;
  }
  
  Future<String> get_subtitle() async {
    final result = await _channel.invokeMethod("MAMultiPointItem::get_subtitle", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_coordinate(CLLocationCoordinate2D coordinate) async {
    await _channel.invokeMethod('MAMultiPointItem::set_coordinate', {'refId': refId, "coordinate": coordinate.refId});
  
  
  }
  
  Future<void> set_customID(String customID) async {
    await _channel.invokeMethod('MAMultiPointItem::set_customID', {'refId': refId, "customID": customID});
  
  
  }
  
  Future<void> set_title(String title) async {
    await _channel.invokeMethod('MAMultiPointItem::set_title', {'refId': refId, "title": title});
  
  
  }
  
  Future<void> set_subtitle(String subtitle) async {
    await _channel.invokeMethod('MAMultiPointItem::set_subtitle', {'refId': refId, "subtitle": subtitle});
  
  
  }
  

  // 生成方法们
  
}