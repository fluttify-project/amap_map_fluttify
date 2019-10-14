import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_SwipeDismissView extends android_widget_RelativeLayout  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<void> setCallback(com_amap_api_maps_WearMapView_OnDismissCallback var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.SwipeDismissView@$refId::setCallback([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.SwipeDismissView::setCallback', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.SwipeDismissView::setCallback::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.WearMapView.OnDismissCallback::onDismiss':
              // 日志打印
              print('fluttify-dart-callback: onDismiss([])');
        
                // 调用回调方法
              var1?.onDismiss();
              break;
            case 'Callback::com.amap.api.maps.WearMapView.OnDismissCallback::onNotifySwipe':
              // 日志打印
              print('fluttify-dart-callback: onNotifySwipe([])');
        
                // 调用回调方法
              var1?.onNotifySwipe();
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