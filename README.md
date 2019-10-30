![Logo](other/Logo-Landscape.png)

# 高德 `地图`组件

[![pub package](https://img.shields.io/pub/v/amap_map_fluttify.svg)](https://pub.Flutter-io.cn/packages/amap_map_fluttify)

Dart接口基于[fluttify](https://github.com/yohom/fluttify-core-example)引擎生成. dartdoc[接口文档](https://pub.flutter-io.cn/documentation/amap_map_fluttify/latest/).

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
/// 初始化 iOS在init方法中设置, android需要去AndroidManifest.xml里去设置, 详见 https://lbs.amap.com/api/android-sdk/gettingstarted
/// 和其他fluttify高德插件不一样的是, 这里需要使用`AmapService`去初始化, `AmapService`内部调用的依然是`AmapCore`, 只不过地图插件在初始化的会话需要做些其他事.
AmapService.init('7a04506d15fdb7585707f7091d715ef4');

class AmapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AmapView(
      onMapCreated: (controller) async {
        if (await requestPermission()) {
          await controller.showMyLocation(true);
        }
      },
    );
  }
}
```

## FAQ
- 这个项目跟`amap_base`有什么联系和区别?
    - 联系: 除了是同一个作者开发的之外没有联系; 
    - 区别: `amap_base`使用的是常规的开发方式, 还是以`MethodChannel`为中心在dart和原生以及各个原生平台之间斡旋. 而`fluttify`系列插件是在[fluttify](https://github.com/fluttify-project/fluttify-core-example)引擎生成的dart接口之上去开发插件, 屏蔽了原生代码, 开发插件时不再需要在不同的原生代码之间斡旋, 只需要专注于整合不同平台的api即可.

## 请作者喝杯奶茶
<img src="./other/1557492318.jpg" height="300">  <img src="./other/WechatIMG111.jpeg" height="300">

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