import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin MAMapViewDelegate on NSObject {
  

  

  @mustCallSuper
  Future<void> mapViewRegionChanged(MAMapView mapView) {
    kCallbackPool.add(mapView);
  }
  
  @mustCallSuper
  Future<void> mapViewRegionWillChangeAnimated(MAMapView mapView, bool animated) {
    kCallbackPool.add(mapView);
  }
  
  @mustCallSuper
  Future<void> mapViewRegionDidChangeAnimated(MAMapView mapView, bool animated) {
    kCallbackPool.add(mapView);
  }
  
  @mustCallSuper
  Future<void> mapViewMapWillMoveByUser(MAMapView mapView, bool wasUserAction) {
    kCallbackPool.add(mapView);
  }
  
  @mustCallSuper
  Future<void> mapViewMapDidMoveByUser(MAMapView mapView, bool wasUserAction) {
    kCallbackPool.add(mapView);
  }
  
  @mustCallSuper
  Future<void> mapViewMapWillZoomByUser(MAMapView mapView, bool wasUserAction) {
    kCallbackPool.add(mapView);
  }
  
  @mustCallSuper
  Future<void> mapViewMapDidZoomByUser(MAMapView mapView, bool wasUserAction) {
    kCallbackPool.add(mapView);
  }
  
  @mustCallSuper
  Future<void> mapViewWillStartLoadingMap(MAMapView mapView) {
    kCallbackPool.add(mapView);
  }
  
  @mustCallSuper
  Future<void> mapViewDidFinishLoadingMap(MAMapView mapView) {
    kCallbackPool.add(mapView);
  }
  
  @mustCallSuper
  Future<void> mapViewDidFailLoadingMapWithError(MAMapView mapView, NSError error) {
    kCallbackPool.add(mapView);
    kCallbackPool.add(error);
  }
  
  @mustCallSuper
  Future<MAAnnotationView> mapViewViewForAnnotation(MAMapView mapView, MAAnnotation annotation) {
    kCallbackPool.add(mapView);
    kCallbackPool.add(annotation);
  }
  
  @mustCallSuper
  Future<void> mapViewDidSelectAnnotationView(MAMapView mapView, MAAnnotationView view) {
    kCallbackPool.add(mapView);
    kCallbackPool.add(view);
  }
  
  @mustCallSuper
  Future<void> mapViewDidDeselectAnnotationView(MAMapView mapView, MAAnnotationView view) {
    kCallbackPool.add(mapView);
    kCallbackPool.add(view);
  }
  
  @mustCallSuper
  Future<void> mapViewWillStartLocatingUser(MAMapView mapView) {
    kCallbackPool.add(mapView);
  }
  
  @mustCallSuper
  Future<void> mapViewDidStopLocatingUser(MAMapView mapView) {
    kCallbackPool.add(mapView);
  }
  
  @mustCallSuper
  Future<void> mapViewDidUpdateUserLocationupdatingLocation(MAMapView mapView, MAUserLocation userLocation, bool updatingLocation) {
    kCallbackPool.add(mapView);
    kCallbackPool.add(userLocation);
  }
  
  @mustCallSuper
  Future<void> mapViewRequireLocationAuth(CLLocationManager locationManager) {
    kCallbackPool.add(locationManager);
  }
  
  @mustCallSuper
  Future<void> mapViewDidFailToLocateUserWithError(MAMapView mapView, NSError error) {
    kCallbackPool.add(mapView);
    kCallbackPool.add(error);
  }
  
  @mustCallSuper
  Future<void> mapViewAnnotationViewdidChangeDragStatefromOldState(MAMapView mapView, MAAnnotationView view, MAAnnotationViewDragState newState, MAAnnotationViewDragState oldState) {
    kCallbackPool.add(mapView);
    kCallbackPool.add(view);
  }
  
  @mustCallSuper
  Future<MAOverlayRenderer> mapViewRendererForOverlay(MAMapView mapView, MAOverlay overlay) {
    kCallbackPool.add(mapView);
    kCallbackPool.add(overlay);
  }
  
  @mustCallSuper
  Future<void> mapViewAnnotationViewcalloutAccessoryControlTapped(MAMapView mapView, MAAnnotationView view, UIControl control) {
    kCallbackPool.add(mapView);
    kCallbackPool.add(view);
    kCallbackPool.add(control);
  }
  
  @mustCallSuper
  Future<void> mapViewDidAnnotationViewCalloutTapped(MAMapView mapView, MAAnnotationView view) {
    kCallbackPool.add(mapView);
    kCallbackPool.add(view);
  }
  
  @mustCallSuper
  Future<void> mapViewDidAnnotationViewTapped(MAMapView mapView, MAAnnotationView view) {
    kCallbackPool.add(mapView);
    kCallbackPool.add(view);
  }
  
  @mustCallSuper
  Future<void> mapViewDidChangeUserTrackingModeanimated(MAMapView mapView, MAUserTrackingMode mode, bool animated) {
    kCallbackPool.add(mapView);
  }
  
  @mustCallSuper
  Future<void> mapViewDidChangeOpenGLESDisabled(MAMapView mapView, bool openGLESDisabled) {
    kCallbackPool.add(mapView);
  }
  
  @mustCallSuper
  Future<void> mapViewDidSingleTappedAtCoordinate(MAMapView mapView, CLLocationCoordinate2D coordinate) {
    kCallbackPool.add(mapView);
    kCallbackPool.add(coordinate);
  }
  
  @mustCallSuper
  Future<void> mapViewDidLongPressedAtCoordinate(MAMapView mapView, CLLocationCoordinate2D coordinate) {
    kCallbackPool.add(mapView);
    kCallbackPool.add(coordinate);
  }
  
  @mustCallSuper
  Future<void> mapInitComplete(MAMapView mapView) {
    kCallbackPool.add(mapView);
  }
  
  @mustCallSuper
  Future<void> mapViewDidIndoorMapShowed(MAMapView mapView, MAIndoorInfo indoorInfo) {
    kCallbackPool.add(mapView);
    kCallbackPool.add(indoorInfo);
  }
  
  @mustCallSuper
  Future<void> mapViewDidIndoorMapFloorIndexChanged(MAMapView mapView, MAIndoorInfo indoorInfo) {
    kCallbackPool.add(mapView);
    kCallbackPool.add(indoorInfo);
  }
  
  @mustCallSuper
  Future<void> mapViewDidIndoorMapHidden(MAMapView mapView, MAIndoorInfo indoorInfo) {
    kCallbackPool.add(mapView);
    kCallbackPool.add(indoorInfo);
  }
  
  @mustCallSuper
  Future<void> offlineDataWillReload(MAMapView mapView) {
    kCallbackPool.add(mapView);
  }
  
  @mustCallSuper
  Future<void> offlineDataDidReload(MAMapView mapView) {
    kCallbackPool.add(mapView);
  }
  
}