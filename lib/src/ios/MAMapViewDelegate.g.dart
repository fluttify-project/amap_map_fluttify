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
    debugPrint('mapViewRegionChanged::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewRegionWillChangeAnimated(MAMapView mapView, bool animated) {
    kCallbackPool[mapView.refId] = mapView;
    debugPrint('mapViewRegionWillChangeAnimated::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewRegionDidChangeAnimated(MAMapView mapView, bool animated) {
    kCallbackPool[mapView.refId] = mapView;
    debugPrint('mapViewRegionDidChangeAnimated::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewMapWillMoveByUser(MAMapView mapView, bool wasUserAction) {
    kCallbackPool[mapView.refId] = mapView;
    debugPrint('mapViewMapWillMoveByUser::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewMapDidMoveByUser(MAMapView mapView, bool wasUserAction) {
    kCallbackPool[mapView.refId] = mapView;
    debugPrint('mapViewMapDidMoveByUser::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewMapWillZoomByUser(MAMapView mapView, bool wasUserAction) {
    kCallbackPool[mapView.refId] = mapView;
    debugPrint('mapViewMapWillZoomByUser::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewMapDidZoomByUser(MAMapView mapView, bool wasUserAction) {
    kCallbackPool[mapView.refId] = mapView;
    debugPrint('mapViewMapDidZoomByUser::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewWillStartLoadingMap(MAMapView mapView) {
    kCallbackPool[mapView.refId] = mapView;
    debugPrint('mapViewWillStartLoadingMap::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewDidFinishLoadingMap(MAMapView mapView) {
    kCallbackPool[mapView.refId] = mapView;
    debugPrint('mapViewDidFinishLoadingMap::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewDidFailLoadingMapWithError(MAMapView mapView, NSError error) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[error.refId] = error;
    debugPrint('mapViewDidFailLoadingMapWithError::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<MAAnnotationView> mapViewViewForAnnotation(MAMapView mapView, MAAnnotation annotation) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[annotation.refId] = annotation;
    debugPrint('mapViewViewForAnnotation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewDidAddAnnotationViews(MAMapView mapView, List<NSObject> views) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool.addAll(Map.fromIterable(views, key: (it) => it.refId, value: (it) => it));
    debugPrint('mapViewDidAddAnnotationViews::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewDidSelectAnnotationView(MAMapView mapView, MAAnnotationView view) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[view.refId] = view;
    debugPrint('mapViewDidSelectAnnotationView::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewDidDeselectAnnotationView(MAMapView mapView, MAAnnotationView view) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[view.refId] = view;
    debugPrint('mapViewDidDeselectAnnotationView::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewWillStartLocatingUser(MAMapView mapView) {
    kCallbackPool[mapView.refId] = mapView;
    debugPrint('mapViewWillStartLocatingUser::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewDidStopLocatingUser(MAMapView mapView) {
    kCallbackPool[mapView.refId] = mapView;
    debugPrint('mapViewDidStopLocatingUser::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewDidUpdateUserLocationupdatingLocation(MAMapView mapView, MAUserLocation userLocation, bool updatingLocation) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[userLocation.refId] = userLocation;
    debugPrint('mapViewDidUpdateUserLocationupdatingLocation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewRequireLocationAuth(CLLocationManager locationManager) {
    kCallbackPool[locationManager.refId] = locationManager;
    debugPrint('mapViewRequireLocationAuth::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewDidFailToLocateUserWithError(MAMapView mapView, NSError error) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[error.refId] = error;
    debugPrint('mapViewDidFailToLocateUserWithError::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewAnnotationViewdidChangeDragStatefromOldState(MAMapView mapView, MAAnnotationView view, MAAnnotationViewDragState newState, MAAnnotationViewDragState oldState) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[view.refId] = view;
    debugPrint('mapViewAnnotationViewdidChangeDragStatefromOldState::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<MAOverlayRenderer> mapViewRendererForOverlay(MAMapView mapView, MAOverlay overlay) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[overlay.refId] = overlay;
    debugPrint('mapViewRendererForOverlay::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewDidAddOverlayRenderers(MAMapView mapView, List<NSObject> overlayRenderers) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool.addAll(Map.fromIterable(overlayRenderers, key: (it) => it.refId, value: (it) => it));
    debugPrint('mapViewDidAddOverlayRenderers::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewAnnotationViewcalloutAccessoryControlTapped(MAMapView mapView, MAAnnotationView view, UIControl control) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[view.refId] = view;
    kCallbackPool[control.refId] = control;
    debugPrint('mapViewAnnotationViewcalloutAccessoryControlTapped::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewDidAnnotationViewCalloutTapped(MAMapView mapView, MAAnnotationView view) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[view.refId] = view;
    debugPrint('mapViewDidAnnotationViewCalloutTapped::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewDidAnnotationViewTapped(MAMapView mapView, MAAnnotationView view) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[view.refId] = view;
    debugPrint('mapViewDidAnnotationViewTapped::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewDidChangeUserTrackingModeanimated(MAMapView mapView, MAUserTrackingMode mode, bool animated) {
    kCallbackPool[mapView.refId] = mapView;
    debugPrint('mapViewDidChangeUserTrackingModeanimated::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewDidChangeOpenGLESDisabled(MAMapView mapView, bool openGLESDisabled) {
    kCallbackPool[mapView.refId] = mapView;
    debugPrint('mapViewDidChangeOpenGLESDisabled::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewDidTouchPois(MAMapView mapView, List<NSObject> pois) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool.addAll(Map.fromIterable(pois, key: (it) => it.refId, value: (it) => it));
    debugPrint('mapViewDidTouchPois::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewDidSingleTappedAtCoordinate(MAMapView mapView, CLLocationCoordinate2D coordinate) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[coordinate.refId] = coordinate;
    debugPrint('mapViewDidSingleTappedAtCoordinate::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewDidLongPressedAtCoordinate(MAMapView mapView, CLLocationCoordinate2D coordinate) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[coordinate.refId] = coordinate;
    debugPrint('mapViewDidLongPressedAtCoordinate::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapInitComplete(MAMapView mapView) {
    kCallbackPool[mapView.refId] = mapView;
    debugPrint('mapInitComplete::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewDidIndoorMapShowed(MAMapView mapView, MAIndoorInfo indoorInfo) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[indoorInfo.refId] = indoorInfo;
    debugPrint('mapViewDidIndoorMapShowed::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewDidIndoorMapFloorIndexChanged(MAMapView mapView, MAIndoorInfo indoorInfo) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[indoorInfo.refId] = indoorInfo;
    debugPrint('mapViewDidIndoorMapFloorIndexChanged::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> mapViewDidIndoorMapHidden(MAMapView mapView, MAIndoorInfo indoorInfo) {
    kCallbackPool[mapView.refId] = mapView;
    kCallbackPool[indoorInfo.refId] = indoorInfo;
    debugPrint('mapViewDidIndoorMapHidden::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> offlineDataWillReload(MAMapView mapView) {
    kCallbackPool[mapView.refId] = mapView;
    debugPrint('offlineDataWillReload::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> offlineDataDidReload(MAMapView mapView) {
    kCallbackPool[mapView.refId] = mapView;
    debugPrint('offlineDataDidReload::kCallbackPool: $kCallbackPool');
  }
  
}