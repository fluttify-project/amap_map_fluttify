import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';

import 'models.dart';

extension TraceLocationListX on List<TraceLocation> {
  /// 转换为android对象
  Future<List<com_amap_api_trace_TraceLocation>> toAndroidModel() async {
    final latitudeBatch = this.map((e) => e.latitude).toList();
    final longitudeBatch = this.map((e) => e.longitude).toList();
    final speedBatch = this.map((e) => e.speed).toList();
    final bearingBatch = this.map((e) => e.bearing).toList();
    final timeBatch = this.map((e) => e.time).toList();

    return com_amap_api_trace_TraceLocation
        .create_batch__double__double__float__float__long(
      latitudeBatch,
      longitudeBatch,
      speedBatch,
      bearingBatch,
      timeBatch,
    );
  }

  /// 转换为ios对象
  Future<List<MATraceLocation>> toIOSModel() async {
    final latitudeBatch = this.map((e) => e.latitude).toList();
    final longitudeBatch = this.map((e) => e.longitude).toList();
    final speedBatch = this.map((e) => e.speed).toList();
    final bearingBatch = this.map((e) => e.bearing).toList();
    final timeBatch = this.map((e) => e.time.toDouble()).toList();

    final traceLocationBatch = await MATraceLocation.create_batch__(length);
    final coordBatch = await CLLocationCoordinate2D.create_batch(
      latitudeBatch,
      longitudeBatch,
    );
    await traceLocationBatch.set_loc_batch(coordBatch);
    await traceLocationBatch.set_speed_batch(speedBatch);
    await traceLocationBatch.set_angle_batch(bearingBatch);
    await traceLocationBatch.set_time_batch(timeBatch);

    return traceLocationBatch;
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

extension MATracePointListX on List<MATracePoint> {
  /// 转换为dart对象
  Future<List<LatLng>> toDartModel() async {
    List<LatLng> result = [];
    for (final item in this) {
      result.add(LatLng(await item.get_latitude(), await item.get_longitude()));
    }
    return result;
  }
}
