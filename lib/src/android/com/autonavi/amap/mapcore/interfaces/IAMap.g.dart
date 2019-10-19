import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IAMap on java_lang_Object {
  

  

  @mustCallSuper
  Future<com_amap_api_maps_model_CameraPosition> getCameraPosition() {
  
    debugPrint('getCameraPosition::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<double> getMaxZoomLevel() {
  
    debugPrint('getMaxZoomLevel::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<double> getMinZoomLevel() {
  
    debugPrint('getMinZoomLevel::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> moveCamera(com_amap_api_maps_CameraUpdate var1) {
  
    debugPrint('moveCamera::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> animateCamera(com_amap_api_maps_CameraUpdate var1) {
  
    debugPrint('animateCamera::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> animateCameraWithCallback(com_amap_api_maps_CameraUpdate var1, com_amap_api_maps_AMap_CancelableCallback var2) {
  
    debugPrint('animateCameraWithCallback::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> animateCameraWithDurationAndCallback(com_amap_api_maps_CameraUpdate var1, int var2, com_amap_api_maps_AMap_CancelableCallback var4) {
  
    debugPrint('animateCameraWithDurationAndCallback::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> stopAnimation() {
  
    debugPrint('stopAnimation::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_NavigateArrow> addNavigateArrow(com_amap_api_maps_model_NavigateArrowOptions var1) {
  
    debugPrint('addNavigateArrow::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_Polyline> addPolyline(com_amap_api_maps_model_PolylineOptions var1) {
  
    debugPrint('addPolyline::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_Circle> addCircle(com_amap_api_maps_model_CircleOptions var1) {
  
    debugPrint('addCircle::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_Arc> addArc(com_amap_api_maps_model_ArcOptions var1) {
  
    debugPrint('addArc::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_Polygon> addPolygon(com_amap_api_maps_model_PolygonOptions var1) {
  
    debugPrint('addPolygon::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_GroundOverlay> addGroundOverlay(com_amap_api_maps_model_GroundOverlayOptions var1) {
  
    debugPrint('addGroundOverlay::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_MultiPointOverlay> addMultiPointOverlay(com_amap_api_maps_model_MultiPointOverlayOptions var1) {
  
    debugPrint('addMultiPointOverlay::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_Marker> addMarker(com_amap_api_maps_model_MarkerOptions var1) {
  
    debugPrint('addMarker::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<List<com_amap_api_maps_model_Marker>> addMarkers(List<com_amap_api_maps_model_MarkerOptions> var1, bool var2) {
  
    debugPrint('addMarkers::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_Text> addText(com_amap_api_maps_model_TextOptions var1) {
  
    debugPrint('addText::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_TileOverlay> addTileOverlay(com_amap_api_maps_model_TileOverlayOptions var1) {
  
    debugPrint('addTileOverlay::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> clear() {
  
    debugPrint('clear::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<int> getMapType() {
  
    debugPrint('getMapType::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setMapType(int var1) {
  
    debugPrint('setMapType::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<bool> isTrafficEnabled() {
  
    debugPrint('isTrafficEnabled::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setTrafficEnabled(bool var1) {
  
    debugPrint('setTrafficEnabled::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<bool> isIndoorEnabled() {
  
    debugPrint('isIndoorEnabled::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setIndoorEnabled(bool var1) {
  
    debugPrint('setIndoorEnabled::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> set3DBuildingEnabled(bool var1) {
  
    debugPrint('set3DBuildingEnabled::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<bool> isMyLocationEnabled() {
  
    debugPrint('isMyLocationEnabled::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setMyLocationEnabled(bool var1) {
  
    debugPrint('setMyLocationEnabled::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setLoadOfflineData(bool var1) {
  
    debugPrint('setLoadOfflineData::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setMyLocationStyle(com_amap_api_maps_model_MyLocationStyle var1) {
  
    debugPrint('setMyLocationStyle::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setMyLocationType(int var1) {
  
    debugPrint('setMyLocationType::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<List<com_amap_api_maps_model_Marker>> getMapScreenMarkers() {
  
    debugPrint('getMapScreenMarkers::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setMapTextEnable(bool var1) {
  
    debugPrint('setMapTextEnable::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setRoadArrowEnable(bool var1) {
  
    debugPrint('setRoadArrowEnable::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setMyTrafficStyle(com_amap_api_maps_model_MyTrafficStyle var1) {
  
    debugPrint('setMyTrafficStyle::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<android_location_Location> getMyLocation() {
  
    debugPrint('getMyLocation::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setLocationSource(com_amap_api_maps_LocationSource var1) {
  
    debugPrint('setLocationSource::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setMyLocationRotateAngle(double var1) {
  
    debugPrint('setMyLocationRotateAngle::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_UiSettings> getAMapUiSettings() {
  
    debugPrint('getAMapUiSettings::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_Projection> getAMapProjection() {
  
    debugPrint('getAMapProjection::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setOnCameraChangeListener(com_amap_api_maps_AMap_OnCameraChangeListener var1) {
  
    debugPrint('setOnCameraChangeListener::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setOnMapClickListener(com_amap_api_maps_AMap_OnMapClickListener var1) {
  
    debugPrint('setOnMapClickListener::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setOnMapTouchListener(com_amap_api_maps_AMap_OnMapTouchListener var1) {
  
    debugPrint('setOnMapTouchListener::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setOnMapLongClickListener(com_amap_api_maps_AMap_OnMapLongClickListener var1) {
  
    debugPrint('setOnMapLongClickListener::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setOnMarkerClickListener(com_amap_api_maps_AMap_OnMarkerClickListener var1) {
  
    debugPrint('setOnMarkerClickListener::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setOnPolylineClickListener(com_amap_api_maps_AMap_OnPolylineClickListener var1) {
  
    debugPrint('setOnPolylineClickListener::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setOnMarkerDragListener(com_amap_api_maps_AMap_OnMarkerDragListener var1) {
  
    debugPrint('setOnMarkerDragListener::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setOnMaploadedListener(com_amap_api_maps_AMap_OnMapLoadedListener var1) {
  
    debugPrint('setOnMaploadedListener::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setOnInfoWindowClickListener(com_amap_api_maps_AMap_OnInfoWindowClickListener var1) {
  
    debugPrint('setOnInfoWindowClickListener::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setOnMyLocationChangeListener(com_amap_api_maps_AMap_OnMyLocationChangeListener var1) {
  
    debugPrint('setOnMyLocationChangeListener::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setOnPOIClickListener(com_amap_api_maps_AMap_OnPOIClickListener var1) {
  
    debugPrint('setOnPOIClickListener::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setInfoWindowAdapter(com_amap_api_maps_AMap_InfoWindowAdapter var1) {
  
    debugPrint('setInfoWindowAdapter::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setOnIndoorBuildingActiveListener(com_amap_api_maps_AMap_OnIndoorBuildingActiveListener var1) {
  
    debugPrint('setOnIndoorBuildingActiveListener::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> getMapPrintScreen(com_amap_api_maps_AMap_onMapPrintScreenListener var1) {
  
    debugPrint('getMapPrintScreen::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> getMapScreenShot(com_amap_api_maps_AMap_OnMapScreenShotListener var1) {
  
    debugPrint('getMapScreenShot::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<double> getScalePerPixel() {
  
    debugPrint('getScalePerPixel::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setRunLowFrame(bool var1) {
  
    debugPrint('setRunLowFrame::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> removecache() {
  
    debugPrint('removecache::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setCustomRenderer(com_amap_api_maps_CustomRenderer var1) {
  
    debugPrint('setCustomRenderer::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setCenterToPixel(int var1, int var2) {
  
    debugPrint('setCenterToPixel::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setMapTextZIndex(int var1) {
  
    debugPrint('setMapTextZIndex::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<int> getMapTextZIndex() {
  
    debugPrint('getMapTextZIndex::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> reloadMap() {
  
    debugPrint('reloadMap::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setRenderFps(int var1) {
  
    debugPrint('setRenderFps::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setIndoorBuildingInfo(com_amap_api_maps_model_IndoorBuildingInfo var1) {
  
    debugPrint('setIndoorBuildingInfo::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setAMapGestureListener(com_amap_api_maps_model_AMapGestureListener var1) {
  
    debugPrint('setAMapGestureListener::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<double> getZoomToSpanLevel(com_amap_api_maps_model_LatLng var1, com_amap_api_maps_model_LatLng var2) {
  
    debugPrint('getZoomToSpanLevel::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_InfoWindowAnimationManager> getInfoWindowAnimationManager() {
  
    debugPrint('getInfoWindowAnimationManager::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setMaskLayerParams(int var1, int var2, int var3, int var4, int var5, int var6) {
  
    debugPrint('setMaskLayerParams::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setMaxZoomLevel(double var1) {
  
    debugPrint('setMaxZoomLevel::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setMinZoomLevel(double var1) {
  
    debugPrint('setMinZoomLevel::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> resetMinMaxZoomPreference() {
  
    debugPrint('resetMinMaxZoomPreference::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setMapStatusLimits(com_amap_api_maps_model_LatLngBounds var1) {
  
    debugPrint('setMapStatusLimits::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setCustomMapStylePath(String var1) {
  
    debugPrint('setCustomMapStylePath::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setMapCustomEnable(bool var1) {
  
    debugPrint('setMapCustomEnable::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> onChangeFinish() {
  
    debugPrint('onChangeFinish::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setZoomScaleParam(double var1) {
  
    debugPrint('setZoomScaleParam::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> onFling() {
  
    debugPrint('onFling::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<int> getMapWidth() {
  
    debugPrint('getMapWidth::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<int> getMapHeight() {
  
    debugPrint('getMapHeight::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<double> getCameraAngle() {
  
    debugPrint('getCameraAngle::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<double> getSkyHeight() {
  
    debugPrint('getSkyHeight::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<bool> isMaploaded() {
  
    debugPrint('isMaploaded::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_autonavi_amap_mapcore_MapConfig> getMapConfig() {
  
    debugPrint('getMapConfig::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<android_view_View> getView() {
  
    debugPrint('getView::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setZOrderOnTop(bool var1) {
  
    debugPrint('setZOrderOnTop::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> destroy() {
  
    debugPrint('destroy::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setVisibilityEx(int var1) {
  
    debugPrint('setVisibilityEx::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> onActivityPause() {
  
    debugPrint('onActivityPause::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> onActivityResume() {
  
    debugPrint('onActivityResume::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<int> createGLOverlay(int var1) {
  
    debugPrint('createGLOverlay::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<int> getGlOverlayMgrPtr() {
  
    debugPrint('getGlOverlayMgrPtr::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_CrossOverlay> addCrossVector(com_amap_api_maps_model_CrossOverlayOptions var1) {
  
    debugPrint('addCrossVector::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_RouteOverlay> addNaviRouteOverlay() {
  
    debugPrint('addNaviRouteOverlay::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<List<double>> getViewMatrix() {
  
    debugPrint('getViewMatrix::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<List<double>> getProjectionMatrix() {
  
    debugPrint('getProjectionMatrix::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> addOverlayTexture(int var1, com_autonavi_ae_gmap_gloverlay_GLTextureProperty var2) {
  
    debugPrint('addOverlayTexture::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<bool> onTouchEvent(android_view_MotionEvent var1) {
  
    debugPrint('onTouchEvent::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<bool> canStopMapRender() {
  
    debugPrint('canStopMapRender::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setCustomTextureResourcePath(String var1) {
  
    debugPrint('setCustomTextureResourcePath::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_MyLocationStyle> getMyLocationStyle() {
  
    debugPrint('getMyLocationStyle::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<int> getRenderMode() {
  
    debugPrint('getRenderMode::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> destroySurface(int var1) {
  
    debugPrint('destroySurface::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> requestRender() {
  
    debugPrint('requestRender::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> resetRenderTime() {
  
    debugPrint('resetRenderTime::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> onIndoorBuildingActivity(int var1, List<int> var2) {
  
    debugPrint('onIndoorBuildingActivity::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_AMapCameraInfo> getCamerInfo() {
  
    debugPrint('getCamerInfo::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> checkMapState(com_autonavi_ae_gmap_GLMapState var1) {
  
    debugPrint('checkMapState::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setRenderMode(int var1) {
  
    debugPrint('setRenderMode::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setOnMultiPointClickListener(com_amap_api_maps_AMap_OnMultiPointClickListener var1) {
  
    debugPrint('setOnMultiPointClickListener::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<String> getMapContentApprovalNumber() {
  
    debugPrint('getMapContentApprovalNumber::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<String> getSatelliteImageApprovalNumber() {
  
    debugPrint('getSatelliteImageApprovalNumber::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setMapLanguage(String var1) {
  
    debugPrint('setMapLanguage::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setCustomMapStyleID(String var1) {
  
    debugPrint('setCustomMapStyleID::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_BuildingOverlay> addBuildingOverlay() {
  
    debugPrint('addBuildingOverlay::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_GL3DModel> addGLModel(com_amap_api_maps_model_GL3DModelOptions var1) {
  
    debugPrint('addGLModel::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_particle_ParticleOverlay> addParticleOverlay(com_amap_api_maps_model_particle_ParticleOverlayOptions var1) {
  
    debugPrint('addParticleOverlay::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setCustomMapStyle(com_amap_api_maps_model_CustomMapStyleOptions var1) {
  
    debugPrint('setCustomMapStyle::kNativeObjectPool: $kNativeObjectPool');
  }
  
}