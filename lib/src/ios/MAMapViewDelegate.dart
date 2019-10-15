import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin MAMapViewDelegate on NSObject {
  

  

  Future<void> mapViewRegionChanged(MAMapView mapView) {}
  
  Future<void> mapViewRegionWillChangeAnimated(MAMapView mapView, bool animated) {}
  
  Future<void> mapViewRegionDidChangeAnimated(MAMapView mapView, bool animated) {}
  
  Future<void> mapViewMapWillMoveByUser(MAMapView mapView, bool wasUserAction) {}
  
  Future<void> mapViewMapDidMoveByUser(MAMapView mapView, bool wasUserAction) {}
  
  Future<void> mapViewMapWillZoomByUser(MAMapView mapView, bool wasUserAction) {}
  
  Future<void> mapViewMapDidZoomByUser(MAMapView mapView, bool wasUserAction) {}
  
  Future<void> mapViewWillStartLoadingMap(MAMapView mapView) {}
  
  Future<void> mapViewDidFinishLoadingMap(MAMapView mapView) {}
  
  Future<void> mapViewDidFailLoadingMapWithError(MAMapView mapView, NSError error) {}
  
  Future<MAAnnotationView> mapViewViewForAnnotation(MAMapView mapView, MAAnnotation annotation) {}
  
  Future<void> mapViewDidAddAnnotationViews(MAMapView mapView, List<Object> views) {}
  
  Future<void> mapViewDidSelectAnnotationView(MAMapView mapView, MAAnnotationView view) {}
  
  Future<void> mapViewDidDeselectAnnotationView(MAMapView mapView, MAAnnotationView view) {}
  
  Future<void> mapViewWillStartLocatingUser(MAMapView mapView) {}
  
  Future<void> mapViewDidStopLocatingUser(MAMapView mapView) {}
  
  Future<void> mapViewDidUpdateUserLocationupdatingLocation(MAMapView mapView, MAUserLocation userLocation, bool updatingLocation) {}
  
  Future<void> mapViewRequireLocationAuth(CLLocationManager locationManager) {}
  
  Future<void> mapViewDidFailToLocateUserWithError(MAMapView mapView, NSError error) {}
  
  Future<void> mapViewAnnotationViewdidChangeDragStatefromOldState(MAMapView mapView, MAAnnotationView view, MAAnnotationViewDragState newState, MAAnnotationViewDragState oldState) {}
  
  Future<MAOverlayRenderer> mapViewRendererForOverlay(MAMapView mapView, MAOverlay overlay) {}
  
  Future<void> mapViewDidAddOverlayRenderers(MAMapView mapView, List<Object> overlayRenderers) {}
  
  Future<void> mapViewAnnotationViewcalloutAccessoryControlTapped(MAMapView mapView, MAAnnotationView view, UIControl control) {}
  
  Future<void> mapViewDidAnnotationViewCalloutTapped(MAMapView mapView, MAAnnotationView view) {}
  
  Future<void> mapViewDidAnnotationViewTapped(MAMapView mapView, MAAnnotationView view) {}
  
  Future<void> mapViewDidChangeUserTrackingModeanimated(MAMapView mapView, MAUserTrackingMode mode, bool animated) {}
  
  Future<void> mapViewDidChangeOpenGLESDisabled(MAMapView mapView, bool openGLESDisabled) {}
  
  Future<void> mapViewDidTouchPois(MAMapView mapView, List<Object> pois) {}
  
  Future<void> mapViewDidSingleTappedAtCoordinate(MAMapView mapView, CLLocationCoordinate2D coordinate) {}
  
  Future<void> mapViewDidLongPressedAtCoordinate(MAMapView mapView, CLLocationCoordinate2D coordinate) {}
  
  Future<void> mapInitComplete(MAMapView mapView) {}
  
  Future<void> mapViewDidIndoorMapShowed(MAMapView mapView, MAIndoorInfo indoorInfo) {}
  
  Future<void> mapViewDidIndoorMapFloorIndexChanged(MAMapView mapView, MAIndoorInfo indoorInfo) {}
  
  Future<void> mapViewDidIndoorMapHidden(MAMapView mapView, MAIndoorInfo indoorInfo) {}
  
  Future<void> offlineDataWillReload(MAMapView mapView) {}
  
  Future<void> offlineDataDidReload(MAMapView mapView) {}
  
}