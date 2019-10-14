import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_GroundOverlayOptions extends java_lang_Object with android_os_Parcelable {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_maps_model_GroundOverlayOptions> image(com_amap_api_maps_model_BitmapDescriptor var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GroundOverlayOptions@$refId::image([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GroundOverlayOptions::image', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_GroundOverlayOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_GroundOverlayOptions> anchor(double var1, double var2) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GroundOverlayOptions@$refId::anchor([\'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GroundOverlayOptions::anchor', {"var1": var1, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_GroundOverlayOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_GroundOverlayOptions> position(com_amap_api_maps_model_LatLng var1, double var2) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GroundOverlayOptions@$refId::position([\'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GroundOverlayOptions::position', {"var1": var1.refId, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_GroundOverlayOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_GroundOverlayOptions> positionFromBounds(com_amap_api_maps_model_LatLngBounds var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GroundOverlayOptions@$refId::positionFromBounds([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GroundOverlayOptions::positionFromBounds', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_GroundOverlayOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_GroundOverlayOptions> bearing(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GroundOverlayOptions@$refId::bearing([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GroundOverlayOptions::bearing', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_GroundOverlayOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_GroundOverlayOptions> zIndex(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GroundOverlayOptions@$refId::zIndex([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GroundOverlayOptions::zIndex', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_GroundOverlayOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_GroundOverlayOptions> visible(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GroundOverlayOptions@$refId::visible([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GroundOverlayOptions::visible', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_GroundOverlayOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_GroundOverlayOptions> transparency(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GroundOverlayOptions@$refId::transparency([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GroundOverlayOptions::transparency', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_GroundOverlayOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_BitmapDescriptor> getImage() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GroundOverlayOptions@$refId::getImage([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GroundOverlayOptions::getImage', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_BitmapDescriptor()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_LatLng> getLocation() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GroundOverlayOptions@$refId::getLocation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GroundOverlayOptions::getLocation', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_LatLng()..refId = result;
    }
  }
  
  Future<double> getWidth() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GroundOverlayOptions@$refId::getWidth([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GroundOverlayOptions::getWidth', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getHeight() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GroundOverlayOptions@$refId::getHeight([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GroundOverlayOptions::getHeight', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_LatLngBounds> getBounds() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GroundOverlayOptions@$refId::getBounds([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GroundOverlayOptions::getBounds', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_LatLngBounds()..refId = result;
    }
  }
  
  Future<double> getBearing() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GroundOverlayOptions@$refId::getBearing([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GroundOverlayOptions::getBearing', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getZIndex() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GroundOverlayOptions@$refId::getZIndex([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GroundOverlayOptions::getZIndex', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getTransparency() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GroundOverlayOptions@$refId::getTransparency([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GroundOverlayOptions::getTransparency', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getAnchorU() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GroundOverlayOptions@$refId::getAnchorU([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GroundOverlayOptions::getAnchorU', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getAnchorV() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GroundOverlayOptions@$refId::getAnchorV([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GroundOverlayOptions::getAnchorV', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isVisible() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GroundOverlayOptions@$refId::isVisible([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GroundOverlayOptions::isVisible', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}