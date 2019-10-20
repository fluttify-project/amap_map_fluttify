import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class Ref_iOS extends Ref {
  Future<bool> isKindOfMAOfflineCity() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAOfflineCity', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAOfflineItemNationWide() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAOfflineItemNationWide', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAMultiPoint() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAMultiPoint', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAGroundOverlay() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAGroundOverlay', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAPolygonRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAPolygonRenderer', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAPinAnnotationView() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAPinAnnotationView', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAHeatMapNode() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAHeatMapNode', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAHeatMapGradient() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAHeatMapGradient', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAHeatMapTileOverlay() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAHeatMapTileOverlay', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAMapStatus() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAMapStatus', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAPointAnnotation() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAPointAnnotation', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMACircle() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMACircle', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAArcRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAArcRenderer', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAMapCustomStyleOptions() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAMapCustomStyleOptions', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAPolygon() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAPolygon', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAParticleOverlay() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAParticleOverlay', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAPolyline() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAPolyline', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAMultiColoredPolylineRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAMultiColoredPolylineRenderer', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAAnimatedAnnotation() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAAnimatedAnnotation', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAMultiTexturePolylineRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAMultiTexturePolylineRenderer', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAOfflineProvince() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAOfflineProvince', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMATileOverlayRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMATileOverlayRenderer', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAOfflineItem() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAOfflineItem', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAGeodesicPolyline() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAGeodesicPolyline', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMATouchPoi() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMATouchPoi', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAOfflineItemMunicipality() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAOfflineItemMunicipality', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAMultiPolyline() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAMultiPolyline', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMATraceManager() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMATraceManager', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAMultiPointOverlayRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAMultiPointOverlayRenderer', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAIndoorFloorInfo() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAIndoorFloorInfo', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAIndoorInfo() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAIndoorInfo', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAPolylineRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAPolylineRenderer', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAAnnotationMoveAnimation() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAAnnotationMoveAnimation', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAShape() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAShape', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAAnnotationView() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAAnnotationView', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMATileOverlay() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMATileOverlay', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMATileOverlayPath() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMATileOverlayPath', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMACustomCalloutView() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMACustomCalloutView', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAOfflineItemCommonCity() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAOfflineItemCommonCity', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAOfflineMap() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAOfflineMap', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMACircleRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMACircleRenderer', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAParticleOverlayRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAParticleOverlayRenderer', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMACoordinateBounds() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMACoordinateBounds', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMACoordinateSpan() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMACoordinateSpan', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMACoordinateRegion() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMACoordinateRegion', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAMapPoint() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAMapPoint', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAMapSize() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAMapSize', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAMapRect() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAMapRect', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAParticleRandomVelocityGenerate() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAParticleRandomVelocityGenerate', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAParticleRandomColorGenerate() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAParticleRandomColorGenerate', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAParticleConstantRotationGenerate() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAParticleConstantRotationGenerate', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAParticleCurveSizeGenerate() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAParticleCurveSizeGenerate', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAParticleEmissionModule() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAParticleEmissionModule', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAParticleSinglePointShapeModule() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAParticleSinglePointShapeModule', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAParticleRectShapeModule() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAParticleRectShapeModule', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAParticleOverLifeModule() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAParticleOverLifeModule', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAParticleOverlayOptions() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAParticleOverlayOptions', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAParticleOverlayOptionsFactory() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAParticleOverlayOptionsFactory', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAOverlayRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAOverlayRenderer', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAUserLocation() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAUserLocation', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAMultiPointItem() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAMultiPointItem', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAMultiPointOverlay() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAMultiPointOverlay', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMACustomBuildingOverlayOption() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMACustomBuildingOverlayOption', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMACustomBuildingOverlay() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMACustomBuildingOverlay', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMATracePoint() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMATracePoint', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMATraceLocation() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMATraceLocation', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAArc() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAArc', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAUserLocationRepresentation() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAUserLocationRepresentation', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAMapView() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAMapView', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAOverlayPathRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAOverlayPathRenderer', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMAGroundOverlayRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMAGroundOverlayRenderer', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfMACustomBuildingOverlayRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::isKindOfMACustomBuildingOverlayRenderer', {'refId': refId});
    return result;
  }
  

  Future<MAOfflineCity> asMAOfflineCity() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAOfflineCity', {'refId': refId});
    return MAOfflineCity()..refId = result;
  }
  
  Future<MAOfflineItemNationWide> asMAOfflineItemNationWide() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAOfflineItemNationWide', {'refId': refId});
    return MAOfflineItemNationWide()..refId = result;
  }
  
  Future<MAMultiPoint> asMAMultiPoint() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAMultiPoint', {'refId': refId});
    return MAMultiPoint()..refId = result;
  }
  
  Future<MAGroundOverlay> asMAGroundOverlay() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAGroundOverlay', {'refId': refId});
    return MAGroundOverlay()..refId = result;
  }
  
  Future<MAPolygonRenderer> asMAPolygonRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAPolygonRenderer', {'refId': refId});
    return MAPolygonRenderer()..refId = result;
  }
  
  Future<MAPinAnnotationView> asMAPinAnnotationView() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAPinAnnotationView', {'refId': refId});
    return MAPinAnnotationView()..refId = result;
  }
  
  Future<MAHeatMapNode> asMAHeatMapNode() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAHeatMapNode', {'refId': refId});
    return MAHeatMapNode()..refId = result;
  }
  
  Future<MAHeatMapGradient> asMAHeatMapGradient() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAHeatMapGradient', {'refId': refId});
    return MAHeatMapGradient()..refId = result;
  }
  
  Future<MAHeatMapTileOverlay> asMAHeatMapTileOverlay() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAHeatMapTileOverlay', {'refId': refId});
    return MAHeatMapTileOverlay()..refId = result;
  }
  
  Future<MAMapStatus> asMAMapStatus() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAMapStatus', {'refId': refId});
    return MAMapStatus()..refId = result;
  }
  
  Future<MAPointAnnotation> asMAPointAnnotation() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAPointAnnotation', {'refId': refId});
    return MAPointAnnotation()..refId = result;
  }
  
  Future<MACircle> asMACircle() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMACircle', {'refId': refId});
    return MACircle()..refId = result;
  }
  
  Future<MAArcRenderer> asMAArcRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAArcRenderer', {'refId': refId});
    return MAArcRenderer()..refId = result;
  }
  
  Future<MAMapCustomStyleOptions> asMAMapCustomStyleOptions() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAMapCustomStyleOptions', {'refId': refId});
    return MAMapCustomStyleOptions()..refId = result;
  }
  
  Future<MAPolygon> asMAPolygon() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAPolygon', {'refId': refId});
    return MAPolygon()..refId = result;
  }
  
  Future<MAParticleOverlay> asMAParticleOverlay() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAParticleOverlay', {'refId': refId});
    return MAParticleOverlay()..refId = result;
  }
  
  Future<MAPolyline> asMAPolyline() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAPolyline', {'refId': refId});
    return MAPolyline()..refId = result;
  }
  
  Future<MAMultiColoredPolylineRenderer> asMAMultiColoredPolylineRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAMultiColoredPolylineRenderer', {'refId': refId});
    return MAMultiColoredPolylineRenderer()..refId = result;
  }
  
  Future<MAAnimatedAnnotation> asMAAnimatedAnnotation() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAAnimatedAnnotation', {'refId': refId});
    return MAAnimatedAnnotation()..refId = result;
  }
  
  Future<MAMultiTexturePolylineRenderer> asMAMultiTexturePolylineRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAMultiTexturePolylineRenderer', {'refId': refId});
    return MAMultiTexturePolylineRenderer()..refId = result;
  }
  
  Future<MAOfflineProvince> asMAOfflineProvince() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAOfflineProvince', {'refId': refId});
    return MAOfflineProvince()..refId = result;
  }
  
  Future<MATileOverlayRenderer> asMATileOverlayRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMATileOverlayRenderer', {'refId': refId});
    return MATileOverlayRenderer()..refId = result;
  }
  
  Future<MAOfflineItem> asMAOfflineItem() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAOfflineItem', {'refId': refId});
    return MAOfflineItem()..refId = result;
  }
  
  Future<MAGeodesicPolyline> asMAGeodesicPolyline() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAGeodesicPolyline', {'refId': refId});
    return MAGeodesicPolyline()..refId = result;
  }
  
  Future<MATouchPoi> asMATouchPoi() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMATouchPoi', {'refId': refId});
    return MATouchPoi()..refId = result;
  }
  
  Future<MAOfflineItemMunicipality> asMAOfflineItemMunicipality() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAOfflineItemMunicipality', {'refId': refId});
    return MAOfflineItemMunicipality()..refId = result;
  }
  
  Future<MAMultiPolyline> asMAMultiPolyline() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAMultiPolyline', {'refId': refId});
    return MAMultiPolyline()..refId = result;
  }
  
  Future<MATraceManager> asMATraceManager() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMATraceManager', {'refId': refId});
    return MATraceManager()..refId = result;
  }
  
  Future<MAMultiPointOverlayRenderer> asMAMultiPointOverlayRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAMultiPointOverlayRenderer', {'refId': refId});
    return MAMultiPointOverlayRenderer()..refId = result;
  }
  
  Future<MAIndoorFloorInfo> asMAIndoorFloorInfo() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAIndoorFloorInfo', {'refId': refId});
    return MAIndoorFloorInfo()..refId = result;
  }
  
  Future<MAIndoorInfo> asMAIndoorInfo() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAIndoorInfo', {'refId': refId});
    return MAIndoorInfo()..refId = result;
  }
  
  Future<MAPolylineRenderer> asMAPolylineRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAPolylineRenderer', {'refId': refId});
    return MAPolylineRenderer()..refId = result;
  }
  
  Future<MAAnnotationMoveAnimation> asMAAnnotationMoveAnimation() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAAnnotationMoveAnimation', {'refId': refId});
    return MAAnnotationMoveAnimation()..refId = result;
  }
  
  Future<MAShape> asMAShape() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAShape', {'refId': refId});
    return MAShape()..refId = result;
  }
  
  Future<MAAnnotationView> asMAAnnotationView() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAAnnotationView', {'refId': refId});
    return MAAnnotationView()..refId = result;
  }
  
  Future<MATileOverlay> asMATileOverlay() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMATileOverlay', {'refId': refId});
    return MATileOverlay()..refId = result;
  }
  
  Future<MATileOverlayPath> asMATileOverlayPath() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMATileOverlayPath', {'refId': refId});
    return MATileOverlayPath()..refId = result;
  }
  
  Future<MACustomCalloutView> asMACustomCalloutView() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMACustomCalloutView', {'refId': refId});
    return MACustomCalloutView()..refId = result;
  }
  
  Future<MAOfflineItemCommonCity> asMAOfflineItemCommonCity() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAOfflineItemCommonCity', {'refId': refId});
    return MAOfflineItemCommonCity()..refId = result;
  }
  
  Future<MAOfflineMap> asMAOfflineMap() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAOfflineMap', {'refId': refId});
    return MAOfflineMap()..refId = result;
  }
  
  Future<MACircleRenderer> asMACircleRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMACircleRenderer', {'refId': refId});
    return MACircleRenderer()..refId = result;
  }
  
  Future<MAParticleOverlayRenderer> asMAParticleOverlayRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAParticleOverlayRenderer', {'refId': refId});
    return MAParticleOverlayRenderer()..refId = result;
  }
  
  Future<MACoordinateBounds> asMACoordinateBounds() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMACoordinateBounds', {'refId': refId});
    return MACoordinateBounds()..refId = result;
  }
  
  Future<MACoordinateSpan> asMACoordinateSpan() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMACoordinateSpan', {'refId': refId});
    return MACoordinateSpan()..refId = result;
  }
  
  Future<MACoordinateRegion> asMACoordinateRegion() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMACoordinateRegion', {'refId': refId});
    return MACoordinateRegion()..refId = result;
  }
  
  Future<MAMapPoint> asMAMapPoint() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAMapPoint', {'refId': refId});
    return MAMapPoint()..refId = result;
  }
  
  Future<MAMapSize> asMAMapSize() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAMapSize', {'refId': refId});
    return MAMapSize()..refId = result;
  }
  
  Future<MAMapRect> asMAMapRect() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAMapRect', {'refId': refId});
    return MAMapRect()..refId = result;
  }
  
  Future<MAParticleRandomVelocityGenerate> asMAParticleRandomVelocityGenerate() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAParticleRandomVelocityGenerate', {'refId': refId});
    return MAParticleRandomVelocityGenerate()..refId = result;
  }
  
  Future<MAParticleRandomColorGenerate> asMAParticleRandomColorGenerate() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAParticleRandomColorGenerate', {'refId': refId});
    return MAParticleRandomColorGenerate()..refId = result;
  }
  
  Future<MAParticleConstantRotationGenerate> asMAParticleConstantRotationGenerate() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAParticleConstantRotationGenerate', {'refId': refId});
    return MAParticleConstantRotationGenerate()..refId = result;
  }
  
  Future<MAParticleCurveSizeGenerate> asMAParticleCurveSizeGenerate() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAParticleCurveSizeGenerate', {'refId': refId});
    return MAParticleCurveSizeGenerate()..refId = result;
  }
  
  Future<MAParticleEmissionModule> asMAParticleEmissionModule() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAParticleEmissionModule', {'refId': refId});
    return MAParticleEmissionModule()..refId = result;
  }
  
  Future<MAParticleSinglePointShapeModule> asMAParticleSinglePointShapeModule() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAParticleSinglePointShapeModule', {'refId': refId});
    return MAParticleSinglePointShapeModule()..refId = result;
  }
  
  Future<MAParticleRectShapeModule> asMAParticleRectShapeModule() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAParticleRectShapeModule', {'refId': refId});
    return MAParticleRectShapeModule()..refId = result;
  }
  
  Future<MAParticleOverLifeModule> asMAParticleOverLifeModule() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAParticleOverLifeModule', {'refId': refId});
    return MAParticleOverLifeModule()..refId = result;
  }
  
  Future<MAParticleOverlayOptions> asMAParticleOverlayOptions() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAParticleOverlayOptions', {'refId': refId});
    return MAParticleOverlayOptions()..refId = result;
  }
  
  Future<MAParticleOverlayOptionsFactory> asMAParticleOverlayOptionsFactory() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAParticleOverlayOptionsFactory', {'refId': refId});
    return MAParticleOverlayOptionsFactory()..refId = result;
  }
  
  Future<MAOverlayRenderer> asMAOverlayRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAOverlayRenderer', {'refId': refId});
    return MAOverlayRenderer()..refId = result;
  }
  
  Future<MAUserLocation> asMAUserLocation() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAUserLocation', {'refId': refId});
    return MAUserLocation()..refId = result;
  }
  
  Future<MAMultiPointItem> asMAMultiPointItem() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAMultiPointItem', {'refId': refId});
    return MAMultiPointItem()..refId = result;
  }
  
  Future<MAMultiPointOverlay> asMAMultiPointOverlay() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAMultiPointOverlay', {'refId': refId});
    return MAMultiPointOverlay()..refId = result;
  }
  
  Future<MACustomBuildingOverlayOption> asMACustomBuildingOverlayOption() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMACustomBuildingOverlayOption', {'refId': refId});
    return MACustomBuildingOverlayOption()..refId = result;
  }
  
  Future<MACustomBuildingOverlay> asMACustomBuildingOverlay() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMACustomBuildingOverlay', {'refId': refId});
    return MACustomBuildingOverlay()..refId = result;
  }
  
  Future<MATracePoint> asMATracePoint() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMATracePoint', {'refId': refId});
    return MATracePoint()..refId = result;
  }
  
  Future<MATraceLocation> asMATraceLocation() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMATraceLocation', {'refId': refId});
    return MATraceLocation()..refId = result;
  }
  
  Future<MAArc> asMAArc() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAArc', {'refId': refId});
    return MAArc()..refId = result;
  }
  
  Future<MAUserLocationRepresentation> asMAUserLocationRepresentation() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAUserLocationRepresentation', {'refId': refId});
    return MAUserLocationRepresentation()..refId = result;
  }
  
  Future<MAMapView> asMAMapView() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAMapView', {'refId': refId});
    return MAMapView()..refId = result;
  }
  
  Future<MAOverlayPathRenderer> asMAOverlayPathRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAOverlayPathRenderer', {'refId': refId});
    return MAOverlayPathRenderer()..refId = result;
  }
  
  Future<MAGroundOverlayRenderer> asMAGroundOverlayRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMAGroundOverlayRenderer', {'refId': refId});
    return MAGroundOverlayRenderer()..refId = result;
  }
  
  Future<MACustomBuildingOverlayRenderer> asMACustomBuildingOverlayRenderer() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('RefClass::asMACustomBuildingOverlayRenderer', {'refId': refId});
    return MACustomBuildingOverlayRenderer()..refId = result;
  }
  
}