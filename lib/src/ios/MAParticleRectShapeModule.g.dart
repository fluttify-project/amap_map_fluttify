import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAParticleRectShapeModule extends NSObject with MAParticleShapeModule {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<MAParticleRectShapeModule> initWithLeftToprightbottomuseRatio(double left, double top, double right, double bottom, bool isUseRatio) async {
    // 日志打印
    print('fluttify-dart: MAParticleRectShapeModule@$refId::initWithLeft([\'left\':$left, \'top\':$top, \'right\':$right, \'bottom\':$bottom, \'isUseRatio\':$isUseRatio])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAParticleRectShapeModule::initWithLeftToprightbottomuseRatio', {"left": left, "top": top, "right": right, "bottom": bottom, "isUseRatio": isUseRatio, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(MAParticleRectShapeModule()..refId = result);
      return MAParticleRectShapeModule()..refId = result;
    }
  }
  
}