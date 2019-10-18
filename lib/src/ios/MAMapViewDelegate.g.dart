import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin MAMapViewDelegate on NSObject {
  

  

  @mustCallSuper
  Future<void> mapViewRegionChanged(MAMapView mapView) {
    kCallbackPool[mapView.refId] = mapView;
  }
  
  @mustCallSuper
  Future<void> mapViewRegionWillChangeAnimated(MAMapView mapView, bool animated) {
    kCallbackPool[mapView.refId] = mapView;
  }
  
  @mustCallSuper
  Future<void> mapViewRegionDidChangeAnimated(MAMapView mapView, bool animated) {
    kCallbackPool[mapView.refId] = mapView;
  }
  
  @mustCallSuper
  Future<void> mapViewMapWillMoveByUser(MAMapView mapView, bool wasUserAction) {
    kCallbackPool[mapView.refId] = mapView;
  }
  
  @mustCallSuper
  Future<void> mapViewMapDidMoveByUser(MAMapView mapView, bool wasUserAction) {
    kCallbackPool[mapView.refId] = mapView;
  }
  
  @mustCallSuper
  Future<void> mapViewMapWillZoomByUser(MAMapView mapView, bool wasUserAction) {
    kCallbackPool[mapView.refId] = mapView;
  }
  
  @mustCallSuper
  Future<void> mapViewMapDidZoomByUser(MAMapView mapView, bool wasUserAction) {
    kCallbackPool[mapView.refId] = mapView;
  }
  
  @mustCallSuper
  Future<void> mapViewWillStartLoadingMap(MAMapView mapView) {
    kCallbackPool[mapView.refId] = mapView;
  }
  
  @mustCallSuper
  Future<void> mapViewDidFinishLoadingMap(MAMapView mapView) {
    kCallbackPool[mapView.refId] = mapView;
  }
  
  @mustCallSuper
  Future<void> mapViewDidFailLoadingMapWithError(MAMapView mapView, NSError error) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[error.refId] = error;
  }
  
  @mustCallSuper
  Future<MAAnnotationView> mapViewViewForAnnotation(MAMapView mapView, MAAnnotation annotation) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[annotation.refId] = annotation;
  }
  
  @mustCallSuper
  Future<void> mapViewDidSelectAnnotationView(MAMapView mapView, MAAnnotationView view) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[view.refId] = view;
  }
  
  @mustCallSuper
  Future<void> mapViewDidDeselectAnnotationView(MAMapView mapView, MAAnnotationView view) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[view.refId] = view;
  }
  
  @mustCallSuper
  Future<void> mapViewWillStartLocatingUser(MAMapView mapView) {
    kCallbackPool[mapView.refId] = mapView;
  }
  
  @mustCallSuper
  Future<void> mapViewDidStopLocatingUser(MAMapView mapView) {
    kCallbackPool[mapView.refId] = mapView;
  }
  
  @mustCallSuper
  Future<void> mapViewDidUpdateUserLocationupdatingLocation(MAMapView mapView, MAUserLocation userLocation, bool updatingLocation) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[userLocation.refId] = userLocation;
  }
  
  @mustCallSuper
  Future<void> mapViewRequireLocationAuth(CLLocationManager locationManager) {
    kCallbackPool[locationManager.refId] = locationManager;
  }
  
  @mustCallSuper
  Future<void> mapViewDidFailToLocateUserWithError(MAMapView mapView, NSError error) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[error.refId] = error;
  }
  
  @mustCallSuper
  Future<void> mapViewAnnotationViewdidChangeDragStatefromOldState(MAMapView mapView, MAAnnotationView view, MAAnnotationViewDragState newState, MAAnnotationViewDragState oldState) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[view.refId] = view;
  }
  
  @mustCallSuper
  Future<MAOverlayRenderer> mapViewRendererForOverlay(MAMapView mapView, MAOverlay overlay) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[overlay.refId] = overlay;
  }
  
  @mustCallSuper
  Future<void> mapViewAnnotationViewcalloutAccessoryControlTapped(MAMapView mapView, MAAnnotationView view, UIControl control) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[view.refId] = view;
    kCallbackPool[control.refId] = control;
  }
  
  @mustCallSuper
  Future<void> mapViewDidAnnotationViewCalloutTapped(MAMapView mapView, MAAnnotationView view) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[view.refId] = view;
  }
  
  @mustCallSuper
  Future<void> mapViewDidAnnotationViewTapped(MAMapView mapView, MAAnnotationView view) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[view.refId] = view;
  }
  
  @mustCallSuper
  Future<void> mapViewDidChangeUserTrackingModeanimated(MAMapView mapView, MAUserTrackingMode mode, bool animated) {
    kCallbackPool[mapView.refId] = mapView;
  }
  
  @mustCallSuper
  Future<void> mapViewDidChangeOpenGLESDisabled(MAMapView mapView, bool openGLESDisabled) {
    kCallbackPool[mapView.refId] = mapView;
  }
  
  @mustCallSuper
  Future<void> mapViewDidSingleTappedAtCoordinate(MAMapView mapView, CLLocationCoordinate2D coordinate) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[coordinate.refId] = coordinate;
  }
  
  @mustCallSuper
  Future<void> mapViewDidLongPressedAtCoordinate(MAMapView mapView, CLLocationCoordinate2D coordinate) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[coordinate.refId] = coordinate;
  }
  
  @mustCallSuper
  Future<void> mapInitComplete(MAMapView mapView) {
    kCallbackPool[mapView.refId] = mapView;
  }
  
  @mustCallSuper
  Future<void> mapViewDidIndoorMapShowed(MAMapView mapView, MAIndoorInfo indoorInfo) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[indoorInfo.refId] = indoorInfo;
  }
  
  @mustCallSuper
  Future<void> mapViewDidIndoorMapFloorIndexChanged(MAMapView mapView, MAIndoorInfo indoorInfo) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[indoorInfo.refId] = indoorInfo;
  }
  
  @mustCallSuper
  Future<void> mapViewDidIndoorMapHidden(MAMapView mapView, MAIndoorInfo indoorInfo) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[indoorInfo.refId] = indoorInfo;
  }
  
  @mustCallSuper
  Future<void> offlineDataWillReload(MAMapView mapView) {
    kCallbackPool[mapView.refId] = mapView;
  }
  
  @mustCallSuper
  Future<void> offlineDataDidReload(MAMapView mapView) {
    kCallbackPool[mapView.refId] = mapView;
  }
  
}