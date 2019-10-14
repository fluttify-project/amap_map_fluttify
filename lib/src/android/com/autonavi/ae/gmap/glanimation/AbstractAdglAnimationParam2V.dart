import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_ae_gmap_glanimation_AbstractAdglAnimationParam2V extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  Future<double> get_fromXValue() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V::get_fromXValue", {'refId': refId});
    return result;
  }
  
  Future<double> get_toXValue() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V::get_toXValue", {'refId': refId});
    return result;
  }
  
  Future<double> get_fromYValue() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V::get_fromYValue", {'refId': refId});
    return result;
  }
  
  Future<double> get_toYValue() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V::get_toYValue", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_fromXValue(double fromXValue) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V::set_fromXValue', {'refId': refId, "fromXValue": fromXValue});
  
  
  }
  
  Future<void> set_toXValue(double toXValue) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V::set_toXValue', {'refId': refId, "toXValue": toXValue});
  
  
  }
  
  Future<void> set_fromYValue(double fromYValue) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V::set_fromYValue', {'refId': refId, "fromYValue": fromYValue});
  
  
  }
  
  Future<void> set_toYValue(double toYValue) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V::set_toYValue', {'refId': refId, "toYValue": toYValue});
  
  
  }
  

  // 生成方法们
  Future<void> reset() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V@$refId::reset([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V::reset', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setFromValue(double var1, double var3) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V@$refId::setFromValue([\'var1\':$var1, \'var3\':$var3])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V::setFromValue', {"var1": var1, "var3": var3, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setToValue(double var1, double var3) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V@$refId::setToValue([\'var1\':$var1, \'var3\':$var3])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V::setToValue', {"var1": var1, "var3": var3, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getFromXValue() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V@$refId::getFromXValue([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V::getFromXValue', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getFromYValue() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V@$refId::getFromYValue([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V::getFromYValue', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getToXValue() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V@$refId::getToXValue([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V::getToXValue', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getToYValue() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V@$refId::getToYValue([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V::getToYValue', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getCurXValue() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V@$refId::getCurXValue([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V::getCurXValue', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getCurYValue() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V@$refId::getCurYValue([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V::getCurYValue', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> checkParam() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V@$refId::checkParam([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.glanimation.AbstractAdglAnimationParam2V::checkParam', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}