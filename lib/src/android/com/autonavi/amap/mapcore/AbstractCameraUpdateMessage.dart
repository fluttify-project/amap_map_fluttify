import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_AbstractCameraUpdateMessage extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  Future<com_autonavi_amap_mapcore_AbstractCameraUpdateMessage_Type> get_nowType() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_nowType", {'refId': refId});
    return com_autonavi_amap_mapcore_AbstractCameraUpdateMessage_Type.values[result];
  }
  
  Future<double> get_xPixel() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_xPixel", {'refId': refId});
    return result;
  }
  
  Future<double> get_yPixel() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_yPixel", {'refId': refId});
    return result;
  }
  
  Future<double> get_amount() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_amount", {'refId': refId});
    return result;
  }
  
  Future<com_amap_api_maps_model_CameraPosition> get_cameraPosition() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_cameraPosition", {'refId': refId});
    return com_amap_api_maps_model_CameraPosition()..refId = result;
  }
  
  Future<com_amap_api_maps_model_LatLngBounds> get_bounds() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_bounds", {'refId': refId});
    return com_amap_api_maps_model_LatLngBounds()..refId = result;
  }
  
  Future<android_graphics_Point> get_focus() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_focus", {'refId': refId});
    return android_graphics_Point()..refId = result;
  }
  
  Future<double> get_zoom() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_zoom", {'refId': refId});
    return result;
  }
  
  Future<double> get_tilt() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_tilt", {'refId': refId});
    return result;
  }
  
  Future<double> get_bearing() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_bearing", {'refId': refId});
    return result;
  }
  
  Future<android_graphics_Point> get_geoPoint() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_geoPoint", {'refId': refId});
    return android_graphics_Point()..refId = result;
  }
  
  Future<bool> get_isUseAnchor() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_isUseAnchor", {'refId': refId});
    return result;
  }
  
  Future<int> get_anchorX() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_anchorX", {'refId': refId});
    return result;
  }
  
  Future<int> get_anchorY() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_anchorY", {'refId': refId});
    return result;
  }
  
  Future<bool> get_isChangeFinished() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_isChangeFinished", {'refId': refId});
    return result;
  }
  
  Future<com_autonavi_amap_mapcore_MapConfig> get_mapConfig() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_mapConfig", {'refId': refId});
    return com_autonavi_amap_mapcore_MapConfig()..refId = result;
  }
  
  Future<int> get_paddingLeft() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_paddingLeft", {'refId': refId});
    return result;
  }
  
  Future<int> get_paddingRight() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_paddingRight", {'refId': refId});
    return result;
  }
  
  Future<int> get_paddingTop() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_paddingTop", {'refId': refId});
    return result;
  }
  
  Future<int> get_paddingBottom() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_paddingBottom", {'refId': refId});
    return result;
  }
  
  Future<int> get_mDuration() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_mDuration", {'refId': refId});
    return result;
  }
  
  Future<int> get_width() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_width", {'refId': refId});
    return result;
  }
  
  Future<int> get_height() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::get_height", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_nowType(com_autonavi_amap_mapcore_AbstractCameraUpdateMessage_Type nowType) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_nowType', {'refId': refId, "nowType": nowType.index});
  
  
  }
  
  Future<void> set_xPixel(double xPixel) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_xPixel', {'refId': refId, "xPixel": xPixel});
  
  
  }
  
  Future<void> set_yPixel(double yPixel) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_yPixel', {'refId': refId, "yPixel": yPixel});
  
  
  }
  
  Future<void> set_amount(double amount) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_amount', {'refId': refId, "amount": amount});
  
  
  }
  
  Future<void> set_cameraPosition(com_amap_api_maps_model_CameraPosition cameraPosition) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_cameraPosition', {'refId': refId, "cameraPosition": cameraPosition.refId});
  
  
  }
  
  Future<void> set_bounds(com_amap_api_maps_model_LatLngBounds bounds) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_bounds', {'refId': refId, "bounds": bounds.refId});
  
  
  }
  
  Future<void> set_focus(android_graphics_Point focus) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_focus', {'refId': refId, "focus": focus.refId});
  
  
  }
  
  Future<void> set_zoom(double zoom) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_zoom', {'refId': refId, "zoom": zoom});
  
  
  }
  
  Future<void> set_tilt(double tilt) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_tilt', {'refId': refId, "tilt": tilt});
  
  
  }
  
  Future<void> set_bearing(double bearing) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_bearing', {'refId': refId, "bearing": bearing});
  
  
  }
  
  Future<void> set_geoPoint(android_graphics_Point geoPoint) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_geoPoint', {'refId': refId, "geoPoint": geoPoint.refId});
  
  
  }
  
  Future<void> set_isUseAnchor(bool isUseAnchor) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_isUseAnchor', {'refId': refId, "isUseAnchor": isUseAnchor});
  
  
  }
  
  Future<void> set_anchorX(int anchorX) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_anchorX', {'refId': refId, "anchorX": anchorX});
  
  
  }
  
  Future<void> set_anchorY(int anchorY) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_anchorY', {'refId': refId, "anchorY": anchorY});
  
  
  }
  
  Future<void> set_isChangeFinished(bool isChangeFinished) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_isChangeFinished', {'refId': refId, "isChangeFinished": isChangeFinished});
  
  
  }
  
  Future<void> set_mapConfig(com_autonavi_amap_mapcore_MapConfig mapConfig) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_mapConfig', {'refId': refId, "mapConfig": mapConfig.refId});
  
  
  }
  
  Future<void> set_paddingLeft(int paddingLeft) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_paddingLeft', {'refId': refId, "paddingLeft": paddingLeft});
  
  
  }
  
  Future<void> set_paddingRight(int paddingRight) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_paddingRight', {'refId': refId, "paddingRight": paddingRight});
  
  
  }
  
  Future<void> set_paddingTop(int paddingTop) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_paddingTop', {'refId': refId, "paddingTop": paddingTop});
  
  
  }
  
  Future<void> set_paddingBottom(int paddingBottom) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_paddingBottom', {'refId': refId, "paddingBottom": paddingBottom});
  
  
  }
  
  Future<void> set_mCallback(com_amap_api_maps_AMap_CancelableCallback mCallback) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_mCallback', {'refId': refId, "mCallback": mCallback.refId});
  
    MethodChannel('com.amap.api.maps.AMap.CancelableCallback::Callback')
      .setMethodCallHandler((methodCall) async {
        final args = methodCall.arguments as Map;
        // final refId = args['callerRefId'] as int;
        // if (refId != this.refId) return;
  
        switch (methodCall.method) {
          case 'Callback::com.amap.api.maps.AMap.CancelableCallback::onFinish':
            // 日志打印
            print('fluttify-dart-callback: onFinish([])');
        
              // 调用回调方法
            mCallback?.onFinish();
            break;
          case 'Callback::com.amap.api.maps.AMap.CancelableCallback::onCancel':
            // 日志打印
            print('fluttify-dart-callback: onCancel([])');
        
              // 调用回调方法
            mCallback?.onCancel();
            break;
          default:
            break;
        }
      });
  }
  
  Future<void> set_mDuration(int mDuration) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_mDuration', {'refId': refId, "mDuration": mDuration});
  
  
  }
  
  Future<void> set_width(int width) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_width', {'refId': refId, "width": width});
  
  
  }
  
  Future<void> set_height(int height) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::set_height', {'refId': refId, "height": height});
  
  
  }
  

  // 生成方法们
  Future<void> runCameraUpdate(com_autonavi_ae_gmap_GLMapState var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AbstractCameraUpdateMessage@$refId::runCameraUpdate([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::runCameraUpdate', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> mergeCameraUpdateDelegate(com_autonavi_amap_mapcore_AbstractCameraUpdateMessage var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AbstractCameraUpdateMessage@$refId::mergeCameraUpdateDelegate([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::mergeCameraUpdateDelegate', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> generateMapAnimation(com_autonavi_ae_gmap_GLMapEngine var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.AbstractCameraUpdateMessage@$refId::generateMapAnimation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.AbstractCameraUpdateMessage::generateMapAnimation', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}