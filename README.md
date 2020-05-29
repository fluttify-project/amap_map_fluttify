![Logo](https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/Logo-Landscape.png?raw=true)

# 🗺&nbsp;高德 `地图`组件

[![pub package](https://img.shields.io/pub/v/amap_map_fluttify.svg)](https://pub.Flutter-io.cn/packages/amap_map_fluttify)
![CI](https://github.com/fluttify-project/amap_map_fluttify/workflows/CI/badge.svg)

Dart接口基于[Fluttify](https://github.com/yohom/fluttify-core-example)编译器生成. dartdoc[接口文档](https://pub.flutter-io.cn/documentation/amap_map_fluttify/latest/). [CHANGELOG](https://github.com/fluttify-project/amap_map_fluttify/blob/master/CHANGELOG.md). [常见问题对应手册](https://github.com/fluttify-project/amap_map_fluttify/blob/master/Troubleshooting.md).
同款[百度地图插件](https://github.com/fluttify-project/bmap_map_fluttify), 有其他插件需求的也都可以走技术支持流程请求支持 :) .

## 💰&nbsp;技术支持
- 请参考 [technical-support-plan](https://github.com/fluttify-project/technical-support-plan) 进行操作, 技术支持工单将以最高优先级处理.
- 目前提供的标准服务:
  - 配置高德appkey: 如果你自己配置的高德appkey一直不成功, 本方案可以提供支持.
  - iOS端NO-IDFA版本: 如果你的APP中并没有使用到IDFA相关服务, 本方案提供非IDFA版本的插件.
  - 应用内导航: 如果你需要使用应用内导航, 本方案提供**集成高德导航SDK版本**的地图插件. 目前支持**跳转驾车导航组件**. <img src="https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/navi_ios.gif" height="300"> <img src="https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/navi_android.gif" height="300">
  - 位置选择器: <img src="https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/location_picker_ios.gif" height="300"> <img src="https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/location_picker_android.gif" height="300"> 
  - 其他个性化技术支持, 请前往 [technical-support-plan](https://github.com/fluttify-project/technical-support-plan) 新开工单.

## 💻&nbsp;Fluttify网站
- Fluttify编译器自助服务[fluttify.com](http://fluttify.com/#/)网站已上线, 欢迎各位来试用, 目前网站仍然处于早期阶段, 如果有什么建议可以在[技术支持](https://github.com/fluttify-project/technical-support-plan/issues/new?assignees=yohom&labels=&template=------.md&title=)中提issue.
- 如何使用网站?
  1. 使用github账号登录网站, 我需要知道是谁在使用我的网站;
  2. 填写原生SDK相关的信息, 填写maven坐标和cocoapods名称的时候会进行联网自动补全;
  3. 提交请求, 目前默认获取目标SDK的最新版本来生成插件;
  4. 请求完成后会往github账号关联的邮箱地址发一份邮件, 产物插件便在邮件的附件中; 

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