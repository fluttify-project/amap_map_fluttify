import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAAnnotationView extends UIView  {
  // 生成getters
  Future<String> get_reuseIdentifier() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAAnnotationView::get_reuseIdentifier", {'refId': refId});
    return result;
  }
  
  Future<int> get_zIndex() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAAnnotationView::get_zIndex", {'refId': refId});
    return result;
  }
  
  Future<MAAnnotation> get_annotation() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAAnnotationView::get_annotation", {'refId': refId});
    return MAGroundOverlay()..refId = result;
  }
  
  Future<MACustomCalloutView> get_customCalloutView() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAAnnotationView::get_customCalloutView", {'refId': refId});
    return MACustomCalloutView()..refId = result;
  }
  
  Future<CGPoint> get_centerOffset() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAAnnotationView::get_centerOffset", {'refId': refId});
    return CGPoint()..refId = result;
  }
  
  Future<CGPoint> get_calloutOffset() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAAnnotationView::get_calloutOffset", {'refId': refId});
    return CGPoint()..refId = result;
  }
  
  Future<bool> get_enabled() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAAnnotationView::get_isEnabled", {'refId': refId});
    return result;
  }
  
  Future<bool> get_highlighted() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAAnnotationView::get_isHighlighted", {'refId': refId});
    return result;
  }
  
  Future<bool> get_selected() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAAnnotationView::get_isSelected", {'refId': refId});
    return result;
  }
  
  Future<bool> get_canShowCallout() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAAnnotationView::get_canShowCallout", {'refId': refId});
    return result;
  }
  
  Future<UIView> get_leftCalloutAccessoryView() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAAnnotationView::get_leftCalloutAccessoryView", {'refId': refId});
    return UIView()..refId = result;
  }
  
  Future<UIView> get_rightCalloutAccessoryView() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAAnnotationView::get_rightCalloutAccessoryView", {'refId': refId});
    return UIView()..refId = result;
  }
  
  Future<bool> get_draggable() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAAnnotationView::get_isDraggable", {'refId': refId});
    return result;
  }
  
  Future<MAAnnotationViewDragState> get_dragState() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAAnnotationView::get_dragState", {'refId': refId});
    return MAAnnotationViewDragState.values[result];
  }
  

  // 生成setters
  Future<void> set_zIndex(int zIndex) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotationView::set_zIndex', {'refId': refId, "zIndex": zIndex});
  
  
  }
  
  Future<void> set_annotation(MAAnnotation annotation) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotationView::set_annotation', {'refId': refId, "annotation": annotation.refId});
  
  
  }
  
  Future<void> set_customCalloutView(MACustomCalloutView customCalloutView) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotationView::set_customCalloutView', {'refId': refId, "customCalloutView": customCalloutView.refId});
  
  
  }
  
  Future<void> set_centerOffset(CGPoint centerOffset) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotationView::set_centerOffset', {'refId': refId, "centerOffset": centerOffset.refId});
  
  
  }
  
  Future<void> set_calloutOffset(CGPoint calloutOffset) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotationView::set_calloutOffset', {'refId': refId, "calloutOffset": calloutOffset.refId});
  
  
  }
  
  Future<void> set_enabled(bool enabled) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotationView::set_enabled', {'refId': refId, "enabled": enabled});
  
  
  }
  
  Future<void> set_highlighted(bool highlighted) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotationView::set_highlighted', {'refId': refId, "highlighted": highlighted});
  
  
  }
  
  Future<void> set_selected(bool selected) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotationView::set_selected', {'refId': refId, "selected": selected});
  
  
  }
  
  Future<void> set_canShowCallout(bool canShowCallout) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotationView::set_canShowCallout', {'refId': refId, "canShowCallout": canShowCallout});
  
  
  }
  
  Future<void> set_leftCalloutAccessoryView(UIView leftCalloutAccessoryView) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotationView::set_leftCalloutAccessoryView', {'refId': refId, "leftCalloutAccessoryView": leftCalloutAccessoryView.refId});
  
  
  }
  
  Future<void> set_rightCalloutAccessoryView(UIView rightCalloutAccessoryView) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotationView::set_rightCalloutAccessoryView', {'refId': refId, "rightCalloutAccessoryView": rightCalloutAccessoryView.refId});
  
  
  }
  
  Future<void> set_draggable(bool draggable) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotationView::set_draggable', {'refId': refId, "draggable": draggable});
  
  
  }
  
  Future<void> set_dragState(MAAnnotationViewDragState dragState) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotationView::set_dragState', {'refId': refId, "dragState": dragState.index});
  
  
  }
  

  // 生成方法们
  Future<void> setSelected(bool selected, bool animated) async {
    // 日志打印
    print('fluttify-dart: MAAnnotationView@$refId::setSelected([\'selected\':$selected, \'animated\':$animated])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotationView::setSelectedAnimated', {"selected": selected, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> prepareForReuse() async {
    // 日志打印
    print('fluttify-dart: MAAnnotationView@$refId::prepareForReuse([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotationView::prepareForReuse', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setDragState(MAAnnotationViewDragState newDragState, bool animated) async {
    // 日志打印
    print('fluttify-dart: MAAnnotationView@$refId::setDragState([\'animated\':$animated])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotationView::setDragStateAnimated', {"newDragState": newDragState.index, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}