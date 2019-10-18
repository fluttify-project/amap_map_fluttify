import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAMapView extends UIView  {
  // 生成getters
  Future<MAMapType> get_mapType({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_mapType", {'refId': refId});
    return MAMapType.values[result];
  }
  
  Future<CLLocationCoordinate2D> get_centerCoordinate({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_centerCoordinate", {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }
  
  Future<MACoordinateRegion> get_region({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_region", {'refId': refId});
    return MACoordinateRegion()..refId = result;
  }
  
  Future<MAMapRect> get_visibleMapRect({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_visibleMapRect", {'refId': refId});
    return MAMapRect()..refId = result;
  }
  
  Future<MACoordinateRegion> get_limitRegion({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_limitRegion", {'refId': refId});
    return MACoordinateRegion()..refId = result;
  }
  
  Future<MAMapRect> get_limitMapRect({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_limitMapRect", {'refId': refId});
    return MAMapRect()..refId = result;
  }
  
  Future<double> get_zoomLevel({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_zoomLevel", {'refId': refId});
    return result;
  }
  
  Future<double> get_minZoomLevel({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_minZoomLevel", {'refId': refId});
    return result;
  }
  
  Future<double> get_maxZoomLevel({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_maxZoomLevel", {'refId': refId});
    return result;
  }
  
  Future<double> get_rotationDegree({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_rotationDegree", {'refId': refId});
    return result;
  }
  
  Future<double> get_cameraDegree({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_cameraDegree", {'refId': refId});
    return result;
  }
  
  Future<bool> get_zoomingInPivotsAroundAnchorPoint({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_zoomingInPivotsAroundAnchorPoint", {'refId': refId});
    return result;
  }
  
  Future<bool> get_zoomEnabled({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_isZoomEnabled", {'refId': refId});
    return result;
  }
  
  Future<bool> get_scrollEnabled({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_isScrollEnabled", {'refId': refId});
    return result;
  }
  
  Future<bool> get_rotateEnabled({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_isRotateEnabled", {'refId': refId});
    return result;
  }
  
  Future<bool> get_rotateCameraEnabled({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_isRotateCameraEnabled", {'refId': refId});
    return result;
  }
  
  Future<bool> get_skyModelEnable({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_isSkyModelEnabled", {'refId': refId});
    return result;
  }
  
  Future<bool> get_showsBuildings({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_isShowsBuildings", {'refId': refId});
    return result;
  }
  
  Future<bool> get_showsLabels({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_isShowsLabels", {'refId': refId});
    return result;
  }
  
  Future<bool> get_showTraffic({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_isShowTraffic", {'refId': refId});
    return result;
  }
  
  Future<double> get_trafficRatio({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_trafficRatio", {'refId': refId});
    return result;
  }
  
  Future<bool> get_touchPOIEnabled({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_touchPOIEnabled", {'refId': refId});
    return result;
  }
  
  Future<bool> get_showsCompass({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_showsCompass", {'refId': refId});
    return result;
  }
  
  Future<CGPoint> get_compassOrigin({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_compassOrigin", {'refId': refId});
    return CGPoint()..refId = result;
  }
  
  Future<bool> get_showsScale({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_showsScale", {'refId': refId});
    return result;
  }
  
  Future<CGPoint> get_scaleOrigin({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_scaleOrigin", {'refId': refId});
    return CGPoint()..refId = result;
  }
  
  Future<CGPoint> get_logoCenter({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_logoCenter", {'refId': refId});
    return CGPoint()..refId = result;
  }
  
  Future<double> get_metersPerPointForCurrentZoom({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_metersPerPointForCurrentZoom", {'refId': refId});
    return result;
  }
  
  Future<bool> get_isAbroad({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_isAbroad", {'refId': refId});
    return result;
  }
  
  Future<int> get_maxRenderFrame({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_maxRenderFrame", {'refId': refId});
    return result;
  }
  
  Future<bool> get_isAllowDecreaseFrame({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_isAllowDecreaseFrame", {'refId': refId});
    return result;
  }
  
  Future<bool> get_openGLESDisabled({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_openGLESDisabled", {'refId': refId});
    return result;
  }
  
  Future<CGPoint> get_screenAnchor({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_screenAnchor", {'refId': refId});
    return CGPoint()..refId = result;
  }
  
  Future<List> get_annotations({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_annotations", {'refId': refId});
    return (result as List).cast<int>().map((it) => NSObject()..refId = it).toList();
  }
  
  Future<List> get_selectedAnnotations({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_selectedAnnotations", {'refId': refId});
    return (result as List).cast<int>().map((it) => NSObject()..refId = it).toList();
  }
  
  Future<CGRect> get_annotationVisibleRect({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_annotationVisibleRect", {'refId': refId});
    return CGRect()..refId = result;
  }
  
  Future<bool> get_allowsAnnotationViewSorting({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_allowsAnnotationViewSorting", {'refId': refId});
    return result;
  }
  
  Future<bool> get_showsUserLocation({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_showsUserLocation", {'refId': refId});
    return result;
  }
  
  Future<MAUserLocation> get_userLocation({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_userLocation", {'refId': refId});
    return MAUserLocation()..refId = result;
  }
  
  Future<bool> get_customizeUserLocationAccuracyCircleRepresentation({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_customizeUserLocationAccuracyCircleRepresentation", {'refId': refId});
    return result;
  }
  
  Future<MACircle> get_userLocationAccuracyCircle({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_userLocationAccuracyCircle", {'refId': refId});
    return MACircle()..refId = result;
  }
  
  Future<MAUserTrackingMode> get_userTrackingMode({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_userTrackingMode", {'refId': refId});
    return MAUserTrackingMode.values[result];
  }
  
  Future<bool> get_userLocationVisible({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_isUserLocationVisible", {'refId': refId});
    return result;
  }
  
  Future<double> get_distanceFilter({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_distanceFilter", {'refId': refId});
    return result;
  }
  
  Future<bool> get_pausesLocationUpdatesAutomatically({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_pausesLocationUpdatesAutomatically", {'refId': refId});
    return result;
  }
  
  Future<bool> get_allowsBackgroundLocationUpdates({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_allowsBackgroundLocationUpdates", {'refId': refId});
    return result;
  }
  
  Future<List> get_overlays({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_overlays", {'refId': refId});
    return (result as List).cast<int>().map((it) => NSObject()..refId = it).toList();
  }
  
  Future<bool> get_showsIndoorMap({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_isShowsIndoorMap", {'refId': refId});
    return result;
  }
  
  Future<bool> get_showsIndoorMapControl({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_isShowsIndoorMapControl", {'refId': refId});
    return result;
  }
  
  Future<bool> get_customMapStyleEnabled({bool viewChannel = true}) async {
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod("MAMapView::get_customMapStyleEnabled", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_delegate(MAMapViewDelegate delegate, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_delegate', {'refId': refId, "delegate": delegate.refId});
  
    MethodChannel('MAMapViewDelegate::Callback')
      .setMethodCallHandler((methodCall) async {
        final args = methodCall.arguments as Map;
        // final refId = args['callerRefId'] as int;
        // if (refId != this.refId) return;
  
        switch (methodCall.method) {
          case 'Callback::MAMapViewDelegate::mapViewRegionChanged':
            // 日志打印
            print('fluttify-dart-callback: mapViewRegionChanged([])');
        
              // 调用回调方法
            delegate?.mapViewRegionChanged(MAMapView()..refId = (args['mapView']));
            break;
          case 'Callback::MAMapViewDelegate::mapViewRegionWillChangeAnimated':
            // 日志打印
            print('fluttify-dart-callback: mapViewRegionWillChangeAnimated([\'animated\':$args[animated]])');
        
              // 调用回调方法
            delegate?.mapViewRegionWillChangeAnimated(MAMapView()..refId = (args['mapView']), args['animated']);
            break;
          case 'Callback::MAMapViewDelegate::mapViewRegionDidChangeAnimated':
            // 日志打印
            print('fluttify-dart-callback: mapViewRegionDidChangeAnimated([\'animated\':$args[animated]])');
        
              // 调用回调方法
            delegate?.mapViewRegionDidChangeAnimated(MAMapView()..refId = (args['mapView']), args['animated']);
            break;
          case 'Callback::MAMapViewDelegate::mapViewMapWillMoveByUser':
            // 日志打印
            print('fluttify-dart-callback: mapViewMapWillMoveByUser([\'wasUserAction\':$args[wasUserAction]])');
        
              // 调用回调方法
            delegate?.mapViewMapWillMoveByUser(MAMapView()..refId = (args['mapView']), args['wasUserAction']);
            break;
          case 'Callback::MAMapViewDelegate::mapViewMapDidMoveByUser':
            // 日志打印
            print('fluttify-dart-callback: mapViewMapDidMoveByUser([\'wasUserAction\':$args[wasUserAction]])');
        
              // 调用回调方法
            delegate?.mapViewMapDidMoveByUser(MAMapView()..refId = (args['mapView']), args['wasUserAction']);
            break;
          case 'Callback::MAMapViewDelegate::mapViewMapWillZoomByUser':
            // 日志打印
            print('fluttify-dart-callback: mapViewMapWillZoomByUser([\'wasUserAction\':$args[wasUserAction]])');
        
              // 调用回调方法
            delegate?.mapViewMapWillZoomByUser(MAMapView()..refId = (args['mapView']), args['wasUserAction']);
            break;
          case 'Callback::MAMapViewDelegate::mapViewMapDidZoomByUser':
            // 日志打印
            print('fluttify-dart-callback: mapViewMapDidZoomByUser([\'wasUserAction\':$args[wasUserAction]])');
        
              // 调用回调方法
            delegate?.mapViewMapDidZoomByUser(MAMapView()..refId = (args['mapView']), args['wasUserAction']);
            break;
          case 'Callback::MAMapViewDelegate::mapViewWillStartLoadingMap':
            // 日志打印
            print('fluttify-dart-callback: mapViewWillStartLoadingMap([])');
        
              // 调用回调方法
            delegate?.mapViewWillStartLoadingMap(MAMapView()..refId = (args['mapView']));
            break;
          case 'Callback::MAMapViewDelegate::mapViewDidFinishLoadingMap':
            // 日志打印
            print('fluttify-dart-callback: mapViewDidFinishLoadingMap([])');
        
              // 调用回调方法
            delegate?.mapViewDidFinishLoadingMap(MAMapView()..refId = (args['mapView']));
            break;
          case 'Callback::MAMapViewDelegate::mapViewDidFailLoadingMapWithError':
            // 日志打印
            print('fluttify-dart-callback: mapViewDidFailLoadingMapWithError([])');
        
              // 调用回调方法
            delegate?.mapViewDidFailLoadingMapWithError(MAMapView()..refId = (args['mapView']), NSError()..refId = (args['error']));
            break;
          case 'Callback::MAMapViewDelegate::mapViewViewForAnnotation':
            // 日志打印
            print('fluttify-dart-callback: mapViewViewForAnnotation([])');
        
              // 调用回调方法
            delegate?.mapViewViewForAnnotation(MAMapView()..refId = (args['mapView']), MAGroundOverlay()..refId = (args['annotation']));
            break;
          case 'Callback::MAMapViewDelegate::mapViewDidAddAnnotationViews':
            // 日志打印
            print('fluttify-dart-callback: mapViewDidAddAnnotationViews([])');
        
              // 调用回调方法
            delegate?.mapViewDidAddAnnotationViews(MAMapView()..refId = (args['mapView']), (args['views'] as List).cast<int>().map((it) => NSObject()..refId = it).toList());
            break;
          case 'Callback::MAMapViewDelegate::mapViewDidSelectAnnotationView':
            // 日志打印
            print('fluttify-dart-callback: mapViewDidSelectAnnotationView([])');
        
              // 调用回调方法
            delegate?.mapViewDidSelectAnnotationView(MAMapView()..refId = (args['mapView']), MAAnnotationView()..refId = (args['view']));
            break;
          case 'Callback::MAMapViewDelegate::mapViewDidDeselectAnnotationView':
            // 日志打印
            print('fluttify-dart-callback: mapViewDidDeselectAnnotationView([])');
        
              // 调用回调方法
            delegate?.mapViewDidDeselectAnnotationView(MAMapView()..refId = (args['mapView']), MAAnnotationView()..refId = (args['view']));
            break;
          case 'Callback::MAMapViewDelegate::mapViewWillStartLocatingUser':
            // 日志打印
            print('fluttify-dart-callback: mapViewWillStartLocatingUser([])');
        
              // 调用回调方法
            delegate?.mapViewWillStartLocatingUser(MAMapView()..refId = (args['mapView']));
            break;
          case 'Callback::MAMapViewDelegate::mapViewDidStopLocatingUser':
            // 日志打印
            print('fluttify-dart-callback: mapViewDidStopLocatingUser([])');
        
              // 调用回调方法
            delegate?.mapViewDidStopLocatingUser(MAMapView()..refId = (args['mapView']));
            break;
          case 'Callback::MAMapViewDelegate::mapViewDidUpdateUserLocationupdatingLocation':
            // 日志打印
            print('fluttify-dart-callback: mapViewDidUpdateUserLocationupdatingLocation([\'updatingLocation\':$args[updatingLocation]])');
        
              // 调用回调方法
            delegate?.mapViewDidUpdateUserLocationupdatingLocation(MAMapView()..refId = (args['mapView']), MAUserLocation()..refId = (args['userLocation']), args['updatingLocation']);
            break;
          case 'Callback::MAMapViewDelegate::mapViewRequireLocationAuth':
            // 日志打印
            print('fluttify-dart-callback: mapViewRequireLocationAuth([])');
        
              // 调用回调方法
            delegate?.mapViewRequireLocationAuth(CLLocationManager()..refId = (args['locationManager']));
            break;
          case 'Callback::MAMapViewDelegate::mapViewDidFailToLocateUserWithError':
            // 日志打印
            print('fluttify-dart-callback: mapViewDidFailToLocateUserWithError([])');
        
              // 调用回调方法
            delegate?.mapViewDidFailToLocateUserWithError(MAMapView()..refId = (args['mapView']), NSError()..refId = (args['error']));
            break;
          case 'Callback::MAMapViewDelegate::mapViewAnnotationViewdidChangeDragStatefromOldState':
            // 日志打印
            print('fluttify-dart-callback: mapViewAnnotationViewdidChangeDragStatefromOldState([])');
        
              // 调用回调方法
            delegate?.mapViewAnnotationViewdidChangeDragStatefromOldState(MAMapView()..refId = (args['mapView']), MAAnnotationView()..refId = (args['view']), MAAnnotationViewDragState.values[(args['newState'])], MAAnnotationViewDragState.values[(args['oldState'])]);
            break;
          case 'Callback::MAMapViewDelegate::mapViewRendererForOverlay':
            // 日志打印
            print('fluttify-dart-callback: mapViewRendererForOverlay([])');
        
              // 调用回调方法
            delegate?.mapViewRendererForOverlay(MAMapView()..refId = (args['mapView']), MAGroundOverlay()..refId = (args['overlay']));
            break;
          case 'Callback::MAMapViewDelegate::mapViewDidAddOverlayRenderers':
            // 日志打印
            print('fluttify-dart-callback: mapViewDidAddOverlayRenderers([])');
        
              // 调用回调方法
            delegate?.mapViewDidAddOverlayRenderers(MAMapView()..refId = (args['mapView']), (args['overlayRenderers'] as List).cast<int>().map((it) => NSObject()..refId = it).toList());
            break;
          case 'Callback::MAMapViewDelegate::mapViewAnnotationViewcalloutAccessoryControlTapped':
            // 日志打印
            print('fluttify-dart-callback: mapViewAnnotationViewcalloutAccessoryControlTapped([])');
        
              // 调用回调方法
            delegate?.mapViewAnnotationViewcalloutAccessoryControlTapped(MAMapView()..refId = (args['mapView']), MAAnnotationView()..refId = (args['view']), UIControl()..refId = (args['control']));
            break;
          case 'Callback::MAMapViewDelegate::mapViewDidAnnotationViewCalloutTapped':
            // 日志打印
            print('fluttify-dart-callback: mapViewDidAnnotationViewCalloutTapped([])');
        
              // 调用回调方法
            delegate?.mapViewDidAnnotationViewCalloutTapped(MAMapView()..refId = (args['mapView']), MAAnnotationView()..refId = (args['view']));
            break;
          case 'Callback::MAMapViewDelegate::mapViewDidAnnotationViewTapped':
            // 日志打印
            print('fluttify-dart-callback: mapViewDidAnnotationViewTapped([])');
        
              // 调用回调方法
            delegate?.mapViewDidAnnotationViewTapped(MAMapView()..refId = (args['mapView']), MAAnnotationView()..refId = (args['view']));
            break;
          case 'Callback::MAMapViewDelegate::mapViewDidChangeUserTrackingModeanimated':
            // 日志打印
            print('fluttify-dart-callback: mapViewDidChangeUserTrackingModeanimated([\'animated\':$args[animated]])');
        
              // 调用回调方法
            delegate?.mapViewDidChangeUserTrackingModeanimated(MAMapView()..refId = (args['mapView']), MAUserTrackingMode.values[(args['mode'])], args['animated']);
            break;
          case 'Callback::MAMapViewDelegate::mapViewDidChangeOpenGLESDisabled':
            // 日志打印
            print('fluttify-dart-callback: mapViewDidChangeOpenGLESDisabled([\'openGLESDisabled\':$args[openGLESDisabled]])');
        
              // 调用回调方法
            delegate?.mapViewDidChangeOpenGLESDisabled(MAMapView()..refId = (args['mapView']), args['openGLESDisabled']);
            break;
          case 'Callback::MAMapViewDelegate::mapViewDidTouchPois':
            // 日志打印
            print('fluttify-dart-callback: mapViewDidTouchPois([])');
        
              // 调用回调方法
            delegate?.mapViewDidTouchPois(MAMapView()..refId = (args['mapView']), (args['pois'] as List).cast<int>().map((it) => NSObject()..refId = it).toList());
            break;
          case 'Callback::MAMapViewDelegate::mapViewDidSingleTappedAtCoordinate':
            // 日志打印
            print('fluttify-dart-callback: mapViewDidSingleTappedAtCoordinate([])');
        
              // 调用回调方法
            delegate?.mapViewDidSingleTappedAtCoordinate(MAMapView()..refId = (args['mapView']), CLLocationCoordinate2D()..refId = (args['coordinate']));
            break;
          case 'Callback::MAMapViewDelegate::mapViewDidLongPressedAtCoordinate':
            // 日志打印
            print('fluttify-dart-callback: mapViewDidLongPressedAtCoordinate([])');
        
              // 调用回调方法
            delegate?.mapViewDidLongPressedAtCoordinate(MAMapView()..refId = (args['mapView']), CLLocationCoordinate2D()..refId = (args['coordinate']));
            break;
          case 'Callback::MAMapViewDelegate::mapInitComplete':
            // 日志打印
            print('fluttify-dart-callback: mapInitComplete([])');
        
              // 调用回调方法
            delegate?.mapInitComplete(MAMapView()..refId = (args['mapView']));
            break;
          case 'Callback::MAMapViewDelegate::mapViewDidIndoorMapShowed':
            // 日志打印
            print('fluttify-dart-callback: mapViewDidIndoorMapShowed([])');
        
              // 调用回调方法
            delegate?.mapViewDidIndoorMapShowed(MAMapView()..refId = (args['mapView']), MAIndoorInfo()..refId = (args['indoorInfo']));
            break;
          case 'Callback::MAMapViewDelegate::mapViewDidIndoorMapFloorIndexChanged':
            // 日志打印
            print('fluttify-dart-callback: mapViewDidIndoorMapFloorIndexChanged([])');
        
              // 调用回调方法
            delegate?.mapViewDidIndoorMapFloorIndexChanged(MAMapView()..refId = (args['mapView']), MAIndoorInfo()..refId = (args['indoorInfo']));
            break;
          case 'Callback::MAMapViewDelegate::mapViewDidIndoorMapHidden':
            // 日志打印
            print('fluttify-dart-callback: mapViewDidIndoorMapHidden([])');
        
              // 调用回调方法
            delegate?.mapViewDidIndoorMapHidden(MAMapView()..refId = (args['mapView']), MAIndoorInfo()..refId = (args['indoorInfo']));
            break;
          case 'Callback::MAMapViewDelegate::offlineDataWillReload':
            // 日志打印
            print('fluttify-dart-callback: offlineDataWillReload([])');
        
              // 调用回调方法
            delegate?.offlineDataWillReload(MAMapView()..refId = (args['mapView']));
            break;
          case 'Callback::MAMapViewDelegate::offlineDataDidReload':
            // 日志打印
            print('fluttify-dart-callback: offlineDataDidReload([])');
        
              // 调用回调方法
            delegate?.offlineDataDidReload(MAMapView()..refId = (args['mapView']));
            break;
          default:
            break;
        }
      });
  }
  
  Future<void> set_mapType(MAMapType mapType, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_mapType', {'refId': refId, "mapType": mapType.index});
  
  
  }
  
  Future<void> set_centerCoordinate(CLLocationCoordinate2D centerCoordinate, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_centerCoordinate', {'refId': refId, "centerCoordinate": centerCoordinate.refId});
  
  
  }
  
  Future<void> set_region(MACoordinateRegion region, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_region', {'refId': refId, "region": region.refId});
  
  
  }
  
  Future<void> set_visibleMapRect(MAMapRect visibleMapRect, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_visibleMapRect', {'refId': refId, "visibleMapRect": visibleMapRect.refId});
  
  
  }
  
  Future<void> set_limitRegion(MACoordinateRegion limitRegion, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_limitRegion', {'refId': refId, "limitRegion": limitRegion.refId});
  
  
  }
  
  Future<void> set_limitMapRect(MAMapRect limitMapRect, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_limitMapRect', {'refId': refId, "limitMapRect": limitMapRect.refId});
  
  
  }
  
  Future<void> set_zoomLevel(double zoomLevel, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_zoomLevel', {'refId': refId, "zoomLevel": zoomLevel});
  
  
  }
  
  Future<void> set_minZoomLevel(double minZoomLevel, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_minZoomLevel', {'refId': refId, "minZoomLevel": minZoomLevel});
  
  
  }
  
  Future<void> set_maxZoomLevel(double maxZoomLevel, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_maxZoomLevel', {'refId': refId, "maxZoomLevel": maxZoomLevel});
  
  
  }
  
  Future<void> set_rotationDegree(double rotationDegree, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_rotationDegree', {'refId': refId, "rotationDegree": rotationDegree});
  
  
  }
  
  Future<void> set_cameraDegree(double cameraDegree, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_cameraDegree', {'refId': refId, "cameraDegree": cameraDegree});
  
  
  }
  
  Future<void> set_zoomingInPivotsAroundAnchorPoint(bool zoomingInPivotsAroundAnchorPoint, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_zoomingInPivotsAroundAnchorPoint', {'refId': refId, "zoomingInPivotsAroundAnchorPoint": zoomingInPivotsAroundAnchorPoint});
  
  
  }
  
  Future<void> set_zoomEnabled(bool zoomEnabled, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_zoomEnabled', {'refId': refId, "zoomEnabled": zoomEnabled});
  
  
  }
  
  Future<void> set_scrollEnabled(bool scrollEnabled, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_scrollEnabled', {'refId': refId, "scrollEnabled": scrollEnabled});
  
  
  }
  
  Future<void> set_rotateEnabled(bool rotateEnabled, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_rotateEnabled', {'refId': refId, "rotateEnabled": rotateEnabled});
  
  
  }
  
  Future<void> set_rotateCameraEnabled(bool rotateCameraEnabled, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_rotateCameraEnabled', {'refId': refId, "rotateCameraEnabled": rotateCameraEnabled});
  
  
  }
  
  Future<void> set_skyModelEnable(bool skyModelEnable, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_skyModelEnable', {'refId': refId, "skyModelEnable": skyModelEnable});
  
  
  }
  
  Future<void> set_showsBuildings(bool showsBuildings, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_showsBuildings', {'refId': refId, "showsBuildings": showsBuildings});
  
  
  }
  
  Future<void> set_showsLabels(bool showsLabels, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_showsLabels', {'refId': refId, "showsLabels": showsLabels});
  
  
  }
  
  Future<void> set_showTraffic(bool showTraffic, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_showTraffic', {'refId': refId, "showTraffic": showTraffic});
  
  
  }
  
  Future<void> set_trafficRatio(double trafficRatio, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_trafficRatio', {'refId': refId, "trafficRatio": trafficRatio});
  
  
  }
  
  Future<void> set_touchPOIEnabled(bool touchPOIEnabled, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_touchPOIEnabled', {'refId': refId, "touchPOIEnabled": touchPOIEnabled});
  
  
  }
  
  Future<void> set_showsCompass(bool showsCompass, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_showsCompass', {'refId': refId, "showsCompass": showsCompass});
  
  
  }
  
  Future<void> set_compassOrigin(CGPoint compassOrigin, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_compassOrigin', {'refId': refId, "compassOrigin": compassOrigin.refId});
  
  
  }
  
  Future<void> set_showsScale(bool showsScale, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_showsScale', {'refId': refId, "showsScale": showsScale});
  
  
  }
  
  Future<void> set_scaleOrigin(CGPoint scaleOrigin, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_scaleOrigin', {'refId': refId, "scaleOrigin": scaleOrigin.refId});
  
  
  }
  
  Future<void> set_logoCenter(CGPoint logoCenter, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_logoCenter', {'refId': refId, "logoCenter": logoCenter.refId});
  
  
  }
  
  Future<void> set_maxRenderFrame(int maxRenderFrame, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_maxRenderFrame', {'refId': refId, "maxRenderFrame": maxRenderFrame});
  
  
  }
  
  Future<void> set_isAllowDecreaseFrame(bool isAllowDecreaseFrame, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_isAllowDecreaseFrame', {'refId': refId, "isAllowDecreaseFrame": isAllowDecreaseFrame});
  
  
  }
  
  Future<void> set_openGLESDisabled(bool openGLESDisabled, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_openGLESDisabled', {'refId': refId, "openGLESDisabled": openGLESDisabled});
  
  
  }
  
  Future<void> set_screenAnchor(CGPoint screenAnchor, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_screenAnchor', {'refId': refId, "screenAnchor": screenAnchor.refId});
  
  
  }
  
  Future<void> set_selectedAnnotations(List selectedAnnotations, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_selectedAnnotations', {'refId': refId, "selectedAnnotations": selectedAnnotations.map((it) => it.refId).toList()});
  
  
  }
  
  Future<void> set_allowsAnnotationViewSorting(bool allowsAnnotationViewSorting, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_allowsAnnotationViewSorting', {'refId': refId, "allowsAnnotationViewSorting": allowsAnnotationViewSorting});
  
  
  }
  
  Future<void> set_showsUserLocation(bool showsUserLocation, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_showsUserLocation', {'refId': refId, "showsUserLocation": showsUserLocation});
  
  
  }
  
  Future<void> set_customizeUserLocationAccuracyCircleRepresentation(bool customizeUserLocationAccuracyCircleRepresentation, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_customizeUserLocationAccuracyCircleRepresentation', {'refId': refId, "customizeUserLocationAccuracyCircleRepresentation": customizeUserLocationAccuracyCircleRepresentation});
  
  
  }
  
  Future<void> set_userTrackingMode(MAUserTrackingMode userTrackingMode, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_userTrackingMode', {'refId': refId, "userTrackingMode": userTrackingMode.index});
  
  
  }
  
  Future<void> set_distanceFilter(double distanceFilter, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_distanceFilter', {'refId': refId, "distanceFilter": distanceFilter});
  
  
  }
  
  Future<void> set_pausesLocationUpdatesAutomatically(bool pausesLocationUpdatesAutomatically, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_pausesLocationUpdatesAutomatically', {'refId': refId, "pausesLocationUpdatesAutomatically": pausesLocationUpdatesAutomatically});
  
  
  }
  
  Future<void> set_allowsBackgroundLocationUpdates(bool allowsBackgroundLocationUpdates, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_allowsBackgroundLocationUpdates', {'refId': refId, "allowsBackgroundLocationUpdates": allowsBackgroundLocationUpdates});
  
  
  }
  
  Future<void> set_showsIndoorMap(bool showsIndoorMap, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_showsIndoorMap', {'refId': refId, "showsIndoorMap": showsIndoorMap});
  
  
  }
  
  Future<void> set_showsIndoorMapControl(bool showsIndoorMapControl, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_showsIndoorMapControl', {'refId': refId, "showsIndoorMapControl": showsIndoorMapControl});
  
  
  }
  
  Future<void> set_customMapStyleEnabled(bool customMapStyleEnabled, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::set_customMapStyleEnabled', {'refId': refId, "customMapStyleEnabled": customMapStyleEnabled});
  
  
  }
  

  // 生成方法们
  Future<void> setRegionAnimated(MACoordinateRegion region, bool animated, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setRegion([\'animated\':$animated])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::setRegionAnimated', {"region": region.refId, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<MACoordinateRegion> regionThatFits(MACoordinateRegion region, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::regionThatFits([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::regionThatFits', {"region": region.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MACoordinateRegion()..refId = result;
    }
  }
  
  Future<void> setVisibleMapRectAnimated(MAMapRect mapRect, bool animated, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setVisibleMapRect([\'animated\':$animated])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::setVisibleMapRectAnimated', {"mapRect": mapRect.refId, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<MAMapRect> mapRectThatFits(MAMapRect mapRect, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::mapRectThatFits([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::mapRectThatFits', {"mapRect": mapRect.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAMapRect()..refId = result;
    }
  }
  
  Future<MAMapRect> mapRectThatFitsEdgePadding(MAMapRect mapRect, UIEdgeInsets insets, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::mapRectThatFits([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::mapRectThatFitsEdgePadding', {"mapRect": mapRect.refId, "insets": insets.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAMapRect()..refId = result;
    }
  }
  
  Future<void> setVisibleMapRectEdgePaddinganimated(MAMapRect mapRect, UIEdgeInsets insets, bool animated, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setVisibleMapRect([\'animated\':$animated])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::setVisibleMapRectEdgePaddinganimated', {"mapRect": mapRect.refId, "insets": insets.refId, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setCenterCoordinateAnimated(CLLocationCoordinate2D coordinate, bool animated, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setCenterCoordinate([\'animated\':$animated])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::setCenterCoordinateAnimated', {"coordinate": coordinate.refId, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setZoomLevelAnimated(double zoomLevel, bool animated, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setZoomLevel([\'zoomLevel\':$zoomLevel, \'animated\':$animated])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::setZoomLevelAnimated', {"zoomLevel": zoomLevel, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setZoomLevelAtPivotanimated(double zoomLevel, CGPoint pivot, bool animated, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setZoomLevel([\'zoomLevel\':$zoomLevel, \'animated\':$animated])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::setZoomLevelAtPivotanimated', {"zoomLevel": zoomLevel, "pivot": pivot.refId, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setRotationDegreeAnimatedduration(double rotationDegree, bool animated, double duration, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setRotationDegree([\'rotationDegree\':$rotationDegree, \'animated\':$animated, \'duration\':$duration])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::setRotationDegreeAnimatedduration', {"rotationDegree": rotationDegree, "animated": animated, "duration": duration, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setCameraDegreeAnimatedduration(double cameraDegree, bool animated, double duration, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setCameraDegree([\'cameraDegree\':$cameraDegree, \'animated\':$animated, \'duration\':$duration])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::setCameraDegreeAnimatedduration', {"cameraDegree": cameraDegree, "animated": animated, "duration": duration, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<MAMapStatus> getMapStatus({bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::getMapStatus([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::getMapStatus', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAMapStatus()..refId = result;
    }
  }
  
  Future<void> setMapStatusAnimated(MAMapStatus status, bool animated, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setMapStatus([\'animated\':$animated])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::setMapStatusAnimated', {"status": status.refId, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setMapStatusAnimatedduration(MAMapStatus status, bool animated, double duration, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setMapStatus([\'animated\':$animated, \'duration\':$duration])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::setMapStatusAnimatedduration', {"status": status.refId, "animated": animated, "duration": duration, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> metersPerPointForZoomLevel(double zoomLevel, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::metersPerPointForZoomLevel([\'zoomLevel\':$zoomLevel])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::metersPerPointForZoomLevel', {"zoomLevel": zoomLevel, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<CGPoint> convertCoordinateToPointToView(CLLocationCoordinate2D coordinate, UIView view, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::convertCoordinate([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::convertCoordinateToPointToView', {"coordinate": coordinate.refId, "view": view.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return CGPoint()..refId = result;
    }
  }
  
  Future<CLLocationCoordinate2D> convertPointToCoordinateFromView(CGPoint point, UIView view, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::convertPoint([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::convertPointToCoordinateFromView', {"point": point.refId, "view": view.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return CLLocationCoordinate2D()..refId = result;
    }
  }
  
  Future<CGRect> convertRegionToRectToView(MACoordinateRegion region, UIView view, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::convertRegion([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::convertRegionToRectToView', {"region": region.refId, "view": view.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return CGRect()..refId = result;
    }
  }
  
  Future<MACoordinateRegion> convertRectToRegionFromView(CGRect rect, UIView view, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::convertRect([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::convertRectToRegionFromView', {"rect": rect.refId, "view": view.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MACoordinateRegion()..refId = result;
    }
  }
  
  Future<void> reloadMap({bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::reloadMap([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::reloadMap', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> clearDisk({bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::clearDisk([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::clearDisk', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> reloadInternalTexture({bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::reloadInternalTexture([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::reloadInternalTexture', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> mapContentApprovalNumber({bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::mapContentApprovalNumber([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::mapContentApprovalNumber', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> satelliteImageApprovalNumber({bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::satelliteImageApprovalNumber([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::satelliteImageApprovalNumber', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> forceRefresh({bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::forceRefresh([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::forceRefresh', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> addAnnotation(MAAnnotation annotation, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::addAnnotation([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::addAnnotation', {"annotation": annotation.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> addAnnotations(List<NSObject> annotations, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::addAnnotations([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::addAnnotations', {"annotations": annotations.map((it) => it.refId).toList(), "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> removeAnnotation(MAAnnotation annotation, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::removeAnnotation([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::removeAnnotation', {"annotation": annotation.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> removeAnnotations(List<NSObject> annotations, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::removeAnnotations([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::removeAnnotations', {"annotations": annotations.map((it) => it.refId).toList(), "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<MAAnnotationView> viewForAnnotation(MAAnnotation annotation, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::viewForAnnotation([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::viewForAnnotation', {"annotation": annotation.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAAnnotationView()..refId = result;
    }
  }
  
  Future<MAAnnotationView> dequeueReusableAnnotationViewWithIdentifier(String identifier, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::dequeueReusableAnnotationViewWithIdentifier([\'identifier\':$identifier])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::dequeueReusableAnnotationViewWithIdentifier', {"identifier": identifier, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAAnnotationView()..refId = result;
    }
  }
  
  Future<void> selectAnnotationAnimated(MAAnnotation annotation, bool animated, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::selectAnnotation([\'animated\':$animated])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::selectAnnotationAnimated', {"annotation": annotation.refId, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> deselectAnnotationAnimated(MAAnnotation annotation, bool animated, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::deselectAnnotation([\'animated\':$animated])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::deselectAnnotationAnimated', {"annotation": annotation.refId, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> showAnnotationsAnimated(List<NSObject> annotations, bool animated, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::showAnnotations([\'animated\':$animated])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::showAnnotationsAnimated', {"annotations": annotations.map((it) => it.refId).toList(), "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> showAnnotationsEdgePaddinganimated(List<NSObject> annotations, UIEdgeInsets insets, bool animated, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::showAnnotations([\'animated\':$animated])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::showAnnotationsEdgePaddinganimated', {"annotations": annotations.map((it) => it.refId).toList(), "insets": insets.refId, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setUserTrackingModeAnimated(MAUserTrackingMode mode, bool animated, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setUserTrackingMode([\'animated\':$animated])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::setUserTrackingModeAnimated', {"mode": mode.index, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> updateUserLocationRepresentation(MAUserLocationRepresentation representation, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::updateUserLocationRepresentation([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::updateUserLocationRepresentation', {"representation": representation.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<List> overlaysInLevel(MAOverlayLevel level, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::overlaysInLevel([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::overlaysInLevel', {"level": level.index, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return (result as List).cast<int>().map((it) => NSObject()..refId = it).toList();
    }
  }
  
  Future<void> addOverlay(MAOverlay overlay, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::addOverlay([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::addOverlay', {"overlay": overlay.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> addOverlays(List<NSObject> overlays, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::addOverlays([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::addOverlays', {"overlays": overlays.map((it) => it.refId).toList(), "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> addOverlayLevel(MAOverlay overlay, MAOverlayLevel level, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::addOverlay([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::addOverlayLevel', {"overlay": overlay.refId, "level": level.index, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> addOverlaysLevel(List<NSObject> overlays, MAOverlayLevel level, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::addOverlays([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::addOverlaysLevel', {"overlays": overlays.map((it) => it.refId).toList(), "level": level.index, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> removeOverlay(MAOverlay overlay, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::removeOverlay([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::removeOverlay', {"overlay": overlay.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> removeOverlays(List<NSObject> overlays, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::removeOverlays([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::removeOverlays', {"overlays": overlays.map((it) => it.refId).toList(), "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> insertOverlayAtIndexlevel(MAOverlay overlay, int index, MAOverlayLevel level, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::insertOverlay([\'index\':$index])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::insertOverlayAtIndexlevel', {"overlay": overlay.refId, "index": index, "level": level.index, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> insertOverlayAboveOverlay(MAOverlay overlay, MAOverlay sibling, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::insertOverlay([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::insertOverlayAboveOverlay', {"overlay": overlay.refId, "sibling": sibling.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> insertOverlayBelowOverlay(MAOverlay overlay, MAOverlay sibling, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::insertOverlay([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::insertOverlayBelowOverlay', {"overlay": overlay.refId, "sibling": sibling.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> insertOverlayAtIndex(MAOverlay overlay, int index, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::insertOverlay([\'index\':$index])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::insertOverlayAtIndex', {"overlay": overlay.refId, "index": index, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> exchangeOverlayAtIndexWithOverlayAtIndex(int index1, int index2, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::exchangeOverlayAtIndex([\'index1\':$index1, \'index2\':$index2])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::exchangeOverlayAtIndexWithOverlayAtIndex', {"index1": index1, "index2": index2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> exchangeOverlayAtIndexWithOverlayAtIndexatLevel(int index1, int index2, MAOverlayLevel level, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::exchangeOverlayAtIndex([\'index1\':$index1, \'index2\':$index2])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::exchangeOverlayAtIndexWithOverlayAtIndexatLevel', {"index1": index1, "index2": index2, "level": level.index, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> exchangeOverlayWithOverlay(MAOverlay overlay1, MAOverlay overlay2, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::exchangeOverlay([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::exchangeOverlayWithOverlay', {"overlay1": overlay1.refId, "overlay2": overlay2.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<MAOverlayRenderer> rendererForOverlay(MAOverlay overlay, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::rendererForOverlay([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::rendererForOverlay', {"overlay": overlay.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAOverlayRenderer()..refId = result;
    }
  }
  
  Future<void> showOverlaysAnimated(List<NSObject> overlays, bool animated, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::showOverlays([\'animated\':$animated])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::showOverlaysAnimated', {"overlays": overlays.map((it) => it.refId).toList(), "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> showOverlaysEdgePaddinganimated(List<NSObject> overlays, UIEdgeInsets insets, bool animated, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::showOverlays([\'animated\':$animated])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::showOverlaysEdgePaddinganimated', {"overlays": overlays.map((it) => it.refId).toList(), "insets": insets.refId, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setIndoorMapControlOrigin(CGPoint origin, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setIndoorMapControlOrigin([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::setIndoorMapControlOrigin', {"origin": origin.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setCurrentIndoorMapFloorIndex(int floorIndex, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setCurrentIndoorMapFloorIndex([\'floorIndex\':$floorIndex])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::setCurrentIndoorMapFloorIndex', {"floorIndex": floorIndex, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> clearIndoorMapCache({bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::clearIndoorMapCache([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::clearIndoorMapCache', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setCustomMapStyleOptions(MAMapCustomStyleOptions styleOptions, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setCustomMapStyleOptions([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/MAMapView' : 'me.yohom/amap_map_fluttify').invokeMethod('MAMapView::setCustomMapStyleOptions', {"styleOptions": styleOptions.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}