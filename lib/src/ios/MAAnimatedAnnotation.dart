import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAAnimatedAnnotation extends MAPointAnnotation with MAAnimatableAnnotation {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  Future<double> get_movingDirection() async {
    final result = await _channel.invokeMethod("MAAnimatedAnnotation::get_movingDirection", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_movingDirection(double movingDirection) async {
    await _channel.invokeMethod('MAAnimatedAnnotation::set_movingDirection', {'refId': refId, "movingDirection": movingDirection});
  
  
  }
  

  // 生成方法们
  Future<MAAnnotationMoveAnimation> addMoveAnimationWithKeyCoordinates(List<CLLocationCoordinate2D> coordinates, int count, double duration, String name, void completeCallback(bool isFinished)) async {
    // 日志打印
    print('fluttify-dart: MAAnimatedAnnotation@$refId::addMoveAnimationWithKeyCoordinates([\'count\':$count, \'duration\':$duration, \'name\':$name])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAAnimatedAnnotation::addMoveAnimationWithKeyCoordinatesCountwithDurationwithNamecompleteCallback', {"coordinates": coordinates.map((it) => it.refId).toList(), "count": count, "duration": duration, "name": name, "refId": refId});
  
  
    // 接受原生回调
    MethodChannel('MAAnimatedAnnotation::addMoveAnimationWithKeyCoordinatesCountwithDurationwithNamecompleteCallback::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'MAAnimatedAnnotation::addMoveAnimationWithKeyCoordinates_Callback::completeCallback':
              // 日志打印
        
        
                // 调用回调方法
              completeCallback(args['isFinished']);
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAAnnotationMoveAnimation()..refId = result;
    }
  }
  
  Future<void> setNeedsStart() async {
    // 日志打印
    print('fluttify-dart: MAAnimatedAnnotation@$refId::setNeedsStart([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAAnimatedAnnotation::setNeedsStart', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}