import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_UiSettings extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<void> setScaleControlsEnabled(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::setScaleControlsEnabled([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::setScaleControlsEnabled', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setZoomControlsEnabled(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::setZoomControlsEnabled([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::setZoomControlsEnabled', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setCompassEnabled(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::setCompassEnabled([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::setCompassEnabled', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setMyLocationButtonEnabled(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::setMyLocationButtonEnabled([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::setMyLocationButtonEnabled', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setScrollGesturesEnabled(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::setScrollGesturesEnabled([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::setScrollGesturesEnabled', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setZoomGesturesEnabled(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::setZoomGesturesEnabled([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::setZoomGesturesEnabled', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setTiltGesturesEnabled(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::setTiltGesturesEnabled([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::setTiltGesturesEnabled', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setRotateGesturesEnabled(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::setRotateGesturesEnabled([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::setRotateGesturesEnabled', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setAllGesturesEnabled(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::setAllGesturesEnabled([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::setAllGesturesEnabled', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setLogoPosition(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::setLogoPosition([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::setLogoPosition', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setZoomPosition(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::setZoomPosition([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::setZoomPosition', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getZoomPosition() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::getZoomPosition([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::getZoomPosition', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isScaleControlsEnabled() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::isScaleControlsEnabled([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::isScaleControlsEnabled', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isZoomControlsEnabled() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::isZoomControlsEnabled([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::isZoomControlsEnabled', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isCompassEnabled() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::isCompassEnabled([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::isCompassEnabled', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isMyLocationButtonEnabled() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::isMyLocationButtonEnabled([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::isMyLocationButtonEnabled', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isScrollGesturesEnabled() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::isScrollGesturesEnabled([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::isScrollGesturesEnabled', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isZoomGesturesEnabled() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::isZoomGesturesEnabled([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::isZoomGesturesEnabled', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isTiltGesturesEnabled() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::isTiltGesturesEnabled([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::isTiltGesturesEnabled', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isRotateGesturesEnabled() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::isRotateGesturesEnabled([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::isRotateGesturesEnabled', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getLogoPosition() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::getLogoPosition([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::getLogoPosition', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isIndoorSwitchEnabled() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::isIndoorSwitchEnabled([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::isIndoorSwitchEnabled', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setIndoorSwitchEnabled(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::setIndoorSwitchEnabled([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::setIndoorSwitchEnabled', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setLogoMarginRate(int var1, double var2) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::setLogoMarginRate([\'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::setLogoMarginRate', {"var1": var1, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getLogoMarginRate(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::getLogoMarginRate([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::getLogoMarginRate', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setLogoLeftMargin(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::setLogoLeftMargin([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::setLogoLeftMargin', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setLogoBottomMargin(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::setLogoBottomMargin([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::setLogoBottomMargin', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setZoomInByScreenCenter(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::setZoomInByScreenCenter([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::setZoomInByScreenCenter', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setGestureScaleByMapCenter(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::setGestureScaleByMapCenter([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::setGestureScaleByMapCenter', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isGestureScaleByMapCenter() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.UiSettings@$refId::isGestureScaleByMapCenter([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.UiSettings::isGestureScaleByMapCenter', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}