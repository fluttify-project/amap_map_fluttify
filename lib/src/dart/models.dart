import 'package:amap_map_fluttify/src/android/android.export.dart';

import '../ios/ios.export.dart';

class Marker {
  Marker.android(this._androidModel);

  Marker.ios(this._iosModel);

  com_amap_api_maps_model_Marker _androidModel;
  MAAnnotationView _iosModel;
}

class LatLng {
  LatLng(this.lat, this.lng);

  final double lat;
  final double lng;
}
