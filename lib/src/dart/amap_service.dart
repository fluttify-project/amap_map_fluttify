import 'package:amap_map_flutter/src/ios/ios.export.dart';

/// 除了地图以外的功能放在这里, 比如说sdk初始化
class AmapService {
  /// 设置ios端的key, android端需要在manifest里面设置, 无法通过代码设置
  static Future init(String iosKey) async {
    return platform(
      android: (releasePool) async {
        print('android端需要在Manifest里面设置');
      },
      ios: (releasePool) async {
        final service = await AMapServices.sharedServices();
        await service.set_apiKey(iosKey);
        await service.set_enableHTTPS(true);
      },
    );
  }
}
