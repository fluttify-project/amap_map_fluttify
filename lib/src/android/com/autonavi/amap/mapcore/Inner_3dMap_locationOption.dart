import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_Inner_3dMap_locationOption extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  static Future<String> getAPIKEY() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption::getAPIKEY([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::getAPIKEY', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isMockEnable() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::isMockEnable([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::isMockEnable', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setMockEnable(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::setMockEnable([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::setMockEnable', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::getInterval([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::getInterval', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_autonavi_amap_mapcore_Inner_3dMap_locationOption> setInterval(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::setInterval([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::setInterval', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_autonavi_amap_mapcore_Inner_3dMap_locationOption()..refId = result;
    }
  }
  
  Future<bool> isOnceLocation() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::isOnceLocation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::isOnceLocation', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_autonavi_amap_mapcore_Inner_3dMap_locationOption> setOnceLocation(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::setOnceLocation([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::setOnceLocation', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_autonavi_amap_mapcore_Inner_3dMap_locationOption()..refId = result;
    }
  }
  
  Future<bool> isNeedAddress() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::isNeedAddress([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::isNeedAddress', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_autonavi_amap_mapcore_Inner_3dMap_locationOption> setNeedAddress(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::setNeedAddress([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::setNeedAddress', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_autonavi_amap_mapcore_Inner_3dMap_locationOption()..refId = result;
    }
  }
  
  Future<bool> isWifiActiveScan() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::isWifiActiveScan([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::isWifiActiveScan', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setWifiActiveScan(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::setWifiActiveScan([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::setWifiActiveScan', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isWifiScan() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::isWifiScan([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::isWifiScan', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setWifiScan(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::setWifiScan([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::setWifiScan', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_autonavi_amap_mapcore_Inner_3dMap_locationOption_Inner_3dMap_Enum_LocationMode> getLocationMode() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::getLocationMode([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::getLocationMode', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_autonavi_amap_mapcore_Inner_3dMap_locationOption_Inner_3dMap_Enum_LocationMode.values[result];
    }
  }
  
  Future<com_autonavi_amap_mapcore_Inner_3dMap_locationOption_Inner_3dMap_Enum_LocationProtocol> getLocationProtocol() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::getLocationProtocol([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::getLocationProtocol', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_autonavi_amap_mapcore_Inner_3dMap_locationOption_Inner_3dMap_Enum_LocationProtocol.values[result];
    }
  }
  
  Future<com_autonavi_amap_mapcore_Inner_3dMap_locationOption> setLocationMode(com_autonavi_amap_mapcore_Inner_3dMap_locationOption_Inner_3dMap_Enum_LocationMode var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::setLocationMode([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::setLocationMode', {"var1": var1.index, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_autonavi_amap_mapcore_Inner_3dMap_locationOption()..refId = result;
    }
  }
  
  static Future<void> setLocationProtocol(com_autonavi_amap_mapcore_Inner_3dMap_locationOption_Inner_3dMap_Enum_LocationProtocol var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption::setLocationProtocol([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::setLocationProtocol', {"var0": var0.index});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isKillProcess() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::isKillProcess([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::isKillProcess', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_autonavi_amap_mapcore_Inner_3dMap_locationOption> setKillProcess(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::setKillProcess([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::setKillProcess', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_autonavi_amap_mapcore_Inner_3dMap_locationOption()..refId = result;
    }
  }
  
  Future<bool> isGpsFirst() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::isGpsFirst([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::isGpsFirst', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_autonavi_amap_mapcore_Inner_3dMap_locationOption> setGpsFirst(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::setGpsFirst([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::setGpsFirst', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_autonavi_amap_mapcore_Inner_3dMap_locationOption()..refId = result;
    }
  }
  
  Future<com_autonavi_amap_mapcore_Inner_3dMap_locationOption> clone() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::clone([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::clone', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_autonavi_amap_mapcore_Inner_3dMap_locationOption()..refId = result;
    }
  }
  
  Future<int> getHttpTimeOut() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::getHttpTimeOut([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::getHttpTimeOut', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setHttpTimeOut(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::setHttpTimeOut([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::setHttpTimeOut', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isOffset() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::isOffset([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::isOffset', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_autonavi_amap_mapcore_Inner_3dMap_locationOption> setOffset(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::setOffset([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::setOffset', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_autonavi_amap_mapcore_Inner_3dMap_locationOption()..refId = result;
    }
  }
  
  Future<bool> isLocationCacheEnable() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::isLocationCacheEnable([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::isLocationCacheEnable', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setLocationCacheEnable(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::setLocationCacheEnable([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::setLocationCacheEnable', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isOnceLocationLatest() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::isOnceLocationLatest([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::isOnceLocationLatest', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setOnceLocationLatest(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::setOnceLocationLatest([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::setOnceLocationLatest', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isSensorEnable() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::isSensorEnable([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::isSensorEnable', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setSensorEnable(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_locationOption@$refId::setSensorEnable([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_locationOption::setSensorEnable', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}