![Logo](https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/Logo-Landscape.png?raw=true)

# 高德 `地图`组件

[![pub package](https://img.shields.io/pub/v/amap_map_fluttify.svg)](https://pub.Flutter-io.cn/packages/amap_map_fluttify)
[![Gitter](https://badges.gitter.im/fluttify_project/community.svg)](https://gitter.im/fluttify_project/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

Dart接口基于[Fluttify](https://github.com/yohom/fluttify-core-example)引擎生成. dartdoc[接口文档](https://pub.flutter-io.cn/documentation/amap_map_fluttify/latest/). [CHANGELOG](https://github.com/fluttify-project/amap_map_fluttify/blob/master/CHANGELOG.md). [常见问题对应手册](https://github.com/fluttify-project/amap_map_fluttify/blob/master/Troubleshooting.md).

> **!!`git clone`失败看这里!!**
>
> 由于高德地图的iOS端的二进制文件`MAMapKit`有**128.1MB**, 超出了GitHub上传文件限制的大小(100MB), 而GitHub免费版的git-lfs限额流量(1G)已经用完, 所以`git clone`的时候会失败, 就算直接下载repo, `MAMapKit`也已经转换成了git-lfs的一个指针文件, 无法使用.
>
> 这里提供一个变通方法, 随便在一个flutter工程内依赖`amap_map_fluttify`, 然后`flutter packages get`下载flutter插件后, 去flutter的pub缓存文件夹`$flutter_root/.pub-cache/hosted/pub.dartlang.org/`(`$flutter_root`是你的flutter安装文件夹)下找到`amap_map_fluttify`的包, 这是一个完整的插件工程, 里面含有`example`工程, 可以正常运行.
>
> 如果想要查看样例工程的话, 就运行这个example工程.

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
/// 初始化:
///   1. iOS在init方法中设置
///   2. Android需要在AndroidManifest.xml里去设置, 详见 https://lbs.amap.com/api/android-sdk/gettingstarted
///     <application>
///       <meta-data
///         android:name="com.amap.api.v2.apikey"
///         android:value="您的Key"/>
///     </application>
await AmapCore.init('7a04506d15fdb7585707f7091d715ef4');
/// 如果你觉得引擎的日志太多, 可以关闭Fluttify引擎的日志
await enableFluttifyLog(false); // 关闭log

class AmapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AmapView(
      // 地图类型
      mapType: MapType.Standard,
      // 是否显示缩放控件
      showZoomControl: true,
      // 是否显示指南针控件
      showCompass: true,
      // 是否显示比例尺控件
      showScaleControl: true,
      // 是否使能缩放手势
      zoomGesturesEnabled: true,
      // 是否使能滚动手势
      scrollGesturesEnabled: true,
      // 是否使能旋转手势
      rotateGestureEnabled: true,
      // 是否使能倾斜手势
      tiltGestureEnabled: true,
      // 缩放级别
      zoomLevel: 10, 
      // 中心点坐标
      centerCoordinate: LatLng(39, 116),
      // 标记
      markers: <MarkerOption>[], 
      // 标识点击回调
      onMarkerClick: (Marker marker) {},
      // 地图点击回调
      onMapClick: (LatLng coord) {},
      // 地图拖动回调
      onMapDrag: (MapDrag drag) {},
      // 地图创建完成回调
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

## 请作者喝杯奶茶
<img src="https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/1557492318.jpg?raw=true" height="300">  <img src="https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/WechatIMG111.jpeg?raw=true" height="300">  <img src="https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/IMG_5480.JPG?raw=true" height="200">

## qq群
<img src="https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/QQ%E7%BE%A4.png?raw=true" height="250">

## LICENSE
> Copyright 2019 yohom
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