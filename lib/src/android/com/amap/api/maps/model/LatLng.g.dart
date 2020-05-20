// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class com_amap_api_maps_model_LatLng extends java_lang_Object with android_os_Parcelable {
  //region constants
  static const String name__ = 'com.amap.api.maps.model.LatLng';

  
  //endregion

  //region creators
  static Future<com_amap_api_maps_model_LatLng> create__double__double(double var1, double var3) async {
    final int refId = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('ObjectFactory::createcom_amap_api_maps_model_LatLng__double__double', {"var1": var1, "var3": var3});
    final object = com_amap_api_maps_model_LatLng()..refId = refId..tag__ = 'amap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<com_amap_api_maps_model_LatLng> create__double__double__boolean(double var1, double var3, bool var5) async {
    final int refId = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('ObjectFactory::createcom_amap_api_maps_model_LatLng__double__double__boolean', {"var1": var1, "var3": var3, "var5": var5});
    final object = com_amap_api_maps_model_LatLng()..refId = refId..tag__ = 'amap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<com_amap_api_maps_model_LatLng>> create_batch__double__double(List<double> var1, List<double> var3) async {
    if (var1.length != var3.length) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('ObjectFactory::create_batchcom_amap_api_maps_model_LatLng__double__double', [for (int __i__ = 0; __i__ < var1.length; __i__++) {"var1": var1[__i__], "var3": var3[__i__]}]);
  
    final List<com_amap_api_maps_model_LatLng> typedResult = resultBatch.map((result) => com_amap_api_maps_model_LatLng()..refId = result..tag__ = 'amap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  static Future<List<com_amap_api_maps_model_LatLng>> create_batch__double__double__boolean(List<double> var1, List<double> var3, List<bool> var5) async {
    if (var1.length != var3.length || var3.length != var5.length) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('ObjectFactory::create_batchcom_amap_api_maps_model_LatLng__double__double__boolean', [for (int __i__ = 0; __i__ < var1.length; __i__++) {"var1": var1[__i__], "var3": var3[__i__], "var5": var5[__i__]}]);
  
    final List<com_amap_api_maps_model_LatLng> typedResult = resultBatch.map((result) => com_amap_api_maps_model_LatLng()..refId = result..tag__ = 'amap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<double> get_latitude() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.amap.api.maps.model.LatLng::get_latitude", {'refId': refId});
  
    return __result__;
  }
  
  Future<double> get_longitude() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.amap.api.maps.model.LatLng::get_longitude", {'refId': refId});
  
    return __result__;
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<com_amap_api_maps_model_LatLng> clone() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.LatLng@$refId::clone([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.LatLng::clone', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_amap_api_maps_model_LatLng()..refId = __result__..tag__ = 'amap_map_fluttify';
      kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  //endregion
}

extension com_amap_api_maps_model_LatLng_Batch on List<com_amap_api_maps_model_LatLng> {
  //region getters
  Future<List<double>> get_latitude_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.amap.api.maps.model.LatLng::get_latitude_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<double>> get_longitude_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.amap.api.maps.model.LatLng::get_longitude_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<com_amap_api_maps_model_LatLng>> clone_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.LatLng::clone_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_amap_api_maps_model_LatLng()..refId = __result__..tag__ = 'amap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  //endregion
}