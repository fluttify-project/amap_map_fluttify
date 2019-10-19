import 'dart:io';

import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';

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

Future release(Ref ref) {
  return platform(
    android: (pool) => ObjectFactory_Android.release(ref),
    ios: (pool) => ObjectFactory_iOS.release(ref),
  );
}

class Ref {
  /// 对应原生对象的唯一id(目前为hashCode)
  int refId;

  /// 自定义的标识
  String tag;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Ref && runtimeType == other.runtimeType && refId == other.refId;

  @override
  int get hashCode => refId.hashCode;

  @override
  String toString() {
    return '$runtimeType{refId: $refId}';
  }
}

/// 原生对象的释放池
final kNativeObjectPool = <Ref>{};
