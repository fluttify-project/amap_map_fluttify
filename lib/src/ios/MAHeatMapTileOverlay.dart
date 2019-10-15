import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAHeatMapTileOverlay extends MATileOverlay  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  Future<List<MAHeatMapNode>> get_data() async {
    final result = await _channel.invokeMethod("MAHeatMapTileOverlay::get_data", {'refId': refId});
    return (result as List).cast<int>().map((it) => MAHeatMapNode()..refId = it).toList();
  }
  
  Future<int> get_radius() async {
    final result = await _channel.invokeMethod("MAHeatMapTileOverlay::get_radius", {'refId': refId});
    return result;
  }
  
  Future<double> get_opacity() async {
    final result = await _channel.invokeMethod("MAHeatMapTileOverlay::get_opacity", {'refId': refId});
    return result;
  }
  
  Future<MAHeatMapGradient> get_gradient() async {
    final result = await _channel.invokeMethod("MAHeatMapTileOverlay::get_gradient", {'refId': refId});
    return MAHeatMapGradient()..refId = result;
  }
  
  Future<bool> get_allowRetinaAdapting() async {
    final result = await _channel.invokeMethod("MAHeatMapTileOverlay::get_allowRetinaAdapting", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_data(List<MAHeatMapNode> data) async {
    await _channel.invokeMethod('MAHeatMapTileOverlay::set_data', {'refId': refId, "data": data.map((it) => it.refId).toList()});
  
  
  }
  
  Future<void> set_radius(int radius) async {
    await _channel.invokeMethod('MAHeatMapTileOverlay::set_radius', {'refId': refId, "radius": radius});
  
  
  }
  
  Future<void> set_opacity(double opacity) async {
    await _channel.invokeMethod('MAHeatMapTileOverlay::set_opacity', {'refId': refId, "opacity": opacity});
  
  
  }
  
  Future<void> set_gradient(MAHeatMapGradient gradient) async {
    await _channel.invokeMethod('MAHeatMapTileOverlay::set_gradient', {'refId': refId, "gradient": gradient.refId});
  
  
  }
  
  Future<void> set_allowRetinaAdapting(bool allowRetinaAdapting) async {
    await _channel.invokeMethod('MAHeatMapTileOverlay::set_allowRetinaAdapting', {'refId': refId, "allowRetinaAdapting": allowRetinaAdapting});
  
  
  }
  

  // 生成方法们
  
}