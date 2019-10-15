import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAMapView extends UIView  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify/MAMapView');

  // 生成getters
  Future<MAMapType> get_mapType() async {
    final result = await _channel.invokeMethod("MAMapView::get_mapType", {'refId': refId});
    return MAMapType.values[result];
  }
  
  Future<CLLocationCoordinate2D> get_centerCoordinate() async {
    final result = await _channel.invokeMethod("MAMapView::get_centerCoordinate", {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }
  
  Future<MACoordinateRegion> get_region() async {
    final result = await _channel.invokeMethod("MAMapView::get_region", {'refId': refId});
    return MACoordinateRegion()..refId = result;
  }
  
  Future<MAMapRect> get_visibleMapRect() async {
    final result = await _channel.invokeMethod("MAMapView::get_visibleMapRect", {'refId': refId});
    return MAMapRect()..refId = result;
  }
  
  Future<MACoordinateRegion> get_limitRegion() async {
    final result = await _channel.invokeMethod("MAMapView::get_limitRegion", {'refId': refId});
    return MACoordinateRegion()..refId = result;
  }
  
  Future<MAMapRect> get_limitMapRect() async {
    final result = await _channel.invokeMethod("MAMapView::get_limitMapRect", {'refId': refId});
    return MAMapRect()..refId = result;
  }
  
  Future<double> get_zoomLevel() async {
    final result = await _channel.invokeMethod("MAMapView::get_zoomLevel", {'refId': refId});
    return result;
  }
  
  Future<double> get_minZoomLevel() async {
    final result = await _channel.invokeMethod("MAMapView::get_minZoomLevel", {'refId': refId});
    return result;
  }
  
  Future<double> get_maxZoomLevel() async {
    final result = await _channel.invokeMethod("MAMapView::get_maxZoomLevel", {'refId': refId});
    return result;
  }
  
  Future<double> get_rotationDegree() async {
    final result = await _channel.invokeMethod("MAMapView::get_rotationDegree", {'refId': refId});
    return result;
  }
  
  Future<double> get_cameraDegree() async {
    final result = await _channel.invokeMethod("MAMapView::get_cameraDegree", {'refId': refId});
    return result;
  }
  
  Future<bool> get_zoomingInPivotsAroundAnchorPoint() async {
    final result = await _channel.invokeMethod("MAMapView::get_zoomingInPivotsAroundAnchorPoint", {'refId': refId});
    return result;
  }
  
  Future<bool> get_zoomEnabled() async {
    final result = await _channel.invokeMethod("MAMapView::get_isZoomEnabled", {'refId': refId});
    return result;
  }
  
  Future<bool> get_scrollEnabled() async {
    final result = await _channel.invokeMethod("MAMapView::get_isScrollEnabled", {'refId': refId});
    return result;
  }
  
  Future<bool> get_rotateEnabled() async {
    final result = await _channel.invokeMethod("MAMapView::get_isRotateEnabled", {'refId': refId});
    return result;
  }
  
  Future<bool> get_rotateCameraEnabled() async {
    final result = await _channel.invokeMethod("MAMapView::get_isRotateCameraEnabled", {'refId': refId});
    return result;
  }
  
  Future<bool> get_skyModelEnable() async {
    final result = await _channel.invokeMethod("MAMapView::get_isSkyModelEnabled", {'refId': refId});
    return result;
  }
  
  Future<bool> get_showsBuildings() async {
    final result = await _channel.invokeMethod("MAMapView::get_isShowsBuildings", {'refId': refId});
    return result;
  }
  
  Future<bool> get_showsLabels() async {
    final result = await _channel.invokeMethod("MAMapView::get_isShowsLabels", {'refId': refId});
    return result;
  }
  
  Future<bool> get_showTraffic() async {
    final result = await _channel.invokeMethod("MAMapView::get_isShowTraffic", {'refId': refId});
    return result;
  }
  
  Future<double> get_trafficRatio() async {
    final result = await _channel.invokeMethod("MAMapView::get_trafficRatio", {'refId': refId});
    return result;
  }
  
  Future<bool> get_touchPOIEnabled() async {
    final result = await _channel.invokeMethod("MAMapView::get_touchPOIEnabled", {'refId': refId});
    return result;
  }
  
  Future<bool> get_showsCompass() async {
    final result = await _channel.invokeMethod("MAMapView::get_showsCompass", {'refId': refId});
    return result;
  }
  
  Future<CGPoint> get_compassOrigin() async {
    final result = await _channel.invokeMethod("MAMapView::get_compassOrigin", {'refId': refId});
    return CGPoint()..refId = result;
  }
  
  Future<bool> get_showsScale() async {
    final result = await _channel.invokeMethod("MAMapView::get_showsScale", {'refId': refId});
    return result;
  }
  
  Future<CGPoint> get_scaleOrigin() async {
    final result = await _channel.invokeMethod("MAMapView::get_scaleOrigin", {'refId': refId});
    return CGPoint()..refId = result;
  }
  
  Future<CGPoint> get_logoCenter() async {
    final result = await _channel.invokeMethod("MAMapView::get_logoCenter", {'refId': refId});
    return CGPoint()..refId = result;
  }
  
  Future<double> get_metersPerPointForCurrentZoom() async {
    final result = await _channel.invokeMethod("MAMapView::get_metersPerPointForCurrentZoom", {'refId': refId});
    return result;
  }
  
  Future<bool> get_isAbroad() async {
    final result = await _channel.invokeMethod("MAMapView::get_isAbroad", {'refId': refId});
    return result;
  }
  
  Future<int> get_maxRenderFrame() async {
    final result = await _channel.invokeMethod("MAMapView::get_maxRenderFrame", {'refId': refId});
    return result;
  }
  
  Future<bool> get_isAllowDecreaseFrame() async {
    final result = await _channel.invokeMethod("MAMapView::get_isAllowDecreaseFrame", {'refId': refId});
    return result;
  }
  
  Future<bool> get_openGLESDisabled() async {
    final result = await _channel.invokeMethod("MAMapView::get_openGLESDisabled", {'refId': refId});
    return result;
  }
  
  Future<CGPoint> get_screenAnchor() async {
    final result = await _channel.invokeMethod("MAMapView::get_screenAnchor", {'refId': refId});
    return CGPoint()..refId = result;
  }
  
  Future<CGRect> get_annotationVisibleRect() async {
    final result = await _channel.invokeMethod("MAMapView::get_annotationVisibleRect", {'refId': refId});
    return CGRect()..refId = result;
  }
  
  Future<bool> get_allowsAnnotationViewSorting() async {
    final result = await _channel.invokeMethod("MAMapView::get_allowsAnnotationViewSorting", {'refId': refId});
    return result;
  }
  
  Future<bool> get_showsUserLocation() async {
    final result = await _channel.invokeMethod("MAMapView::get_showsUserLocation", {'refId': refId});
    return result;
  }
  
  Future<MAUserLocation> get_userLocation() async {
    final result = await _channel.invokeMethod("MAMapView::get_userLocation", {'refId': refId});
    return MAUserLocation()..refId = result;
  }
  
  Future<bool> get_customizeUserLocationAccuracyCircleRepresentation() async {
    final result = await _channel.invokeMethod("MAMapView::get_customizeUserLocationAccuracyCircleRepresentation", {'refId': refId});
    return result;
  }
  
  Future<MACircle> get_userLocationAccuracyCircle() async {
    final result = await _channel.invokeMethod("MAMapView::get_userLocationAccuracyCircle", {'refId': refId});
    return MACircle()..refId = result;
  }
  
  Future<MAUserTrackingMode> get_userTrackingMode() async {
    final result = await _channel.invokeMethod("MAMapView::get_userTrackingMode", {'refId': refId});
    return MAUserTrackingMode.values[result];
  }
  
  Future<bool> get_userLocationVisible() async {
    final result = await _channel.invokeMethod("MAMapView::get_isUserLocationVisible", {'refId': refId});
    return result;
  }
  
  Future<bool> get_pausesLocationUpdatesAutomatically() async {
    final result = await _channel.invokeMethod("MAMapView::get_pausesLocationUpdatesAutomatically", {'refId': refId});
    return result;
  }
  
  Future<bool> get_allowsBackgroundLocationUpdates() async {
    final result = await _channel.invokeMethod("MAMapView::get_allowsBackgroundLocationUpdates", {'refId': refId});
    return result;
  }
  
  Future<bool> get_showsIndoorMap() async {
    final result = await _channel.invokeMethod("MAMapView::get_isShowsIndoorMap", {'refId': refId});
    return result;
  }
  
  Future<bool> get_showsIndoorMapControl() async {
    final result = await _channel.invokeMethod("MAMapView::get_isShowsIndoorMapControl", {'refId': refId});
    return result;
  }
  
  Future<bool> get_customMapStyleEnabled() async {
    final result = await _channel.invokeMethod("MAMapView::get_customMapStyleEnabled", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_delegate(MAMapViewDelegate delegate) async {
    await _channel.invokeMethod('MAMapView::set_delegate', {'refId': refId, "delegate": delegate.refId});
  
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
          case 'Callback::MAMapViewDelegate::mapViewRequireLocationAuth':
            // 日志打印
            print('fluttify-dart-callback: mapViewRequireLocationAuth([])');
        
              // 调用回调方法
            delegate?.mapViewRequireLocationAuth(CLLocationManager()..refId = (args['locationManager']));
            break;
          case 'Callback::MAMapViewDelegate::mapInitComplete':
            // 日志打印
            print('fluttify-dart-callback: mapInitComplete([])');
        
              // 调用回调方法
            delegate?.mapInitComplete(MAMapView()..refId = (args['mapView']));
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
  
  Future<void> set_mapType(MAMapType mapType) async {
    await _channel.invokeMethod('MAMapView::set_mapType', {'refId': refId, "mapType": mapType.index});
  
  
  }
  
  Future<void> set_centerCoordinate(CLLocationCoordinate2D centerCoordinate) async {
    await _channel.invokeMethod('MAMapView::set_centerCoordinate', {'refId': refId, "centerCoordinate": centerCoordinate.refId});
  
  
  }
  
  Future<void> set_region(MACoordinateRegion region) async {
    await _channel.invokeMethod('MAMapView::set_region', {'refId': refId, "region": region.refId});
  
  
  }
  
  Future<void> set_visibleMapRect(MAMapRect visibleMapRect) async {
    await _channel.invokeMethod('MAMapView::set_visibleMapRect', {'refId': refId, "visibleMapRect": visibleMapRect.refId});
  
  
  }
  
  Future<void> set_limitRegion(MACoordinateRegion limitRegion) async {
    await _channel.invokeMethod('MAMapView::set_limitRegion', {'refId': refId, "limitRegion": limitRegion.refId});
  
  
  }
  
  Future<void> set_limitMapRect(MAMapRect limitMapRect) async {
    await _channel.invokeMethod('MAMapView::set_limitMapRect', {'refId': refId, "limitMapRect": limitMapRect.refId});
  
  
  }
  
  Future<void> set_zoomLevel(double zoomLevel) async {
    await _channel.invokeMethod('MAMapView::set_zoomLevel', {'refId': refId, "zoomLevel": zoomLevel});
  
  
  }
  
  Future<void> set_minZoomLevel(double minZoomLevel) async {
    await _channel.invokeMethod('MAMapView::set_minZoomLevel', {'refId': refId, "minZoomLevel": minZoomLevel});
  
  
  }
  
  Future<void> set_maxZoomLevel(double maxZoomLevel) async {
    await _channel.invokeMethod('MAMapView::set_maxZoomLevel', {'refId': refId, "maxZoomLevel": maxZoomLevel});
  
  
  }
  
  Future<void> set_rotationDegree(double rotationDegree) async {
    await _channel.invokeMethod('MAMapView::set_rotationDegree', {'refId': refId, "rotationDegree": rotationDegree});
  
  
  }
  
  Future<void> set_cameraDegree(double cameraDegree) async {
    await _channel.invokeMethod('MAMapView::set_cameraDegree', {'refId': refId, "cameraDegree": cameraDegree});
  
  
  }
  
  Future<void> set_zoomingInPivotsAroundAnchorPoint(bool zoomingInPivotsAroundAnchorPoint) async {
    await _channel.invokeMethod('MAMapView::set_zoomingInPivotsAroundAnchorPoint', {'refId': refId, "zoomingInPivotsAroundAnchorPoint": zoomingInPivotsAroundAnchorPoint});
  
  
  }
  
  Future<void> set_zoomEnabled(bool zoomEnabled) async {
    await _channel.invokeMethod('MAMapView::set_zoomEnabled', {'refId': refId, "zoomEnabled": zoomEnabled});
  
  
  }
  
  Future<void> set_scrollEnabled(bool scrollEnabled) async {
    await _channel.invokeMethod('MAMapView::set_scrollEnabled', {'refId': refId, "scrollEnabled": scrollEnabled});
  
  
  }
  
  Future<void> set_rotateEnabled(bool rotateEnabled) async {
    await _channel.invokeMethod('MAMapView::set_rotateEnabled', {'refId': refId, "rotateEnabled": rotateEnabled});
  
  
  }
  
  Future<void> set_rotateCameraEnabled(bool rotateCameraEnabled) async {
    await _channel.invokeMethod('MAMapView::set_rotateCameraEnabled', {'refId': refId, "rotateCameraEnabled": rotateCameraEnabled});
  
  
  }
  
  Future<void> set_skyModelEnable(bool skyModelEnable) async {
    await _channel.invokeMethod('MAMapView::set_skyModelEnable', {'refId': refId, "skyModelEnable": skyModelEnable});
  
  
  }
  
  Future<void> set_showsBuildings(bool showsBuildings) async {
    await _channel.invokeMethod('MAMapView::set_showsBuildings', {'refId': refId, "showsBuildings": showsBuildings});
  
  
  }
  
  Future<void> set_showsLabels(bool showsLabels) async {
    await _channel.invokeMethod('MAMapView::set_showsLabels', {'refId': refId, "showsLabels": showsLabels});
  
  
  }
  
  Future<void> set_showTraffic(bool showTraffic) async {
    await _channel.invokeMethod('MAMapView::set_showTraffic', {'refId': refId, "showTraffic": showTraffic});
  
  
  }
  
  Future<void> set_trafficRatio(double trafficRatio) async {
    await _channel.invokeMethod('MAMapView::set_trafficRatio', {'refId': refId, "trafficRatio": trafficRatio});
  
  
  }
  
  Future<void> set_touchPOIEnabled(bool touchPOIEnabled) async {
    await _channel.invokeMethod('MAMapView::set_touchPOIEnabled', {'refId': refId, "touchPOIEnabled": touchPOIEnabled});
  
  
  }
  
  Future<void> set_showsCompass(bool showsCompass) async {
    await _channel.invokeMethod('MAMapView::set_showsCompass', {'refId': refId, "showsCompass": showsCompass});
  
  
  }
  
  Future<void> set_compassOrigin(CGPoint compassOrigin) async {
    await _channel.invokeMethod('MAMapView::set_compassOrigin', {'refId': refId, "compassOrigin": compassOrigin.refId});
  
  
  }
  
  Future<void> set_showsScale(bool showsScale) async {
    await _channel.invokeMethod('MAMapView::set_showsScale', {'refId': refId, "showsScale": showsScale});
  
  
  }
  
  Future<void> set_scaleOrigin(CGPoint scaleOrigin) async {
    await _channel.invokeMethod('MAMapView::set_scaleOrigin', {'refId': refId, "scaleOrigin": scaleOrigin.refId});
  
  
  }
  
  Future<void> set_logoCenter(CGPoint logoCenter) async {
    await _channel.invokeMethod('MAMapView::set_logoCenter', {'refId': refId, "logoCenter": logoCenter.refId});
  
  
  }
  
  Future<void> set_maxRenderFrame(int maxRenderFrame) async {
    await _channel.invokeMethod('MAMapView::set_maxRenderFrame', {'refId': refId, "maxRenderFrame": maxRenderFrame});
  
  
  }
  
  Future<void> set_isAllowDecreaseFrame(bool isAllowDecreaseFrame) async {
    await _channel.invokeMethod('MAMapView::set_isAllowDecreaseFrame', {'refId': refId, "isAllowDecreaseFrame": isAllowDecreaseFrame});
  
  
  }
  
  Future<void> set_openGLESDisabled(bool openGLESDisabled) async {
    await _channel.invokeMethod('MAMapView::set_openGLESDisabled', {'refId': refId, "openGLESDisabled": openGLESDisabled});
  
  
  }
  
  Future<void> set_screenAnchor(CGPoint screenAnchor) async {
    await _channel.invokeMethod('MAMapView::set_screenAnchor', {'refId': refId, "screenAnchor": screenAnchor.refId});
  
  
  }
  
  Future<void> set_allowsAnnotationViewSorting(bool allowsAnnotationViewSorting) async {
    await _channel.invokeMethod('MAMapView::set_allowsAnnotationViewSorting', {'refId': refId, "allowsAnnotationViewSorting": allowsAnnotationViewSorting});
  
  
  }
  
  Future<void> set_showsUserLocation(bool showsUserLocation) async {
    await _channel.invokeMethod('MAMapView::set_showsUserLocation', {'refId': refId, "showsUserLocation": showsUserLocation});
  
  
  }
  
  Future<void> set_customizeUserLocationAccuracyCircleRepresentation(bool customizeUserLocationAccuracyCircleRepresentation) async {
    await _channel.invokeMethod('MAMapView::set_customizeUserLocationAccuracyCircleRepresentation', {'refId': refId, "customizeUserLocationAccuracyCircleRepresentation": customizeUserLocationAccuracyCircleRepresentation});
  
  
  }
  
  Future<void> set_userTrackingMode(MAUserTrackingMode userTrackingMode) async {
    await _channel.invokeMethod('MAMapView::set_userTrackingMode', {'refId': refId, "userTrackingMode": userTrackingMode.index});
  
  
  }
  
  Future<void> set_pausesLocationUpdatesAutomatically(bool pausesLocationUpdatesAutomatically) async {
    await _channel.invokeMethod('MAMapView::set_pausesLocationUpdatesAutomatically', {'refId': refId, "pausesLocationUpdatesAutomatically": pausesLocationUpdatesAutomatically});
  
  
  }
  
  Future<void> set_allowsBackgroundLocationUpdates(bool allowsBackgroundLocationUpdates) async {
    await _channel.invokeMethod('MAMapView::set_allowsBackgroundLocationUpdates', {'refId': refId, "allowsBackgroundLocationUpdates": allowsBackgroundLocationUpdates});
  
  
  }
  
  Future<void> set_showsIndoorMap(bool showsIndoorMap) async {
    await _channel.invokeMethod('MAMapView::set_showsIndoorMap', {'refId': refId, "showsIndoorMap": showsIndoorMap});
  
  
  }
  
  Future<void> set_showsIndoorMapControl(bool showsIndoorMapControl) async {
    await _channel.invokeMethod('MAMapView::set_showsIndoorMapControl', {'refId': refId, "showsIndoorMapControl": showsIndoorMapControl});
  
  
  }
  
  Future<void> set_customMapStyleEnabled(bool customMapStyleEnabled) async {
    await _channel.invokeMethod('MAMapView::set_customMapStyleEnabled', {'refId': refId, "customMapStyleEnabled": customMapStyleEnabled});
  
  
  }
  

  // 生成方法们
  Future<void> setRegion(MACoordinateRegion region, bool animated) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setRegion([\'animated\':$animated])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::setRegionAnimated', {"region": region.refId, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<MACoordinateRegion> regionThatFits(MACoordinateRegion region) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::regionThatFits([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::regionThatFits', {"region": region.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MACoordinateRegion()..refId = result;
    }
  }
  
  Future<void> setVisibleMapRect(MAMapRect mapRect, bool animated) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setVisibleMapRect([\'animated\':$animated])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::setVisibleMapRectAnimated', {"mapRect": mapRect.refId, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<MAMapRect> mapRectThatFits(MAMapRect mapRect) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::mapRectThatFits([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::mapRectThatFits', {"mapRect": mapRect.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAMapRect()..refId = result;
    }
  }
  
  Future<void> setCenterCoordinate(CLLocationCoordinate2D coordinate, bool animated) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setCenterCoordinate([\'animated\':$animated])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::setCenterCoordinateAnimated', {"coordinate": coordinate.refId, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setZoomLevel(double zoomLevel, bool animated) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setZoomLevel([\'zoomLevel\':$zoomLevel, \'animated\':$animated])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::setZoomLevelAnimated', {"zoomLevel": zoomLevel, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setRotationDegree(double rotationDegree, bool animated, double duration) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setRotationDegree([\'rotationDegree\':$rotationDegree, \'animated\':$animated, \'duration\':$duration])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::setRotationDegreeAnimatedduration', {"rotationDegree": rotationDegree, "animated": animated, "duration": duration, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setCameraDegree(double cameraDegree, bool animated, double duration) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setCameraDegree([\'cameraDegree\':$cameraDegree, \'animated\':$animated, \'duration\':$duration])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::setCameraDegreeAnimatedduration', {"cameraDegree": cameraDegree, "animated": animated, "duration": duration, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<MAMapStatus> getMapStatus() async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::getMapStatus([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::getMapStatus', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAMapStatus()..refId = result;
    }
  }
  
  Future<void> setMapStatus(MAMapStatus status, bool animated) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setMapStatus([\'animated\':$animated])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::setMapStatusAnimated', {"status": status.refId, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> metersPerPointForZoomLevel(double zoomLevel) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::metersPerPointForZoomLevel([\'zoomLevel\':$zoomLevel])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::metersPerPointForZoomLevel', {"zoomLevel": zoomLevel, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<CGPoint> convertCoordinate(CLLocationCoordinate2D coordinate, UIView view) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::convertCoordinate([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::convertCoordinateToPointToView', {"coordinate": coordinate.refId, "view": view.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return CGPoint()..refId = result;
    }
  }
  
  Future<CLLocationCoordinate2D> convertPoint(CGPoint point, UIView view) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::convertPoint([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::convertPointToCoordinateFromView', {"point": point.refId, "view": view.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return CLLocationCoordinate2D()..refId = result;
    }
  }
  
  Future<CGRect> convertRegion(MACoordinateRegion region, UIView view) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::convertRegion([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::convertRegionToRectToView', {"region": region.refId, "view": view.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return CGRect()..refId = result;
    }
  }
  
  Future<MACoordinateRegion> convertRect(CGRect rect, UIView view) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::convertRect([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::convertRectToRegionFromView', {"rect": rect.refId, "view": view.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MACoordinateRegion()..refId = result;
    }
  }
  
  Future<void> reloadMap() async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::reloadMap([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::reloadMap', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> clearDisk() async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::clearDisk([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::clearDisk', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> reloadInternalTexture() async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::reloadInternalTexture([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::reloadInternalTexture', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> mapContentApprovalNumber() async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::mapContentApprovalNumber([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::mapContentApprovalNumber', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> satelliteImageApprovalNumber() async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::satelliteImageApprovalNumber([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::satelliteImageApprovalNumber', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> forceRefresh() async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::forceRefresh([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::forceRefresh', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> addAnnotation(MAAnnotation annotation) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::addAnnotation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::addAnnotation', {"annotation": annotation.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> removeAnnotation(MAAnnotation annotation) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::removeAnnotation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::removeAnnotation', {"annotation": annotation.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<MAAnnotationView> viewForAnnotation(MAAnnotation annotation) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::viewForAnnotation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::viewForAnnotation', {"annotation": annotation.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAAnnotationView()..refId = result;
    }
  }
  
  Future<MAAnnotationView> dequeueReusableAnnotationViewWithIdentifier(String identifier) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::dequeueReusableAnnotationViewWithIdentifier([\'identifier\':$identifier])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::dequeueReusableAnnotationViewWithIdentifier', {"identifier": identifier, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAAnnotationView()..refId = result;
    }
  }
  
  Future<void> selectAnnotation(MAAnnotation annotation, bool animated) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::selectAnnotation([\'animated\':$animated])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::selectAnnotationAnimated', {"annotation": annotation.refId, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> deselectAnnotation(MAAnnotation annotation, bool animated) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::deselectAnnotation([\'animated\':$animated])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::deselectAnnotationAnimated', {"annotation": annotation.refId, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setUserTrackingMode(MAUserTrackingMode mode, bool animated) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setUserTrackingMode([\'animated\':$animated])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::setUserTrackingModeAnimated', {"mode": mode.index, "animated": animated, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> updateUserLocationRepresentation(MAUserLocationRepresentation representation) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::updateUserLocationRepresentation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::updateUserLocationRepresentation', {"representation": representation.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> addOverlay(MAOverlay overlay) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::addOverlay([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::addOverlay', {"overlay": overlay.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> removeOverlay(MAOverlay overlay) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::removeOverlay([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::removeOverlay', {"overlay": overlay.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> insertOverlay(MAOverlay overlay, int index, MAOverlayLevel level) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::insertOverlay([\'index\':$index])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::insertOverlayAtIndexlevel', {"overlay": overlay.refId, "index": index, "level": level.index, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> exchangeOverlayAtIndex(int index1, int index2) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::exchangeOverlayAtIndex([\'index1\':$index1, \'index2\':$index2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::exchangeOverlayAtIndexWithOverlayAtIndex', {"index1": index1, "index2": index2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> exchangeOverlay(MAOverlay overlay1, MAOverlay overlay2) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::exchangeOverlay([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::exchangeOverlayWithOverlay', {"overlay1": overlay1.refId, "overlay2": overlay2.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<MAOverlayRenderer> rendererForOverlay(MAOverlay overlay) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::rendererForOverlay([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::rendererForOverlay', {"overlay": overlay.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAOverlayRenderer()..refId = result;
    }
  }
  
  Future<void> setIndoorMapControlOrigin(CGPoint origin) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setIndoorMapControlOrigin([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::setIndoorMapControlOrigin', {"origin": origin.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setCurrentIndoorMapFloorIndex(int floorIndex) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setCurrentIndoorMapFloorIndex([\'floorIndex\':$floorIndex])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::setCurrentIndoorMapFloorIndex', {"floorIndex": floorIndex, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> clearIndoorMapCache() async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::clearIndoorMapCache([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::clearIndoorMapCache', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setCustomMapStyleOptions(MAMapCustomStyleOptions styleOptions) async {
    // 日志打印
    print('fluttify-dart: MAMapView@$refId::setCustomMapStyleOptions([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAMapView::setCustomMapStyleOptions', {"styleOptions": styleOptions.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}