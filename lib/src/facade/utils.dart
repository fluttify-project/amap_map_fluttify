import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Map<String, Uint8List> _cache = {};

Future<Uint8List> uri2ImageData(
  ImageConfiguration config,
  Uri iconUri, {
  String package,
}) async {
  final imageData = Completer<Uint8List>();
  if (_cache.containsKey(iconUri.toString())) {
    debugPrint('命中缓存');
    imageData.complete(_cache[iconUri.toString()]);
  } else {
    switch (iconUri.scheme) {
      // 网络图片
      case 'https':
      case 'http':
        HttpClient httpClient = HttpClient();
        var request = await httpClient.getUrl(iconUri);
        var response = await request.close();
        final result = await consolidateHttpClientResponseBytes(response);

        _cache[iconUri.toString()] = result;
        imageData.complete(result);
        break;
      // 文件图片
      case 'file':
        final imageFile = File.fromUri(iconUri);
        final result = imageFile.readAsBytesSync();

        _cache[iconUri.toString()] = result;
        imageData.complete(result);
        break;
      // asset图片
      default:
        (package == null
                ? AssetImage(iconUri.path)
                : AssetImage(iconUri.path, package: package))
            .resolve(config)
            .addListener(ImageStreamListener((imageInfo, sync) async {
          final byteData =
              await imageInfo.image.toByteData(format: ImageByteFormat.png);
          final result = byteData.buffer.asUint8List();

          _cache[iconUri.toString()] = result;
          imageData.complete(result);
        }));
        break;
    }
  }
  return imageData.future;
}
