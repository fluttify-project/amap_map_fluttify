import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';

import 'models.dart';

extension TraceLocationListX on List<TraceLocation> {
  /// 转换为android对象
  Future<List<com_amap_api_trace_TraceLocation>> toAndroidModel() async {
    List<com_amap_api_trace_TraceLocation> result = [];
    for (final item in this) {
      result.add(await com_amap_api_trace_TraceLocation
          .create__double__double__float__float__long(
        item.longitude,
        item.latitude,
        item.speed,
        item.bearing,
        item.time,
      ));
    }
    return result;
  }

  /// 转换为ios对象
  Future<List<MATraceLocation>> toIOSModel() async {
    List<MATraceLocation> result = [];
    for (final item in this) {
      final location = await MATraceLocation.create__();
      await location.set_loc(
          await CLLocationCoordinate2D.create(item.latitude, item.longitude));
      await location.set_angle(item.bearing);
      await location.set_speed(item.speed);
      await location.set_time(item.time.toDouble());

      result.add(location);
    }
    return result;
  }
}

extension com_amap_api_maps_model_LatLngListX
    on List<com_amap_api_maps_model_LatLng> {
  /// 转换为dart对象
  Future<List<LatLng>> toDartModel() async {
    List<LatLng> result = [];
    for (final item in this) {
      result.add(LatLng(await item.get_latitude(), await item.get_longitude()));
    }
    return result;
  }
}
