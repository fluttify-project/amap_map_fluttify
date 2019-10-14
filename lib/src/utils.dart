import 'dart:io';

import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:amap_map_flutter/src/ios/ios.export.dart';

typedef Future<T> AndroidFutureCallback<T>(List<Ref_Android> releasePool);
typedef Future<T> IOSFutureCallback<T>(List<Ref_iOS> releasePool);

Future<T> platform<T>({
  AndroidFutureCallback<T> android,
  IOSFutureCallback<T> ios,
}) async {
  if (android != null && Platform.isAndroid) {
    final releasePool = <Ref_Android>[];
    final result = await android(releasePool);
    releasePool.forEach((it) => ObjectFactory_Android.release(it));
    return result;
  } else if (ios != null && Platform.isIOS) {
    final releasePool = <Ref_iOS>[];
    final result = await ios(releasePool);
    releasePool.forEach((it) => ObjectFactory_iOS.release(it));
    return result;
  } else {
    return Future.value();
  }
}
