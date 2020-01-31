import 'dart:math';

import 'package:amap_core_fluttify/amap_core_fluttify.dart';

mixin NextLatLng {
  final random = Random();

  LatLng getNextLatLng() {
    return LatLng(
      39.90960 + random.nextDouble(),
      116.397228 + random.nextDouble(),
    );
  }

  List<LatLng> getNextBatchLatLng(int count) {
    return [
      for (int i = 0; i < count; i++)
        LatLng(
          39.90960 + random.nextDouble(),
          116.397228 + random.nextDouble(),
        )
    ];
  }
}
