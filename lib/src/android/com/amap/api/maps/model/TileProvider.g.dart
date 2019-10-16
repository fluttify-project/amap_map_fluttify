import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_amap_api_maps_model_TileProvider on java_lang_Object {
  

  

  Future<com_amap_api_maps_model_Tile> getTile(int var1, int var2, int var3) {}
  
  Future<int> getTileWidth() {}
  
  Future<int> getTileHeight() {}
  
}