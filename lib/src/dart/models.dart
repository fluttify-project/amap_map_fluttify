import 'package:amap_core_fluttify/amap_core_fluttify.dart';

import '../android/android.export.g.dart';
import '../ios/ios.export.g.dart';

/// 地图标记
class Marker {
  Marker.android(this._androidModel);

  Marker.ios(this._iosModel, this._iosController);

  com_amap_api_maps_model_Marker _androidModel;
  MAPointAnnotation _iosModel;
  MAMapView _iosController;

  Future<String> get title {
    return platform(
      android: (_) => _androidModel.getTitle(),
      ios: (_) => _iosModel.get_title(),
    );
  }

  Future<String> get snippet {
    return platform(
      android: (_) => _androidModel.getSnippet(),
      ios: (_) => _iosModel.get_subtitle(),
    );
  }

  Future<LatLng> get location {
    return platform(
      android: (_) async {
        final _location = await _androidModel.getPosition();
        return LatLng(
          await _location.get_latitude(),
          await _location.get_longitude(),
        );
      },
      ios: (_) async {
        final location = await _iosModel.get_coordinate();
        return LatLng(await location.latitude, await location.longitude);
      },
    );
  }

  Future<void> remove() async {
    return platform(
      android: (_) => _androidModel.remove(),
      ios: (_) => _iosController?.removeAnnotation(_iosModel),
    );
  }
}
