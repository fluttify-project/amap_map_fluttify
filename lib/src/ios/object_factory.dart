import 'dart:typed_data';

import 'package:flutter/services.dart';

import 'package:amap_map_flutter/src/ios/ios.export.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class ObjectFactory_iOS {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  static Future<CLLocationCoordinate2D> createCLLocationCoordinate2D(double latitude, double longitude) async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createCLLocationCoordinate2D', {'latitude': latitude, 'longitude': longitude});
    return CLLocationCoordinate2D()..refId = refId;
  }

  static Future<UIImage> createBitmap(Uint8List bitmapBytes) async {
    final refId =
        await _channel.invokeMethod('ObjectFactory::createBitmap', {'bitmapBytes': bitmapBytes});
    return UIImage()..refId = refId;
  }

  static Future<void> release(Ref_iOS ref) async {
    await _channel.invokeMethod('ObjectFactory::release', {'refId': ref.refId});
  }

  static Future<void> clearRefMap() async {
    await _channel.invokeMethod('ObjectFactory::clearRefMap');
  }

  static Future<AMapURLSearch> createAMapURLSearch() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapURLSearch');
    return AMapURLSearch()..refId = refId;
  }
  
  static Future<AMapNaviConfig> createAMapNaviConfig() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapNaviConfig');
    return AMapNaviConfig()..refId = refId;
  }
  
  static Future<AMapRouteConfig> createAMapRouteConfig() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapRouteConfig');
    return AMapRouteConfig()..refId = refId;
  }
  
  static Future<AMapPOIConfig> createAMapPOIConfig() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapPOIConfig');
    return AMapPOIConfig()..refId = refId;
  }
  
  static Future<AMapServices> createAMapServices() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapServices');
    return AMapServices()..refId = refId;
  }
  
  static Future<MAOfflineCity> createMAOfflineCity() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAOfflineCity');
    return MAOfflineCity()..refId = refId;
  }
  
  static Future<MAOfflineItemNationWide> createMAOfflineItemNationWide() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAOfflineItemNationWide');
    return MAOfflineItemNationWide()..refId = refId;
  }
  
  static Future<MAMultiPoint> createMAMultiPoint() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAMultiPoint');
    return MAMultiPoint()..refId = refId;
  }
  
  static Future<MAGroundOverlay> createMAGroundOverlay() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAGroundOverlay');
    return MAGroundOverlay()..refId = refId;
  }
  
  static Future<MAPolygonRenderer> createMAPolygonRenderer() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAPolygonRenderer');
    return MAPolygonRenderer()..refId = refId;
  }
  
  static Future<MAPinAnnotationView> createMAPinAnnotationView() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAPinAnnotationView');
    return MAPinAnnotationView()..refId = refId;
  }
  
  static Future<MAHeatMapNode> createMAHeatMapNode() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAHeatMapNode');
    return MAHeatMapNode()..refId = refId;
  }
  
  static Future<MAHeatMapGradient> createMAHeatMapGradient() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAHeatMapGradient');
    return MAHeatMapGradient()..refId = refId;
  }
  
  static Future<MAHeatMapTileOverlay> createMAHeatMapTileOverlay() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAHeatMapTileOverlay');
    return MAHeatMapTileOverlay()..refId = refId;
  }
  
  static Future<MAMapStatus> createMAMapStatus() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAMapStatus');
    return MAMapStatus()..refId = refId;
  }
  
  static Future<MAPointAnnotation> createMAPointAnnotation() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAPointAnnotation');
    return MAPointAnnotation()..refId = refId;
  }
  
  static Future<MACircle> createMACircle() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMACircle');
    return MACircle()..refId = refId;
  }
  
  static Future<MAArcRenderer> createMAArcRenderer() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAArcRenderer');
    return MAArcRenderer()..refId = refId;
  }
  
  static Future<MAMapCustomStyleOptions> createMAMapCustomStyleOptions() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAMapCustomStyleOptions');
    return MAMapCustomStyleOptions()..refId = refId;
  }
  
  static Future<MAPolygon> createMAPolygon() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAPolygon');
    return MAPolygon()..refId = refId;
  }
  
  static Future<MAParticleOverlay> createMAParticleOverlay() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAParticleOverlay');
    return MAParticleOverlay()..refId = refId;
  }
  
  static Future<MAPolyline> createMAPolyline() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAPolyline');
    return MAPolyline()..refId = refId;
  }
  
  static Future<MAMultiColoredPolylineRenderer> createMAMultiColoredPolylineRenderer() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAMultiColoredPolylineRenderer');
    return MAMultiColoredPolylineRenderer()..refId = refId;
  }
  
  static Future<MAAnimatedAnnotation> createMAAnimatedAnnotation() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAAnimatedAnnotation');
    return MAAnimatedAnnotation()..refId = refId;
  }
  
  static Future<MAMultiTexturePolylineRenderer> createMAMultiTexturePolylineRenderer() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAMultiTexturePolylineRenderer');
    return MAMultiTexturePolylineRenderer()..refId = refId;
  }
  
  static Future<MAOfflineProvince> createMAOfflineProvince() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAOfflineProvince');
    return MAOfflineProvince()..refId = refId;
  }
  
  static Future<MATileOverlayRenderer> createMATileOverlayRenderer() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMATileOverlayRenderer');
    return MATileOverlayRenderer()..refId = refId;
  }
  
  static Future<MAOfflineItem> createMAOfflineItem() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAOfflineItem');
    return MAOfflineItem()..refId = refId;
  }
  
  static Future<MAGeodesicPolyline> createMAGeodesicPolyline() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAGeodesicPolyline');
    return MAGeodesicPolyline()..refId = refId;
  }
  
  static Future<MATouchPoi> createMATouchPoi() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMATouchPoi');
    return MATouchPoi()..refId = refId;
  }
  
  static Future<MAOfflineItemMunicipality> createMAOfflineItemMunicipality() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAOfflineItemMunicipality');
    return MAOfflineItemMunicipality()..refId = refId;
  }
  
  static Future<MAMultiPolyline> createMAMultiPolyline() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAMultiPolyline');
    return MAMultiPolyline()..refId = refId;
  }
  
  static Future<MATraceManager> createMATraceManager() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMATraceManager');
    return MATraceManager()..refId = refId;
  }
  
  static Future<MAMultiPointOverlayRenderer> createMAMultiPointOverlayRenderer() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAMultiPointOverlayRenderer');
    return MAMultiPointOverlayRenderer()..refId = refId;
  }
  
  static Future<MAIndoorFloorInfo> createMAIndoorFloorInfo() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAIndoorFloorInfo');
    return MAIndoorFloorInfo()..refId = refId;
  }
  
  static Future<MAIndoorInfo> createMAIndoorInfo() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAIndoorInfo');
    return MAIndoorInfo()..refId = refId;
  }
  
  static Future<MAPolylineRenderer> createMAPolylineRenderer() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAPolylineRenderer');
    return MAPolylineRenderer()..refId = refId;
  }
  
  static Future<MAAnnotationMoveAnimation> createMAAnnotationMoveAnimation() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAAnnotationMoveAnimation');
    return MAAnnotationMoveAnimation()..refId = refId;
  }
  
  static Future<MAShape> createMAShape() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAShape');
    return MAShape()..refId = refId;
  }
  
  static Future<MAAnnotationView> createMAAnnotationView() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAAnnotationView');
    return MAAnnotationView()..refId = refId;
  }
  
  static Future<MATileOverlay> createMATileOverlay() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMATileOverlay');
    return MATileOverlay()..refId = refId;
  }
  
  static Future<MATileOverlayPath> createMATileOverlayPath() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMATileOverlayPath');
    return MATileOverlayPath()..refId = refId;
  }
  
  static Future<MACustomCalloutView> createMACustomCalloutView() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMACustomCalloutView');
    return MACustomCalloutView()..refId = refId;
  }
  
  static Future<MAOfflineItemCommonCity> createMAOfflineItemCommonCity() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAOfflineItemCommonCity');
    return MAOfflineItemCommonCity()..refId = refId;
  }
  
  static Future<MAOfflineMap> createMAOfflineMap() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAOfflineMap');
    return MAOfflineMap()..refId = refId;
  }
  
  static Future<MACircleRenderer> createMACircleRenderer() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMACircleRenderer');
    return MACircleRenderer()..refId = refId;
  }
  
  static Future<MAParticleOverlayRenderer> createMAParticleOverlayRenderer() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAParticleOverlayRenderer');
    return MAParticleOverlayRenderer()..refId = refId;
  }
  
  static Future<MACoordinateBounds> createMACoordinateBounds() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMACoordinateBounds');
    return MACoordinateBounds()..refId = refId;
  }
  
  static Future<MACoordinateSpan> createMACoordinateSpan() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMACoordinateSpan');
    return MACoordinateSpan()..refId = refId;
  }
  
  static Future<MACoordinateRegion> createMACoordinateRegion() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMACoordinateRegion');
    return MACoordinateRegion()..refId = refId;
  }
  
  static Future<MAMapPoint> createMAMapPoint() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAMapPoint');
    return MAMapPoint()..refId = refId;
  }
  
  static Future<MAMapSize> createMAMapSize() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAMapSize');
    return MAMapSize()..refId = refId;
  }
  
  static Future<MAMapRect> createMAMapRect() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAMapRect');
    return MAMapRect()..refId = refId;
  }
  
  static Future<MAParticleRandomVelocityGenerate> createMAParticleRandomVelocityGenerate() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAParticleRandomVelocityGenerate');
    return MAParticleRandomVelocityGenerate()..refId = refId;
  }
  
  static Future<MAParticleRandomColorGenerate> createMAParticleRandomColorGenerate() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAParticleRandomColorGenerate');
    return MAParticleRandomColorGenerate()..refId = refId;
  }
  
  static Future<MAParticleConstantRotationGenerate> createMAParticleConstantRotationGenerate() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAParticleConstantRotationGenerate');
    return MAParticleConstantRotationGenerate()..refId = refId;
  }
  
  static Future<MAParticleCurveSizeGenerate> createMAParticleCurveSizeGenerate() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAParticleCurveSizeGenerate');
    return MAParticleCurveSizeGenerate()..refId = refId;
  }
  
  static Future<MAParticleEmissionModule> createMAParticleEmissionModule() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAParticleEmissionModule');
    return MAParticleEmissionModule()..refId = refId;
  }
  
  static Future<MAParticleSinglePointShapeModule> createMAParticleSinglePointShapeModule() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAParticleSinglePointShapeModule');
    return MAParticleSinglePointShapeModule()..refId = refId;
  }
  
  static Future<MAParticleRectShapeModule> createMAParticleRectShapeModule() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAParticleRectShapeModule');
    return MAParticleRectShapeModule()..refId = refId;
  }
  
  static Future<MAParticleOverLifeModule> createMAParticleOverLifeModule() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAParticleOverLifeModule');
    return MAParticleOverLifeModule()..refId = refId;
  }
  
  static Future<MAParticleOverlayOptions> createMAParticleOverlayOptions() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAParticleOverlayOptions');
    return MAParticleOverlayOptions()..refId = refId;
  }
  
  static Future<MAParticleOverlayOptionsFactory> createMAParticleOverlayOptionsFactory() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAParticleOverlayOptionsFactory');
    return MAParticleOverlayOptionsFactory()..refId = refId;
  }
  
  static Future<MAOverlayRenderer> createMAOverlayRenderer() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAOverlayRenderer');
    return MAOverlayRenderer()..refId = refId;
  }
  
  static Future<MAUserLocation> createMAUserLocation() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAUserLocation');
    return MAUserLocation()..refId = refId;
  }
  
  static Future<MAMultiPointItem> createMAMultiPointItem() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAMultiPointItem');
    return MAMultiPointItem()..refId = refId;
  }
  
  static Future<MAMultiPointOverlay> createMAMultiPointOverlay() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAMultiPointOverlay');
    return MAMultiPointOverlay()..refId = refId;
  }
  
  static Future<MACustomBuildingOverlayOption> createMACustomBuildingOverlayOption() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMACustomBuildingOverlayOption');
    return MACustomBuildingOverlayOption()..refId = refId;
  }
  
  static Future<MACustomBuildingOverlay> createMACustomBuildingOverlay() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMACustomBuildingOverlay');
    return MACustomBuildingOverlay()..refId = refId;
  }
  
  static Future<MATracePoint> createMATracePoint() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMATracePoint');
    return MATracePoint()..refId = refId;
  }
  
  static Future<MATraceLocation> createMATraceLocation() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMATraceLocation');
    return MATraceLocation()..refId = refId;
  }
  
  static Future<MAArc> createMAArc() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAArc');
    return MAArc()..refId = refId;
  }
  
  static Future<MAUserLocationRepresentation> createMAUserLocationRepresentation() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAUserLocationRepresentation');
    return MAUserLocationRepresentation()..refId = refId;
  }
  
  static Future<MAMapView> createMAMapView() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAMapView');
    return MAMapView()..refId = refId;
  }
  
  static Future<MAOverlayPathRenderer> createMAOverlayPathRenderer() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAOverlayPathRenderer');
    return MAOverlayPathRenderer()..refId = refId;
  }
  
  static Future<MAGroundOverlayRenderer> createMAGroundOverlayRenderer() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMAGroundOverlayRenderer');
    return MAGroundOverlayRenderer()..refId = refId;
  }
  
  static Future<MACustomBuildingOverlayRenderer> createMACustomBuildingOverlayRenderer() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createMACustomBuildingOverlayRenderer');
    return MACustomBuildingOverlayRenderer()..refId = refId;
  }
  
}

class NSObject extends Ref_iOS {}

// 结构体
class CLLocationCoordinate2D extends Ref_iOS {}

class CLLocation extends Ref_iOS {}

class CGRect extends Ref_iOS {}

class CGPoint extends Ref_iOS {}

class UIEdgeInsets extends Ref_iOS {}

// 类
class CLLocationManager extends NSObject {}

class NSError extends NSObject {}

mixin NSCoding on NSObject {}

mixin NSCopying on NSObject {}

class UIView extends NSObject {}

class UIControl extends NSObject {}

class UIImage extends NSObject {}

class MAAnnotation_Ref = NSObject with MAAnnotation;
class MAAnimatableAnnotation_Ref = NSObject with MAAnimatableAnnotation;
class MAOverlay_Ref = NSObject with MAAnnotation, MAOverlay;
class MATraceDelegate_Ref = NSObject with MATraceDelegate;
class MAMultiPointOverlayRendererDelegate_Ref = NSObject with MAMultiPointOverlayRendererDelegate;
class MAParticleVelocityGenerate_Ref = NSObject with MAParticleVelocityGenerate;
class MAParticleColorGenerate_Ref = NSObject with MAParticleColorGenerate;
class MAParticleRotationGenerate_Ref = NSObject with MAParticleRotationGenerate;
class MAParticleSizeGenerate_Ref = NSObject with MAParticleSizeGenerate;
class MAParticleShapeModule_Ref = NSObject with MAParticleShapeModule;
class MAMapViewDelegate_Ref = NSObject with MAMapViewDelegate;
