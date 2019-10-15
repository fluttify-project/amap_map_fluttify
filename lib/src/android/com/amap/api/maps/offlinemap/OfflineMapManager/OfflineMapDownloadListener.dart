import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_amap_api_maps_offlinemap_OfflineMapManager_OfflineMapDownloadListener on java_lang_Object {
  Future<void> onDownload(int var1, int var2, String var3) {}
  
  Future<void> onCheckUpdate(bool var1, String var2) {}
  
  Future<void> onRemove(bool var1, String var2, String var3) {}
  
}