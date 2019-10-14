import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IAMap on java_lang_Object {
  Future<com_amap_api_maps_model_CameraPosition> getCameraPosition() {}
  
  Future<double> getMaxZoomLevel() {}
  
  Future<double> getMinZoomLevel() {}
  
  Future<void> moveCamera(com_amap_api_maps_CameraUpdate var1) {}
  
  Future<void> animateCamera(com_amap_api_maps_CameraUpdate var1) {}
  
  Future<void> animateCameraWithCallback(com_amap_api_maps_CameraUpdate var1, com_amap_api_maps_AMap_CancelableCallback var2) {}
  
  Future<void> animateCameraWithDurationAndCallback(com_amap_api_maps_CameraUpdate var1, int var2, com_amap_api_maps_AMap_CancelableCallback var4) {}
  
  Future<void> stopAnimation() {}
  
  Future<com_amap_api_maps_model_NavigateArrow> addNavigateArrow(com_amap_api_maps_model_NavigateArrowOptions var1) {}
  
  Future<com_amap_api_maps_model_Polyline> addPolyline(com_amap_api_maps_model_PolylineOptions var1) {}
  
  Future<com_amap_api_maps_model_Circle> addCircle(com_amap_api_maps_model_CircleOptions var1) {}
  
  Future<com_amap_api_maps_model_Arc> addArc(com_amap_api_maps_model_ArcOptions var1) {}
  
  Future<com_amap_api_maps_model_Polygon> addPolygon(com_amap_api_maps_model_PolygonOptions var1) {}
  
  Future<com_amap_api_maps_model_GroundOverlay> addGroundOverlay(com_amap_api_maps_model_GroundOverlayOptions var1) {}
  
  Future<com_amap_api_maps_model_MultiPointOverlay> addMultiPointOverlay(com_amap_api_maps_model_MultiPointOverlayOptions var1) {}
  
  Future<com_amap_api_maps_model_Marker> addMarker(com_amap_api_maps_model_MarkerOptions var1) {}
  
  Future<List<com_amap_api_maps_model_Marker>> addMarkers(List<com_amap_api_maps_model_MarkerOptions> var1, bool var2) {}
  
  Future<com_amap_api_maps_model_Text> addText(com_amap_api_maps_model_TextOptions var1) {}
  
  Future<com_amap_api_maps_model_TileOverlay> addTileOverlay(com_amap_api_maps_model_TileOverlayOptions var1) {}
  
  Future<void> clear() {}
  
  Future<int> getMapType() {}
  
  Future<void> setMapType(int var1) {}
  
  Future<bool> isTrafficEnabled() {}
  
  Future<void> setTrafficEnabled(bool var1) {}
  
  Future<bool> isIndoorEnabled() {}
  
  Future<void> setIndoorEnabled(bool var1) {}
  
  Future<void> set3DBuildingEnabled(bool var1) {}
  
  Future<bool> isMyLocationEnabled() {}
  
  Future<void> setMyLocationEnabled(bool var1) {}
  
  Future<void> setLoadOfflineData(bool var1) {}
  
  Future<void> setMyLocationStyle(com_amap_api_maps_model_MyLocationStyle var1) {}
  
  Future<void> setMyLocationType(int var1) {}
  
  Future<List<com_amap_api_maps_model_Marker>> getMapScreenMarkers() {}
  
  Future<void> setMapTextEnable(bool var1) {}
  
  Future<void> setRoadArrowEnable(bool var1) {}
  
  Future<void> setMyTrafficStyle(com_amap_api_maps_model_MyTrafficStyle var1) {}
  
  Future<android_location_Location> getMyLocation() {}
  
  Future<void> setLocationSource(com_amap_api_maps_LocationSource var1) {}
  
  Future<void> setMyLocationRotateAngle(double var1) {}
  
  Future<com_amap_api_maps_UiSettings> getAMapUiSettings() {}
  
  Future<com_amap_api_maps_Projection> getAMapProjection() {}
  
  Future<void> setOnCameraChangeListener(com_amap_api_maps_AMap_OnCameraChangeListener var1) {}
  
  Future<void> setOnMapClickListener(com_amap_api_maps_AMap_OnMapClickListener var1) {}
  
  Future<void> setOnMapTouchListener(com_amap_api_maps_AMap_OnMapTouchListener var1) {}
  
  Future<void> setOnMapLongClickListener(com_amap_api_maps_AMap_OnMapLongClickListener var1) {}
  
  Future<void> setOnMarkerClickListener(com_amap_api_maps_AMap_OnMarkerClickListener var1) {}
  
  Future<void> setOnPolylineClickListener(com_amap_api_maps_AMap_OnPolylineClickListener var1) {}
  
  Future<void> setOnMarkerDragListener(com_amap_api_maps_AMap_OnMarkerDragListener var1) {}
  
  Future<void> setOnMaploadedListener(com_amap_api_maps_AMap_OnMapLoadedListener var1) {}
  
  Future<void> setOnInfoWindowClickListener(com_amap_api_maps_AMap_OnInfoWindowClickListener var1) {}
  
  Future<void> setOnMyLocationChangeListener(com_amap_api_maps_AMap_OnMyLocationChangeListener var1) {}
  
  Future<void> setOnPOIClickListener(com_amap_api_maps_AMap_OnPOIClickListener var1) {}
  
  Future<void> setInfoWindowAdapter(com_amap_api_maps_AMap_InfoWindowAdapter var1) {}
  
  Future<void> setOnIndoorBuildingActiveListener(com_amap_api_maps_AMap_OnIndoorBuildingActiveListener var1) {}
  
  Future<void> getMapPrintScreen(com_amap_api_maps_AMap_onMapPrintScreenListener var1) {}
  
  Future<void> getMapScreenShot(com_amap_api_maps_AMap_OnMapScreenShotListener var1) {}
  
  Future<double> getScalePerPixel() {}
  
  Future<void> setRunLowFrame(bool var1) {}
  
  Future<void> removecache() {}
  
  Future<void> setCustomRenderer(com_amap_api_maps_CustomRenderer var1) {}
  
  Future<void> setCenterToPixel(int var1, int var2) {}
  
  Future<void> setMapTextZIndex(int var1) {}
  
  Future<int> getMapTextZIndex() {}
  
  Future<void> reloadMap() {}
  
  Future<void> setRenderFps(int var1) {}
  
  Future<void> setIndoorBuildingInfo(com_amap_api_maps_model_IndoorBuildingInfo var1) {}
  
  Future<void> setAMapGestureListener(com_amap_api_maps_model_AMapGestureListener var1) {}
  
  Future<double> getZoomToSpanLevel(com_amap_api_maps_model_LatLng var1, com_amap_api_maps_model_LatLng var2) {}
  
  Future<com_amap_api_maps_InfoWindowAnimationManager> getInfoWindowAnimationManager() {}
  
  Future<void> setMaskLayerParams(int var1, int var2, int var3, int var4, int var5, int var6) {}
  
  Future<void> setMaxZoomLevel(double var1) {}
  
  Future<void> setMinZoomLevel(double var1) {}
  
  Future<void> resetMinMaxZoomPreference() {}
  
  Future<void> setMapStatusLimits(com_amap_api_maps_model_LatLngBounds var1) {}
  
  Future<void> setCustomMapStylePath(String var1) {}
  
  Future<void> setMapCustomEnable(bool var1) {}
  
  Future<void> onChangeFinish() {}
  
  Future<void> setZoomScaleParam(double var1) {}
  
  Future<void> onFling() {}
  
  Future<int> getMapWidth() {}
  
  Future<int> getMapHeight() {}
  
  Future<double> getCameraAngle() {}
  
  Future<double> getSkyHeight() {}
  
  Future<bool> isMaploaded() {}
  
  Future<com_autonavi_amap_mapcore_MapConfig> getMapConfig() {}
  
  Future<android_view_View> getView() {}
  
  Future<void> setZOrderOnTop(bool var1) {}
  
  Future<void> destroy() {}
  
  Future<void> setVisibilityEx(int var1) {}
  
  Future<void> onActivityPause() {}
  
  Future<void> onActivityResume() {}
  
  Future<int> createGLOverlay(int var1) {}
  
  Future<int> getGlOverlayMgrPtr() {}
  
  Future<com_amap_api_maps_model_CrossOverlay> addCrossVector(com_amap_api_maps_model_CrossOverlayOptions var1) {}
  
  Future<com_amap_api_maps_model_RouteOverlay> addNaviRouteOverlay() {}
  
  Future<List<double>> getViewMatrix() {}
  
  Future<List<double>> getProjectionMatrix() {}
  
  Future<void> addOverlayTexture(int var1, com_autonavi_ae_gmap_gloverlay_GLTextureProperty var2) {}
  
  Future<bool> onTouchEvent(android_view_MotionEvent var1) {}
  
  Future<bool> canStopMapRender() {}
  
  Future<void> setCustomTextureResourcePath(String var1) {}
  
  Future<com_amap_api_maps_model_MyLocationStyle> getMyLocationStyle() {}
  
  Future<int> getRenderMode() {}
  
  Future<void> destroySurface(int var1) {}
  
  Future<void> requestRender() {}
  
  Future<void> resetRenderTime() {}
  
  Future<void> onIndoorBuildingActivity(int var1, List<int> var2) {}
  
  Future<com_amap_api_maps_model_AMapCameraInfo> getCamerInfo() {}
  
  Future<void> checkMapState(com_autonavi_ae_gmap_GLMapState var1) {}
  
  Future<void> setRenderMode(int var1) {}
  
  Future<void> setOnMultiPointClickListener(com_amap_api_maps_AMap_OnMultiPointClickListener var1) {}
  
  Future<String> getMapContentApprovalNumber() {}
  
  Future<String> getSatelliteImageApprovalNumber() {}
  
  Future<void> setMapLanguage(String var1) {}
  
  Future<void> setCustomMapStyleID(String var1) {}
  
  Future<com_amap_api_maps_model_BuildingOverlay> addBuildingOverlay() {}
  
  Future<com_amap_api_maps_model_GL3DModel> addGLModel(com_amap_api_maps_model_GL3DModelOptions var1) {}
  
  Future<com_amap_api_maps_model_particle_ParticleOverlay> addParticleOverlay(com_amap_api_maps_model_particle_ParticleOverlayOptions var1) {}
  
  Future<void> setCustomMapStyle(com_amap_api_maps_model_CustomMapStyleOptions var1) {}
  
}