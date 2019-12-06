import 'dart:math';

import 'package:amap_core_fluttify/amap_core_fluttify.dart';

mixin NextLatLng {
  LatLng getNextLatLng() {
    final random = Random();
    return LatLng(
      39.90960 + random.nextDouble(),
      116.397228 + random.nextDouble(),
    );
  }
}
