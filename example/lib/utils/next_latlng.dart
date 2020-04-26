import 'dart:math';

import 'package:amap_core_fluttify/amap_core_fluttify.dart';

mixin NextLatLng {
  final random = Random();

  LatLng getNextLatLng({LatLng center}) {
    center ??= LatLng(39.90960, 116.397228);
    return LatLng(
      center.latitude + random.nextDouble(),
      center.longitude + random.nextDouble(),
    );
  }

  List<LatLng> getNextBatchLatLng(int count) {
    return [
      for (int i = 0; i < count; i++)
        LatLng(
          39.90960 + random.nextDouble() * 4,
          116.397228 + random.nextDouble() * 4,
        )
    ];
  }
}
