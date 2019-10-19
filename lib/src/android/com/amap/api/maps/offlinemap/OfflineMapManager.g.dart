import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_offlinemap_OfflineMapManager extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<void> downloadByCityCode(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::downloadByCityCode([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::downloadByCityCode', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> downloadByCityName(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::downloadByCityName([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::downloadByCityName', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> downloadByProvinceName(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::downloadByProvinceName([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::downloadByProvinceName', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> remove(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::remove([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::remove', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<List<com_amap_api_maps_offlinemap_OfflineMapProvince>> getOfflineMapProvinceList() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::getOfflineMapProvinceList([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::getOfflineMapProvinceList', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.addAll((result as List).cast<int>().map((it) => com_amap_api_maps_offlinemap_OfflineMapProvince()..refId = it).toList());
      return (result as List).cast<int>().map((it) => com_amap_api_maps_offlinemap_OfflineMapProvince()..refId = it).toList();
    }
  }
  
  Future<com_amap_api_maps_offlinemap_OfflineMapCity> getItemByCityCode(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::getItemByCityCode([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::getItemByCityCode', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_maps_offlinemap_OfflineMapCity()..refId = result);
      return com_amap_api_maps_offlinemap_OfflineMapCity()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_offlinemap_OfflineMapCity> getItemByCityName(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::getItemByCityName([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::getItemByCityName', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_maps_offlinemap_OfflineMapCity()..refId = result);
      return com_amap_api_maps_offlinemap_OfflineMapCity()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_offlinemap_OfflineMapProvince> getItemByProvinceName(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::getItemByProvinceName([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::getItemByProvinceName', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_maps_offlinemap_OfflineMapProvince()..refId = result);
      return com_amap_api_maps_offlinemap_OfflineMapProvince()..refId = result;
    }
  }
  
  Future<List<com_amap_api_maps_offlinemap_OfflineMapCity>> getOfflineMapCityList() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::getOfflineMapCityList([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::getOfflineMapCityList', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.addAll((result as List).cast<int>().map((it) => com_amap_api_maps_offlinemap_OfflineMapCity()..refId = it).toList());
      return (result as List).cast<int>().map((it) => com_amap_api_maps_offlinemap_OfflineMapCity()..refId = it).toList();
    }
  }
  
  Future<List<com_amap_api_maps_offlinemap_OfflineMapCity>> getDownloadingCityList() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::getDownloadingCityList([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::getDownloadingCityList', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.addAll((result as List).cast<int>().map((it) => com_amap_api_maps_offlinemap_OfflineMapCity()..refId = it).toList());
      return (result as List).cast<int>().map((it) => com_amap_api_maps_offlinemap_OfflineMapCity()..refId = it).toList();
    }
  }
  
  Future<List<com_amap_api_maps_offlinemap_OfflineMapProvince>> getDownloadingProvinceList() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::getDownloadingProvinceList([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::getDownloadingProvinceList', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.addAll((result as List).cast<int>().map((it) => com_amap_api_maps_offlinemap_OfflineMapProvince()..refId = it).toList());
      return (result as List).cast<int>().map((it) => com_amap_api_maps_offlinemap_OfflineMapProvince()..refId = it).toList();
    }
  }
  
  Future<List<com_amap_api_maps_offlinemap_OfflineMapCity>> getDownloadOfflineMapCityList() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::getDownloadOfflineMapCityList([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::getDownloadOfflineMapCityList', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.addAll((result as List).cast<int>().map((it) => com_amap_api_maps_offlinemap_OfflineMapCity()..refId = it).toList());
      return (result as List).cast<int>().map((it) => com_amap_api_maps_offlinemap_OfflineMapCity()..refId = it).toList();
    }
  }
  
  Future<List<com_amap_api_maps_offlinemap_OfflineMapProvince>> getDownloadOfflineMapProvinceList() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::getDownloadOfflineMapProvinceList([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::getDownloadOfflineMapProvinceList', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.addAll((result as List).cast<int>().map((it) => com_amap_api_maps_offlinemap_OfflineMapProvince()..refId = it).toList());
      return (result as List).cast<int>().map((it) => com_amap_api_maps_offlinemap_OfflineMapProvince()..refId = it).toList();
    }
  }
  
  Future<void> updateOfflineCityByCode(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::updateOfflineCityByCode([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::updateOfflineCityByCode', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> updateOfflineCityByName(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::updateOfflineCityByName([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::updateOfflineCityByName', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> updateOfflineMapProvinceByName(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::updateOfflineMapProvinceByName([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::updateOfflineMapProvinceByName', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> restart() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::restart([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::restart', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> stop() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::stop([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::stop', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> pause() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::pause([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::pause', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> destroy() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::destroy([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::destroy', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setOnOfflineLoadedListener(com_amap_api_maps_offlinemap_OfflineMapManager_OfflineLoadedListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.offlinemap.OfflineMapManager@$refId::setOnOfflineLoadedListener([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.offlinemap.OfflineMapManager::setOnOfflineLoadedListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.offlinemap.OfflineMapManager::setOnOfflineLoadedListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.offlinemap.OfflineMapManager.OfflineLoadedListener::onVerifyComplete':
              // 日志打印
              print('fluttify-dart-callback: onVerifyComplete([])');
        
                // 调用回调方法
              var1?.onVerifyComplete();
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}