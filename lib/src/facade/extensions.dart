import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

extension com_amap_api_maps_model_UrlTileProvider_X
    on com_amap_api_maps_model_UrlTileProvider {
  static Future<com_amap_api_maps_model_UrlTileProvider> create(
    int width,
    int height,
    String urlTemplate,
  ) async {
    final result =
        await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod(
      'com.amap.api.maps.model.UrlTileProviderX::create',
      {
        'width': width,
        'height': height,
        'urlTemplate': urlTemplate,
      },
    );
    return com_amap_api_maps_model_UrlTileProvider()
      ..refId = result
      ..tag__ = 'amap_map_fluttify';
  }
}
