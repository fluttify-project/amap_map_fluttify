import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IAMap on java_lang_Object {
  

  

  @mustCallSuper
  Future<com_amap_api_maps_model_CameraPosition> getCameraPosition() {
  
    debugPrint('getCameraPosition::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<double> getMaxZoomLevel() {
  
    debugPrint('getMaxZoomLevel::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<double> getMinZoomLevel() {
  
    debugPrint('getMinZoomLevel::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> moveCamera(com_amap_api_maps_CameraUpdate var1) {
  
    debugPrint('moveCamera::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> animateCamera(com_amap_api_maps_CameraUpdate var1) {
  
    debugPrint('animateCamera::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> animateCameraWithCallback(com_amap_api_maps_CameraUpdate var1, com_amap_api_maps_AMap_CancelableCallback var2) {
  
    debugPrint('animateCameraWithCallback::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> animateCameraWithDurationAndCallback(com_amap_api_maps_CameraUpdate var1, int var2, com_amap_api_maps_AMap_CancelableCallback var4) {
  
    debugPrint('animateCameraWithDurationAndCallback::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> stopAnimation() {
  
    debugPrint('stopAnimation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_NavigateArrow> addNavigateArrow(com_amap_api_maps_model_NavigateArrowOptions var1) {
  
    debugPrint('addNavigateArrow::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_Polyline> addPolyline(com_amap_api_maps_model_PolylineOptions var1) {
  
    debugPrint('addPolyline::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_Circle> addCircle(com_amap_api_maps_model_CircleOptions var1) {
  
    debugPrint('addCircle::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_Arc> addArc(com_amap_api_maps_model_ArcOptions var1) {
  
    debugPrint('addArc::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_Polygon> addPolygon(com_amap_api_maps_model_PolygonOptions var1) {
  
    debugPrint('addPolygon::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_GroundOverlay> addGroundOverlay(com_amap_api_maps_model_GroundOverlayOptions var1) {
  
    debugPrint('addGroundOverlay::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_MultiPointOverlay> addMultiPointOverlay(com_amap_api_maps_model_MultiPointOverlayOptions var1) {
  
    debugPrint('addMultiPointOverlay::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_Marker> addMarker(com_amap_api_maps_model_MarkerOptions var1) {
  
    debugPrint('addMarker::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<List<com_amap_api_maps_model_Marker>> addMarkers(List<com_amap_api_maps_model_MarkerOptions> var1, bool var2) {
  
    debugPrint('addMarkers::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_Text> addText(com_amap_api_maps_model_TextOptions var1) {
  
    debugPrint('addText::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_TileOverlay> addTileOverlay(com_amap_api_maps_model_TileOverlayOptions var1) {
  
    debugPrint('addTileOverlay::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> clear() {
  
    debugPrint('clear::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<int> getMapType() {
  
    debugPrint('getMapType::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setMapType(int var1) {
  
    debugPrint('setMapType::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> isTrafficEnabled() {
  
    debugPrint('isTrafficEnabled::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setTrafficEnabled(bool var1) {
  
    debugPrint('setTrafficEnabled::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> isIndoorEnabled() {
  
    debugPrint('isIndoorEnabled::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setIndoorEnabled(bool var1) {
  
    debugPrint('setIndoorEnabled::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> set3DBuildingEnabled(bool var1) {
  
    debugPrint('set3DBuildingEnabled::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> isMyLocationEnabled() {
  
    debugPrint('isMyLocationEnabled::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setMyLocationEnabled(bool var1) {
  
    debugPrint('setMyLocationEnabled::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setLoadOfflineData(bool var1) {
  
    debugPrint('setLoadOfflineData::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setMyLocationStyle(com_amap_api_maps_model_MyLocationStyle var1) {
  
    debugPrint('setMyLocationStyle::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setMyLocationType(int var1) {
  
    debugPrint('setMyLocationType::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<List<com_amap_api_maps_model_Marker>> getMapScreenMarkers() {
  
    debugPrint('getMapScreenMarkers::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setMapTextEnable(bool var1) {
  
    debugPrint('setMapTextEnable::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setRoadArrowEnable(bool var1) {
  
    debugPrint('setRoadArrowEnable::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setMyTrafficStyle(com_amap_api_maps_model_MyTrafficStyle var1) {
  
    debugPrint('setMyTrafficStyle::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<android_location_Location> getMyLocation() {
  
    debugPrint('getMyLocation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setLocationSource(com_amap_api_maps_LocationSource var1) {
  
    debugPrint('setLocationSource::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setMyLocationRotateAngle(double var1) {
  
    debugPrint('setMyLocationRotateAngle::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_UiSettings> getAMapUiSettings() {
  
    debugPrint('getAMapUiSettings::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_Projection> getAMapProjection() {
  
    debugPrint('getAMapProjection::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setOnCameraChangeListener(com_amap_api_maps_AMap_OnCameraChangeListener var1) {
  
    debugPrint('setOnCameraChangeListener::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setOnMapClickListener(com_amap_api_maps_AMap_OnMapClickListener var1) {
  
    debugPrint('setOnMapClickListener::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setOnMapTouchListener(com_amap_api_maps_AMap_OnMapTouchListener var1) {
  
    debugPrint('setOnMapTouchListener::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setOnMapLongClickListener(com_amap_api_maps_AMap_OnMapLongClickListener var1) {
  
    debugPrint('setOnMapLongClickListener::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setOnMarkerClickListener(com_amap_api_maps_AMap_OnMarkerClickListener var1) {
  
    debugPrint('setOnMarkerClickListener::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setOnPolylineClickListener(com_amap_api_maps_AMap_OnPolylineClickListener var1) {
  
    debugPrint('setOnPolylineClickListener::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setOnMarkerDragListener(com_amap_api_maps_AMap_OnMarkerDragListener var1) {
  
    debugPrint('setOnMarkerDragListener::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setOnMaploadedListener(com_amap_api_maps_AMap_OnMapLoadedListener var1) {
  
    debugPrint('setOnMaploadedListener::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setOnInfoWindowClickListener(com_amap_api_maps_AMap_OnInfoWindowClickListener var1) {
  
    debugPrint('setOnInfoWindowClickListener::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setOnMyLocationChangeListener(com_amap_api_maps_AMap_OnMyLocationChangeListener var1) {
  
    debugPrint('setOnMyLocationChangeListener::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setOnPOIClickListener(com_amap_api_maps_AMap_OnPOIClickListener var1) {
  
    debugPrint('setOnPOIClickListener::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setInfoWindowAdapter(com_amap_api_maps_AMap_InfoWindowAdapter var1) {
  
    debugPrint('setInfoWindowAdapter::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setOnIndoorBuildingActiveListener(com_amap_api_maps_AMap_OnIndoorBuildingActiveListener var1) {
  
    debugPrint('setOnIndoorBuildingActiveListener::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> getMapPrintScreen(com_amap_api_maps_AMap_onMapPrintScreenListener var1) {
  
    debugPrint('getMapPrintScreen::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> getMapScreenShot(com_amap_api_maps_AMap_OnMapScreenShotListener var1) {
  
    debugPrint('getMapScreenShot::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<double> getScalePerPixel() {
  
    debugPrint('getScalePerPixel::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setRunLowFrame(bool var1) {
  
    debugPrint('setRunLowFrame::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> removecache() {
  
    debugPrint('removecache::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setCustomRenderer(com_amap_api_maps_CustomRenderer var1) {
  
    debugPrint('setCustomRenderer::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setCenterToPixel(int var1, int var2) {
  
    debugPrint('setCenterToPixel::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setMapTextZIndex(int var1) {
  
    debugPrint('setMapTextZIndex::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<int> getMapTextZIndex() {
  
    debugPrint('getMapTextZIndex::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> reloadMap() {
  
    debugPrint('reloadMap::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setRenderFps(int var1) {
  
    debugPrint('setRenderFps::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setIndoorBuildingInfo(com_amap_api_maps_model_IndoorBuildingInfo var1) {
  
    debugPrint('setIndoorBuildingInfo::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setAMapGestureListener(com_amap_api_maps_model_AMapGestureListener var1) {
  
    debugPrint('setAMapGestureListener::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<double> getZoomToSpanLevel(com_amap_api_maps_model_LatLng var1, com_amap_api_maps_model_LatLng var2) {
  
    debugPrint('getZoomToSpanLevel::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_InfoWindowAnimationManager> getInfoWindowAnimationManager() {
  
    debugPrint('getInfoWindowAnimationManager::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setMaskLayerParams(int var1, int var2, int var3, int var4, int var5, int var6) {
  
    debugPrint('setMaskLayerParams::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setMaxZoomLevel(double var1) {
  
    debugPrint('setMaxZoomLevel::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setMinZoomLevel(double var1) {
  
    debugPrint('setMinZoomLevel::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> resetMinMaxZoomPreference() {
  
    debugPrint('resetMinMaxZoomPreference::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setMapStatusLimits(com_amap_api_maps_model_LatLngBounds var1) {
  
    debugPrint('setMapStatusLimits::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setCustomMapStylePath(String var1) {
  
    debugPrint('setCustomMapStylePath::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setMapCustomEnable(bool var1) {
  
    debugPrint('setMapCustomEnable::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onChangeFinish() {
  
    debugPrint('onChangeFinish::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setZoomScaleParam(double var1) {
  
    debugPrint('setZoomScaleParam::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onFling() {
  
    debugPrint('onFling::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<int> getMapWidth() {
  
    debugPrint('getMapWidth::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<int> getMapHeight() {
  
    debugPrint('getMapHeight::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<double> getCameraAngle() {
  
    debugPrint('getCameraAngle::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<double> getSkyHeight() {
  
    debugPrint('getSkyHeight::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> isMaploaded() {
  
    debugPrint('isMaploaded::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_autonavi_amap_mapcore_MapConfig> getMapConfig() {
  
    debugPrint('getMapConfig::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<android_view_View> getView() {
  
    debugPrint('getView::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setZOrderOnTop(bool var1) {
  
    debugPrint('setZOrderOnTop::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> destroy() {
  
    debugPrint('destroy::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setVisibilityEx(int var1) {
  
    debugPrint('setVisibilityEx::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onActivityPause() {
  
    debugPrint('onActivityPause::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onActivityResume() {
  
    debugPrint('onActivityResume::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<int> createGLOverlay(int var1) {
  
    debugPrint('createGLOverlay::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<int> getGlOverlayMgrPtr() {
  
    debugPrint('getGlOverlayMgrPtr::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_CrossOverlay> addCrossVector(com_amap_api_maps_model_CrossOverlayOptions var1) {
  
    debugPrint('addCrossVector::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_RouteOverlay> addNaviRouteOverlay() {
  
    debugPrint('addNaviRouteOverlay::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<List<double>> getViewMatrix() {
  
    debugPrint('getViewMatrix::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<List<double>> getProjectionMatrix() {
  
    debugPrint('getProjectionMatrix::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> addOverlayTexture(int var1, com_autonavi_ae_gmap_gloverlay_GLTextureProperty var2) {
  
    debugPrint('addOverlayTexture::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> onTouchEvent(android_view_MotionEvent var1) {
  
    debugPrint('onTouchEvent::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> canStopMapRender() {
  
    debugPrint('canStopMapRender::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setCustomTextureResourcePath(String var1) {
  
    debugPrint('setCustomTextureResourcePath::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_MyLocationStyle> getMyLocationStyle() {
  
    debugPrint('getMyLocationStyle::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<int> getRenderMode() {
  
    debugPrint('getRenderMode::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> destroySurface(int var1) {
  
    debugPrint('destroySurface::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> requestRender() {
  
    debugPrint('requestRender::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> resetRenderTime() {
  
    debugPrint('resetRenderTime::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onIndoorBuildingActivity(int var1, List<int> var2) {
  
    debugPrint('onIndoorBuildingActivity::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_AMapCameraInfo> getCamerInfo() {
  
    debugPrint('getCamerInfo::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> checkMapState(com_autonavi_ae_gmap_GLMapState var1) {
  
    debugPrint('checkMapState::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setRenderMode(int var1) {
  
    debugPrint('setRenderMode::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setOnMultiPointClickListener(com_amap_api_maps_AMap_OnMultiPointClickListener var1) {
  
    debugPrint('setOnMultiPointClickListener::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<String> getMapContentApprovalNumber() {
  
    debugPrint('getMapContentApprovalNumber::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<String> getSatelliteImageApprovalNumber() {
  
    debugPrint('getSatelliteImageApprovalNumber::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setMapLanguage(String var1) {
  
    debugPrint('setMapLanguage::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setCustomMapStyleID(String var1) {
  
    debugPrint('setCustomMapStyleID::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_BuildingOverlay> addBuildingOverlay() {
  
    debugPrint('addBuildingOverlay::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_GL3DModel> addGLModel(com_amap_api_maps_model_GL3DModelOptions var1) {
  
    debugPrint('addGLModel::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_particle_ParticleOverlay> addParticleOverlay(com_amap_api_maps_model_particle_ParticleOverlayOptions var1) {
  
    debugPrint('addParticleOverlay::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setCustomMapStyle(com_amap_api_maps_model_CustomMapStyleOptions var1) {
  
    debugPrint('setCustomMapStyle::kCallbackPool: $kCallbackPool');
  }
  
}