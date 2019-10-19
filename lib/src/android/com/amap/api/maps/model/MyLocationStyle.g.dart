import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_MyLocationStyle extends java_lang_Object with android_os_Parcelable {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_maps_model_MyLocationStyle> myLocationIcon(com_amap_api_maps_model_BitmapDescriptor var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MyLocationStyle@$refId::myLocationIcon([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MyLocationStyle::myLocationIcon', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_maps_model_MyLocationStyle()..refId = result);
      return com_amap_api_maps_model_MyLocationStyle()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_MyLocationStyle> anchor(double var1, double var2) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MyLocationStyle@$refId::anchor([\'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MyLocationStyle::anchor', {"var1": var1, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_maps_model_MyLocationStyle()..refId = result);
      return com_amap_api_maps_model_MyLocationStyle()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_MyLocationStyle> radiusFillColor(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MyLocationStyle@$refId::radiusFillColor([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MyLocationStyle::radiusFillColor', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_maps_model_MyLocationStyle()..refId = result);
      return com_amap_api_maps_model_MyLocationStyle()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_MyLocationStyle> strokeColor(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MyLocationStyle@$refId::strokeColor([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MyLocationStyle::strokeColor', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_maps_model_MyLocationStyle()..refId = result);
      return com_amap_api_maps_model_MyLocationStyle()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_MyLocationStyle> strokeWidth(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MyLocationStyle@$refId::strokeWidth([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MyLocationStyle::strokeWidth', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_maps_model_MyLocationStyle()..refId = result);
      return com_amap_api_maps_model_MyLocationStyle()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_MyLocationStyle> myLocationType(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MyLocationStyle@$refId::myLocationType([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MyLocationStyle::myLocationType', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_maps_model_MyLocationStyle()..refId = result);
      return com_amap_api_maps_model_MyLocationStyle()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_MyLocationStyle> interval(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MyLocationStyle@$refId::interval([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MyLocationStyle::interval', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_maps_model_MyLocationStyle()..refId = result);
      return com_amap_api_maps_model_MyLocationStyle()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_MyLocationStyle> showMyLocation(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MyLocationStyle@$refId::showMyLocation([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MyLocationStyle::showMyLocation', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_maps_model_MyLocationStyle()..refId = result);
      return com_amap_api_maps_model_MyLocationStyle()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_BitmapDescriptor> getMyLocationIcon() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MyLocationStyle@$refId::getMyLocationIcon([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MyLocationStyle::getMyLocationIcon', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_maps_model_BitmapDescriptor()..refId = result);
      return com_amap_api_maps_model_BitmapDescriptor()..refId = result;
    }
  }
  
  Future<double> getAnchorU() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MyLocationStyle@$refId::getAnchorU([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MyLocationStyle::getAnchorU', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.MyLocationStyle@$refId::getAnchorV([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MyLocationStyle::getAnchorV', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getRadiusFillColor() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MyLocationStyle@$refId::getRadiusFillColor([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MyLocationStyle::getRadiusFillColor', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getStrokeColor() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MyLocationStyle@$refId::getStrokeColor([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MyLocationStyle::getStrokeColor', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<double> getStrokeWidth() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MyLocationStyle@$refId::getStrokeWidth([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MyLocationStyle::getStrokeWidth', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getMyLocationType() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MyLocationStyle@$refId::getMyLocationType([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MyLocationStyle::getMyLocationType', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getInterval() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MyLocationStyle@$refId::getInterval([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MyLocationStyle::getInterval', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isMyLocationShowing() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MyLocationStyle@$refId::isMyLocationShowing([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MyLocationStyle::isMyLocationShowing', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}