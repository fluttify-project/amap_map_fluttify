![Logo](https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/Logo-Landscape.png?raw=true)

# 🗺&nbsp;高德 `地图`组件

[![pub package](https://img.shields.io/pub/v/amap_map_fluttify.svg)](https://pub.Flutter-io.cn/packages/amap_map_fluttify)
![CI](https://github.com/fluttify-project/amap_map_fluttify/workflows/CI/badge.svg)

Dart接口基于[Fluttify](https://github.com/yohom/fluttify-core-example)编译器生成. dartdoc[接口文档](https://pub.flutter-io.cn/documentation/amap_map_fluttify/latest/). [CHANGELOG](https://github.com/fluttify-project/amap_map_fluttify/blob/master/CHANGELOG.md). [常见问题对应手册](https://github.com/fluttify-project/amap_map_fluttify/blob/master/Troubleshooting.md).

## 💰&nbsp;技术支持
- 请参考 [technical-support-plan](https://github.com/fluttify-project/technical-support-plan) 进行操作, 技术支持工单将以最高优先级处理.
- **百度地图**/**腾讯地图**插件在售, 有需求的请联系qq 382146139 .

## 整合插件 [amap_all_fluttify](https://github.com/fluttify-project/amap_all_fluttify)
- 除了集成了地图, 搜索, 定位的接口外, 增加了一些需要协调三个插件功能才能实现的方法, 具体请参考[README](https://github.com/fluttify-project/amap_all_fluttify).

## 🔧&nbsp;接外包
**本人承接外包项目(地图类app优先), 有意者请联系qq 382146139.**

## 👨🏻‍💻&nbsp;DEMO 与 社区

| Demo | QQ群 |
| :----------: | :----------: |
| 扫描二维码 <br> 或者 <br> [点击下载](https://github.com/fluttify-project/amap_map_fluttify/blob/master/example/build/app/outputs/apk/release/app-release.apk?raw=true) </br> <img src="assets/amap_map_fluttify_apk.png" height="300"> | 加入QQ群讨论 <br/> <img src="https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/QQ%E7%BE%A4.png?raw=true" height="300"> |

## 📱&nbsp;如何使用

1. 申请高德appkey:
- android: https://lbs.amap.com/api/android-sdk/guide/create-project/get-key
- ios: https://lbs.amap.com/api/ios-sdk/guide/create-project/get-key

2. 安装: 
```yaml
dependencies:
  flutter:
    sdk: flutter
  amap_map_fluttify: ^x.x.x
```

3. 导入:
```dart
import 'package:amap_map_fluttify/amap_map_fluttify.dart';
```

4. 使用:
```dart 
/// !!使用真机调试!!
/// !注意: 只要是返回Future的方法, 一律使用`await`修饰, 确保当前方法执行完成后再执行下一行, 在不能使用`await`修饰的环境下, 在`then`方法中执行下一步.
/// 
/// 初始化(0.17.0开始可以不用配置AndroidManifest.xml) 
/// !!但是你如果你使用了amap_search_fluttify或amap_location_fluttify, 那么仍旧需要在AndroidManifest.xml中配置key!
/// AndroidManifest.xml配置key参考 https://lbs.amap.com/api/android-sdk/gettingstarted
await AmapService.init(iosKey: '7a***********************f4', androidKey: '7c***********************fa');
/// 如果你觉得引擎的日志太多, 可以关闭Fluttify引擎的日志
await enableFluttifyLog(false); // 关闭log

class AmapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AmapView(
      // 地图类型 (可选)
      mapType: MapType.Standard,
      // 是否显示缩放控件 (可选)
      showZoomControl: true,
      // 是否显示指南针控件 (可选)
      showCompass: true,
      // 是否显示比例尺控件 (可选)
      showScaleControl: true,
      // 是否使能缩放手势 (可选)
      zoomGesturesEnabled: true,
      // 是否使能滚动手势 (可选)
      scrollGesturesEnabled: true,
      // 是否使能旋转手势 (可选)
      rotateGestureEnabled: true,
      // 是否使能倾斜手势 (可选)
      tiltGestureEnabled: true,
      // 缩放级别 (可选)
      zoomLevel: 10, 
      // 中心点坐标 (可选)
      centerCoordinate: LatLng(39, 116),
      // 标记 (可选)
      markers: <MarkerOption>[], 
      // 标识点击回调 (可选)
      onMarkerClicked: (Marker marker) {},
      // 地图点击回调 (可选)
      onMapClicked: (LatLng coord) {},
      // 地图拖动开始 (可选)
      onMapMoveStart: (MapMove move) {},
      // 地图拖动结束 (可选)
      onMapMoveEnd: (MapMove move) {},
      // 地图创建完成回调 (可选)
      onMapCreated: (controller) async {
        // requestPermission是权限请求方法, 需要你自己实现 
        // 如果不知道怎么处理, 可以参考example工程的实现, example工程依赖了`permission_handler`插件.
        if (await requestPermission()) {
          await controller.showMyLocation(MyLocationOption(show: true));
        }
      },
    );
  }
}
```

`requestPermission`的参考实现(需要依赖`permission_handler`插件): 
```dart
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

Future<bool> requestPermission() async {
  final status = await Permission.location.request();

  if (status == PermissionStatus.granted) {
    return true;
  } else {
    toast('需要定位权限!');
    return false;
  }
}
```

iOS `Info.plist`配置:
```xml
/// 使用PlatformView的声明
<key>io.flutter.embedded_views_preview</key>
<string>YES</string>
/// 定位权限声明
<key>NSLocationWhenInUseUsageDescription</key>
<string>需要定位权限</string>
/// 高德地图app白名单 打开高德地图时使用
<key>LSApplicationQueriesSchemes</key>
<array>
	<string>iosamap</string>
</array>
```

## 导航组件/NO-IDFA
导航组件在`feature/navi`中, 如需要, 则使用git依赖:
```yaml
amap_map_fluttify:
  git:
    url: https://github.com/fluttify-project/amap_map_fluttify.git
    ref: feature/navi  
```
同理, 插件提供了NO-IDFA版本, 使用git依赖:
```yaml
amap_map_fluttify:
  git:
    url: https://github.com/fluttify-project/amap_map_fluttify.git
    ref: feature/NO-IDFA  
```

| 微信支持 | 支付宝支持 |
| :----------: | :----------: |
| <img src="https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/WechatIMG111.jpeg?raw=true" height="300"> | <img src="https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/1557492318.jpg?raw=true" height="300"> |

## LICENSE
> Copyright 2020 yohom
>   
> Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at
>
>    http://www.apache.org/licenses/LICENSE-2.0
> 
>  Unless required by applicable law or agreed to in writing, software
>  distributed under the License is distributed on an "AS IS" BASIS,
>  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
>  See the License for the specific language governing permissions and
>  limitations under the License.