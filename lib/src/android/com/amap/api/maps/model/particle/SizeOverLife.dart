import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_particle_SizeOverLife extends com_autonavi_amap_mapcore_AbstractNativeInstance  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  Future<int> get_DEFAULT_SIZE() async {
    final result = await _channel.invokeMethod("com.amap.api.maps.model.particle.SizeOverLife::get_DEFAULT_SIZE", {'refId': refId});
    return result;
  }
  

  // 生成setters
  

  // 生成方法们
  Future<double> getSizeX(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.SizeOverLife@$refId::getSizeX([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.particle.SizeOverLife::getSizeX', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getSizeY(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.SizeOverLife@$refId::getSizeY([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.particle.SizeOverLife::getSizeY', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getSizeZ(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.SizeOverLife@$refId::getSizeZ([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.particle.SizeOverLife::getSizeZ', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}