import 'package:amap_search_fluttify/amap_search_fluttify.dart';

class PoiInfo {
  PoiInfo(this.poi);

  final Poi poi;
  bool selected = false;

  @override
  String toString() {
    return 'PoiInfo{poi: $poi, selected: $selected}';
  }
}
