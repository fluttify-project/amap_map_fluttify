import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_Inner_3dMap_location extends android_location_Location  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<int> getGpsAccuracyStatus() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getGpsAccuracyStatus([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getGpsAccuracyStatus', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setGpsAccuracyStatus(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setGpsAccuracyStatus([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setGpsAccuracyStatus', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getLocationType() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getLocationType([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getLocationType', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setLocationType(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setLocationType([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setLocationType', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getLocationDetail() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getLocationDetail([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getLocationDetail', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setLocationDetail(String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setLocationDetail([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setLocationDetail', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getErrorCode() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getErrorCode([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getErrorCode', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setErrorCode(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setErrorCode([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setErrorCode', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getErrorInfo() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getErrorInfo([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getErrorInfo', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setErrorInfo(String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setErrorInfo([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setErrorInfo', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getCountry() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getCountry([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getCountry', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setCountry(String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setCountry([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setCountry', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getRoad() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getRoad([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getRoad', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setRoad(String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setRoad([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setRoad', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getAddress() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getAddress([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getAddress', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setAddress(String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setAddress([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setAddress', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getProvince() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getProvince([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getProvince', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setProvince(String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setProvince([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setProvince', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getCity() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getCity([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getCity', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setCity(String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setCity([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setCity', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getDistrict() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getDistrict([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getDistrict', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setDistrict(String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setDistrict([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setDistrict', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getCityCode() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getCityCode([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getCityCode', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setCityCode(String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setCityCode([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setCityCode', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getAdCode() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getAdCode([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getAdCode', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setAdCode(String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setAdCode([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setAdCode', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getPoiName() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getPoiName([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getPoiName', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setPoiName(String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setPoiName([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setPoiName', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getLatitude() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getLatitude([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getLatitude', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setLatitude(double var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setLatitude([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setLatitude', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getLongitude() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getLongitude([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getLongitude', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setLongitude(double var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setLongitude([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setLongitude', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getSatellites() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getSatellites([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getSatellites', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setSatellites(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setSatellites([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setSatellites', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getStreet() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getStreet([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getStreet', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setStreet(String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setStreet([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setStreet', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getStreetNum() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getStreetNum([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getStreetNum', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setNumber(String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setNumber([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setNumber', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setOffset(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setOffset([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setOffset', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::isOffset([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::isOffset', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getAoiName() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getAoiName([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getAoiName', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setAoiName(String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setAoiName([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setAoiName', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getBuildingId() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getBuildingId([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getBuildingId', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setBuildingId(String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setBuildingId([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setBuildingId', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getFloor() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getFloor([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getFloor', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setFloor(String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::setFloor([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::setFloor', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> toStr() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::toStr([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::toStr', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getAccuracy() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getAccuracy([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getAccuracy', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getBearing() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getBearing([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getBearing', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getAltitude() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getAltitude([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getAltitude', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getSpeed() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getSpeed([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getSpeed', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getProvider() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::getProvider([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::getProvider', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_autonavi_amap_mapcore_Inner_3dMap_location> clone() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.Inner_3dMap_location@$refId::clone([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.Inner_3dMap_location::clone', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_autonavi_amap_mapcore_Inner_3dMap_location()..refId = result;
    }
  }
  
}