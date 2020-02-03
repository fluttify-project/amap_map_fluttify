![Logo](https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/Logo-Landscape.png?raw=true)

# 高德 `地图`组件

[![pub package](https://img.shields.io/pub/v/amap_map_fluttify.svg)](https://pub.Flutter-io.cn/packages/amap_map_fluttify)
![CI](https://github.com/fluttify-project/amap_map_fluttify/workflows/CI/badge.svg)
[![Gitter](https://badges.gitter.im/fluttify_project/community.svg)](https://gitter.im/fluttify_project/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

Dart接口基于[Fluttify](https://github.com/yohom/fluttify-core-example)引擎生成. dartdoc[接口文档](https://pub.flutter-io.cn/documentation/amap_map_fluttify/latest/). [CHANGELOG](https://github.com/fluttify-project/amap_map_fluttify/blob/master/CHANGELOG.md). [常见问题对应手册](https://github.com/fluttify-project/amap_map_fluttify/blob/master/Troubleshooting.md).

如果你需要用到地图, 定位和搜索三个组件, 建议使用[amap_all_fluttify](https://github.com/fluttify-project/amap_all_fluttify), 这个插件集合了以上三个插件, 并约束了版本, 兼容性会更好.

## 接外包
**本人承接外包项目(地图类app优先), 有意者请联系qq 382146139.**

## DEMO 与 打赏

| Demo | 微信赞助 | 支付宝赞助 | QQ群 |
| :----------: | :----------: | :----------: | :----------: |
| 扫描二维码 <br> 或者 <br> [点击下载](https://github.com/fluttify-project/amap_map_fluttify/blob/master/example/build/app/outputs/apk/release/app-release.apk?raw=true) </br> ![Example](assets/amap_map_fluttify_apk.png) | 如果项目帮到了你 </br> 不妨请作者喝杯奶茶 :) </br> ![微信](https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/WechatIMG111.jpeg?raw=true) | 开源不易 </br> 你的star是我最大的动力 </br> ![支付宝](https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/1557492318.jpg?raw=true) | 加入QQ群讨论 <br/><br/> ![QQ群](https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/QQ%E7%BE%A4.png?raw=true) |

安装: 
```yaml
dependencies:
  flutter:
    sdk: flutter
  amap_map_fluttify: ^x.x.x
```

导入:
```dart
import 'package:amap_map_fluttify/amap_map_fluttify.dart';
```

使用:
```dart 
/// !!使用真机调试!!
/// !注意: 只要是返回Future的方法, 一律使用`await`修饰, 确保当前方法执行完成后再执行下一行, 在不能使用`await`修饰的环境下, 在`then`方法中执行下一步.
/// 
/// 初始化(0.17.0开始可以不用配置AndroidManifest.xml):
await AmapService.init(iosKey: '7a04506d15fdb7585707f7091d715ef4', androidKey: '7c9daac55e90a439f7b4304b465297fa');
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
      onMarkerClick: (Marker marker) {},
      // 地图点击回调 (可选)
      onMapClick: (LatLng coord) {},
      // 地图拖动回调 (可选)
      onMapDrag: (MapDrag drag) {},
      // 地图创建完成回调 (可选)
      onMapCreated: (controller) async {
        // requestPermission是权限请求方法, 需要你自己实现 
        // 如果不知道怎么处理, 可以参考example工程的实现, example过程依赖了`permission_handler`插件.
        if (await requestPermission()) {
          await controller.showMyLocation(true);
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
  final permissions =
      await PermissionHandler().requestPermissions([PermissionGroup.location]);

  if (permissions[PermissionGroup.location] == PermissionStatus.granted) {
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

## 版本规划
### 版本的语义化
    - +版本号迭代表示引擎更新，完善引擎能力以及修复引擎bug;
    - 小版本号迭代表示无破坏性更新, 包括功能增加和bug修复;
    - 次版本号迭代表示有破坏性更新, 包括但不限于接口改动, 类名改动等;
    - 主版本号迭代表示底层高德SDK更换;
### 功能开发/bug修复(优先级从高到低)
    1. 提供详细android文档和ios文档;
    2. 按照issue模板提供对应信息;
    3. 用户需求度;

## FAQ
- 这个项目跟`amap_base`有什么联系和区别?
    - 联系: 除了是同一个作者开发的之外没有联系; 
    - 区别: `amap_base`使用的是常规的开发方式, 还是以`MethodChannel`为中心在dart和原生以及各个原生平台之间斡旋. 而`fluttify`系列插件是在[fluttify](https://github.com/fluttify-project/fluttify-core-example)引擎生成的dart接口之上去开发插件, 屏蔽了原生代码, 开发插件时不再需要在不同的原生代码之间斡旋, 只需要专注于整合不同平台的api即可.

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