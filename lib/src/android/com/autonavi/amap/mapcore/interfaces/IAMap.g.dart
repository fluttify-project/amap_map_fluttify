import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IAMap on java_lang_Object {
  

  

  @mustCallSuper
  Future<com_amap_api_maps_model_CameraPosition> getCameraPosition() {
  
  }
  
  @mustCallSuper
  Future<double> getMaxZoomLevel() {
  
  }
  
  @mustCallSuper
  Future<double> getMinZoomLevel() {
  
  }
  
  @mustCallSuper
  Future<void> moveCamera(com_amap_api_maps_CameraUpdate var1) {
  
  }
  
  @mustCallSuper
  Future<void> animateCamera(com_amap_api_maps_CameraUpdate var1) {
  
  }
  
  @mustCallSuper
  Future<void> animateCameraWithCallback(com_amap_api_maps_CameraUpdate var1, com_amap_api_maps_AMap_CancelableCallback var2) {
  
  }
  
  @mustCallSuper
  Future<void> animateCameraWithDurationAndCallback(com_amap_api_maps_CameraUpdate var1, int var2, com_amap_api_maps_AMap_CancelableCallback var4) {
  
  }
  
  @mustCallSuper
  Future<void> stopAnimation() {
  
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_NavigateArrow> addNavigateArrow(com_amap_api_maps_model_NavigateArrowOptions var1) {
  
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_Polyline> addPolyline(com_amap_api_maps_model_PolylineOptions var1) {
  
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_Circle> addCircle(com_amap_api_maps_model_CircleOptions var1) {
  
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_Arc> addArc(com_amap_api_maps_model_ArcOptions var1) {
  
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_Polygon> addPolygon(com_amap_api_maps_model_PolygonOptions var1) {
  
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_GroundOverlay> addGroundOverlay(com_amap_api_maps_model_GroundOverlayOptions var1) {
  
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_MultiPointOverlay> addMultiPointOverlay(com_amap_api_maps_model_MultiPointOverlayOptions var1) {
  
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_Marker> addMarker(com_amap_api_maps_model_MarkerOptions var1) {
  
  }
  
  @mustCallSuper
  Future<List<com_amap_api_maps_model_Marker>> addMarkers(List<com_amap_api_maps_model_MarkerOptions> var1, bool var2) {
  
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_Text> addText(com_amap_api_maps_model_TextOptions var1) {
  
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_TileOverlay> addTileOverlay(com_amap_api_maps_model_TileOverlayOptions var1) {
  
  }
  
  @mustCallSuper
  Future<void> clear() {
  
  }
  
  @mustCallSuper
  Future<int> getMapType() {
  
  }
  
  @mustCallSuper
  Future<void> setMapType(int var1) {
  
  }
  
  @mustCallSuper
  Future<bool> isTrafficEnabled() {
  
  }
  
  @mustCallSuper
  Future<void> setTrafficEnabled(bool var1) {
  
  }
  
  @mustCallSuper
  Future<bool> isIndoorEnabled() {
  
  }
  
  @mustCallSuper
  Future<void> setIndoorEnabled(bool var1) {
  
  }
  
  @mustCallSuper
  Future<void> set3DBuildingEnabled(bool var1) {
  
  }
  
  @mustCallSuper
  Future<bool> isMyLocationEnabled() {
  
  }
  
  @mustCallSuper
  Future<void> setMyLocationEnabled(bool var1) {
  
  }
  
  @mustCallSuper
  Future<void> setLoadOfflineData(bool var1) {
  
  }
  
  @mustCallSuper
  Future<void> setMyLocationStyle(com_amap_api_maps_model_MyLocationStyle var1) {
  
  }
  
  @mustCallSuper
  Future<void> setMyLocationType(int var1) {
  
  }
  
  @mustCallSuper
  Future<List<com_amap_api_maps_model_Marker>> getMapScreenMarkers() {
  
  }
  
  @mustCallSuper
  Future<void> setMapTextEnable(bool var1) {
  
  }
  
  @mustCallSuper
  Future<void> setRoadArrowEnable(bool var1) {
  
  }
  
  @mustCallSuper
  Future<void> setMyTrafficStyle(com_amap_api_maps_model_MyTrafficStyle var1) {
  
  }
  
  @mustCallSuper
  Future<android_location_Location> getMyLocation() {
  
  }
  
  @mustCallSuper
  Future<void> setLocationSource(com_amap_api_maps_LocationSource var1) {
  
  }
  
  @mustCallSuper
  Future<void> setMyLocationRotateAngle(double var1) {
  
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_UiSettings> getAMapUiSettings() {
  
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_Projection> getAMapProjection() {
  
  }
  
  @mustCallSuper
  Future<void> setOnCameraChangeListener(com_amap_api_maps_AMap_OnCameraChangeListener var1) {
  
  }
  
  @mustCallSuper
  Future<void> setOnMapClickListener(com_amap_api_maps_AMap_OnMapClickListener var1) {
  
  }
  
  @mustCallSuper
  Future<void> setOnMapTouchListener(com_amap_api_maps_AMap_OnMapTouchListener var1) {
  
  }
  
  @mustCallSuper
  Future<void> setOnMapLongClickListener(com_amap_api_maps_AMap_OnMapLongClickListener var1) {
  
  }
  
  @mustCallSuper
  Future<void> setOnMarkerClickListener(com_amap_api_maps_AMap_OnMarkerClickListener var1) {
  
  }
  
  @mustCallSuper
  Future<void> setOnPolylineClickListener(com_amap_api_maps_AMap_OnPolylineClickListener var1) {
  
  }
  
  @mustCallSuper
  Future<void> setOnMarkerDragListener(com_amap_api_maps_AMap_OnMarkerDragListener var1) {
  
  }
  
  @mustCallSuper
  Future<void> setOnMaploadedListener(com_amap_api_maps_AMap_OnMapLoadedListener var1) {
  
  }
  
  @mustCallSuper
  Future<void> setOnInfoWindowClickListener(com_amap_api_maps_AMap_OnInfoWindowClickListener var1) {
  
  }
  
  @mustCallSuper
  Future<void> setOnMyLocationChangeListener(com_amap_api_maps_AMap_OnMyLocationChangeListener var1) {
  
  }
  
  @mustCallSuper
  Future<void> setOnPOIClickListener(com_amap_api_maps_AMap_OnPOIClickListener var1) {
  
  }
  
  @mustCallSuper
  Future<void> setInfoWindowAdapter(com_amap_api_maps_AMap_InfoWindowAdapter var1) {
  
  }
  
  @mustCallSuper
  Future<void> setOnIndoorBuildingActiveListener(com_amap_api_maps_AMap_OnIndoorBuildingActiveListener var1) {
  
  }
  
  @mustCallSuper
  Future<void> getMapPrintScreen(com_amap_api_maps_AMap_onMapPrintScreenListener var1) {
  
  }
  
  @mustCallSuper
  Future<void> getMapScreenShot(com_amap_api_maps_AMap_OnMapScreenShotListener var1) {
  
  }
  
  @mustCallSuper
  Future<double> getScalePerPixel() {
  
  }
  
  @mustCallSuper
  Future<void> setRunLowFrame(bool var1) {
  
  }
  
  @mustCallSuper
  Future<void> removecache() {
  
  }
  
  @mustCallSuper
  Future<void> setCustomRenderer(com_amap_api_maps_CustomRenderer var1) {
  
  }
  
  @mustCallSuper
  Future<void> setCenterToPixel(int var1, int var2) {
  
  }
  
  @mustCallSuper
  Future<void> setMapTextZIndex(int var1) {
  
  }
  
  @mustCallSuper
  Future<int> getMapTextZIndex() {
  
  }
  
  @mustCallSuper
  Future<void> reloadMap() {
  
  }
  
  @mustCallSuper
  Future<void> setRenderFps(int var1) {
  
  }
  
  @mustCallSuper
  Future<void> setIndoorBuildingInfo(com_amap_api_maps_model_IndoorBuildingInfo var1) {
  
  }
  
  @mustCallSuper
  Future<void> setAMapGestureListener(com_amap_api_maps_model_AMapGestureListener var1) {
  
  }
  
  @mustCallSuper
  Future<double> getZoomToSpanLevel(com_amap_api_maps_model_LatLng var1, com_amap_api_maps_model_LatLng var2) {
  
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_InfoWindowAnimationManager> getInfoWindowAnimationManager() {
  
  }
  
  @mustCallSuper
  Future<void> setMaskLayerParams(int var1, int var2, int var3, int var4, int var5, int var6) {
  
  }
  
  @mustCallSuper
  Future<void> setMaxZoomLevel(double var1) {
  
  }
  
  @mustCallSuper
  Future<void> setMinZoomLevel(double var1) {
  
  }
  
  @mustCallSuper
  Future<void> resetMinMaxZoomPreference() {
  
  }
  
  @mustCallSuper
  Future<void> setMapStatusLimits(com_amap_api_maps_model_LatLngBounds var1) {
  
  }
  
  @mustCallSuper
  Future<void> setCustomMapStylePath(String var1) {
  
  }
  
  @mustCallSuper
  Future<void> setMapCustomEnable(bool var1) {
  
  }
  
  @mustCallSuper
  Future<void> onChangeFinish() {
  
  }
  
  @mustCallSuper
  Future<void> setZoomScaleParam(double var1) {
  
  }
  
  @mustCallSuper
  Future<void> onFling() {
  
  }
  
  @mustCallSuper
  Future<int> getMapWidth() {
  
  }
  
  @mustCallSuper
  Future<int> getMapHeight() {
  
  }
  
  @mustCallSuper
  Future<double> getCameraAngle() {
  
  }
  
  @mustCallSuper
  Future<double> getSkyHeight() {
  
  }
  
  @mustCallSuper
  Future<bool> isMaploaded() {
  
  }
  
  @mustCallSuper
  Future<com_autonavi_amap_mapcore_MapConfig> getMapConfig() {
  
  }
  
  @mustCallSuper
  Future<android_view_View> getView() {
  
  }
  
  @mustCallSuper
  Future<void> setZOrderOnTop(bool var1) {
  
  }
  
  @mustCallSuper
  Future<void> destroy() {
  
  }
  
  @mustCallSuper
  Future<void> setVisibilityEx(int var1) {
  
  }
  
  @mustCallSuper
  Future<void> onActivityPause() {
  
  }
  
  @mustCallSuper
  Future<void> onActivityResume() {
  
  }
  
  @mustCallSuper
  Future<int> createGLOverlay(int var1) {
  
  }
  
  @mustCallSuper
  Future<int> getGlOverlayMgrPtr() {
  
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_CrossOverlay> addCrossVector(com_amap_api_maps_model_CrossOverlayOptions var1) {
  
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_RouteOverlay> addNaviRouteOverlay() {
  
  }
  
  @mustCallSuper
  Future<List<double>> getViewMatrix() {
  
  }
  
  @mustCallSuper
  Future<List<double>> getProjectionMatrix() {
  
  }
  
  @mustCallSuper
  Future<void> addOverlayTexture(int var1, com_autonavi_ae_gmap_gloverlay_GLTextureProperty var2) {
  
  }
  
  @mustCallSuper
  Future<bool> onTouchEvent(android_view_MotionEvent var1) {
  
  }
  
  @mustCallSuper
  Future<bool> canStopMapRender() {
  
  }
  
  @mustCallSuper
  Future<void> setCustomTextureResourcePath(String var1) {
  
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_MyLocationStyle> getMyLocationStyle() {
  
  }
  
  @mustCallSuper
  Future<int> getRenderMode() {
  
  }
  
  @mustCallSuper
  Future<void> destroySurface(int var1) {
  
  }
  
  @mustCallSuper
  Future<void> requestRender() {
  
  }
  
  @mustCallSuper
  Future<void> resetRenderTime() {
  
  }
  
  @mustCallSuper
  Future<void> onIndoorBuildingActivity(int var1, List<int> var2) {
  
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_AMapCameraInfo> getCamerInfo() {
  
  }
  
  @mustCallSuper
  Future<void> checkMapState(com_autonavi_ae_gmap_GLMapState var1) {
  
  }
  
  @mustCallSuper
  Future<void> setRenderMode(int var1) {
  
  }
  
  @mustCallSuper
  Future<void> setOnMultiPointClickListener(com_amap_api_maps_AMap_OnMultiPointClickListener var1) {
  
  }
  
  @mustCallSuper
  Future<String> getMapContentApprovalNumber() {
  
  }
  
  @mustCallSuper
  Future<String> getSatelliteImageApprovalNumber() {
  
  }
  
  @mustCallSuper
  Future<void> setMapLanguage(String var1) {
  
  }
  
  @mustCallSuper
  Future<void> setCustomMapStyleID(String var1) {
  
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_BuildingOverlay> addBuildingOverlay() {
  
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_GL3DModel> addGLModel(com_amap_api_maps_model_GL3DModelOptions var1) {
  
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_particle_ParticleOverlay> addParticleOverlay(com_amap_api_maps_model_particle_ParticleOverlayOptions var1) {
  
  }
  
  @mustCallSuper
  Future<void> setCustomMapStyle(com_amap_api_maps_model_CustomMapStyleOptions var1) {
  
  }
  
}