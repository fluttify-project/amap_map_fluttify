# [文档](https://github.com/fluttify-project/amap_map_fluttify/wiki) [文档](https://github.com/fluttify-project/amap_map_fluttify/wiki) [文档](https://github.com/fluttify-project/amap_map_fluttify/wiki)

![Logo](https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/Logo-Landscape.png?raw=true)

# 高德地图 地图组件 Flutter插件
[![pub package](https://img.shields.io/pub/v/amap_map_fluttify.svg)](https://pub.Flutter-io.cn/packages/amap_map_fluttify)

## 由于精力有限, `1.0.0`版本开始, 作为社区版(0.x版本)将不再新增功能, 如果现有接口不能满足你的需求, 请使用专业版.

**专业版为付费插件, 如有需要请联系qq 382146139**<br/>
**专业版为付费插件, 如有需要请联系qq 382146139**<br/>
**专业版为付费插件, 如有需要请联系qq 382146139**<br/>

[专业版demo apk下载](https://github.com/fluttify-project/fluttify-project/raw/master/resources/amap_map_fluttify/%E5%9C%B0%E5%9B%BE-demo.apk)

# Fluttify系列插件
|  名称  | 描述 | 仓库 |
|:-----:|:-----:|:-----:|
| [高德地图](https://github.com/fluttify-project/amap_map_fluttify)  |  高德地图地图组件, 提供地图控件 | [![pub package](https://img.shields.io/pub/v/amap_map_fluttify.svg)](https://pub.Flutter-io.cn/packages/amap_map_fluttify) |
| [高德定位](https://github.com/fluttify-project/amap_location_fluttify)  |  高德地图定位组件, 提供独立的定位功能 | [![pub package](https://img.shields.io/pub/v/amap_location_fluttify.svg)](https://pub.Flutter-io.cn/packages/amap_location_fluttify) |
| [高德搜索](https://github.com/fluttify-project/amap_search_fluttify)  |  高德地图搜索组件, 提供poi搜索等功能 | [![pub package](https://img.shields.io/pub/v/amap_search_fluttify.svg)](https://pub.Flutter-io.cn/packages/amap_search_fluttify) |
| [高德猎鹰](https://github.com/fluttify-project/amap_track_fluttify)  |  高德地图猎鹰组件, 提供实时定位采集功能 | [![pub package](https://img.shields.io/pub/v/amap_track_fluttify.svg)](https://pub.Flutter-io.cn/packages/amap_track_fluttify) |
| [百度地图](https://github.com/fluttify-project/bmap_map_fluttify)  |  百度地图, 包含了地图控件, 定位以及搜索poi等功能 | [![pub package](https://img.shields.io/pub/v/bmap_map_fluttify.svg)](https://pub.Flutter-io.cn/packages/bmap_map_fluttify) |
| [百度人脸识别](https://github.com/fluttify-project/baidu_face_flutter)  |  百度人脸识别, 提供活体检测等功能 | [![pub package](https://img.shields.io/pub/v/baidu_face_flutter.svg)](https://pub.Flutter-io.cn/packages/baidu_face_flutter) |
| [网易直播](https://github.com/fluttify-project/netease_live_fluttify)  |  网易直播推流组件 | [![pub package](https://img.shields.io/pub/v/netease_live_fluttify.svg)](https://pub.Flutter-io.cn/packages/netease_live_fluttify) |
| [网易云信](https://github.com/fluttify-project/nim_fluttify)  |  网易云信 IM组件 | [![pub package](https://img.shields.io/pub/v/nim_fluttify.svg)](https://pub.Flutter-io.cn/packages/nim_fluttify) |
| [腾讯直播](https://github.com/fluttify-project/tencent_live_fluttify)  |  腾讯直播, 包含推流组件和播放组件 | [![pub package](https://img.shields.io/pub/v/tencent_live_fluttify.svg)](https://pub.Flutter-io.cn/packages/tencent_live_fluttify) |
| [腾讯IM](https://github.com/fluttify-project/tim_fluttify)  |  腾讯IM组件 | [![pub package](https://img.shields.io/pub/v/tim_fluttify.svg)](https://pub.Flutter-io.cn/packages/tim_fluttify) |
| [腾讯地图](https://github.com/fluttify-project/tmap_map_fluttify)  |  腾讯地图组件 | [![pub package](https://img.shields.io/pub/v/tmap_map_fluttify.svg)](https://pub.Flutter-io.cn/packages/tmap_map_fluttify) |
| [讯飞语音合成](https://github.com/fluttify-project/xftts_fluttify)  |  腾讯语言合成组件, 提供文字转语言功能 | [![pub package](https://img.shields.io/pub/v/xftts_fluttify.svg)](https://pub.flutter-io.cn/packages/xftts_fluttify) |
| [极光统计](https://github.com/fluttify-project/janalytics_fluttify)  |  极光统计组件, 提供异常上报等功能 | [![pub package](https://img.shields.io/pub/v/janalytics_fluttify.svg)](https://pub.flutter-io.cn/packages/janalytics_fluttify) |
| [阿里云RTC](https://github.com/fluttify-project/ali_rtc_fluttify)  |  阿里云实时音视频 | [![pub package](https://img.shields.io/pub/v/ali_rtc_fluttify.svg)](https://pub.flutter-io.cn/packages/ali_rtc_fluttify) |
| [环信](https://github.com/fluttify-project/easemob_im_fluttify)  |  环信IM | [![pub package](https://img.shields.io/pub/v/easemob_im_fluttify.svg)](https://pub.flutter-io.cn/packages/easemob_im_fluttify) |
| [未完待续...](https://github.com/fluttify-project)  |  如有其它需求, 请联系qq 382146139 | ![fluttify](https://img.shields.io/badge/fluttify-welcom-green) |

## 依赖
```yaml
dependencies:
  flutter:
    sdk: flutter
  amap_map_fluttify: ^x.x.x
```

## 配置
### Android
1. 注意在app/build.gradle的android块中配置签名信息, 并在buildTypes块中指定签名信息, 否则将无法匹配到你在高德后台配置的appkey, 例如:
```groovy
android {
    signingConfigs {
        release {
            keyAlias 'amap_map_test'
            keyPassword 'amap_map_test'
            storeFile file('../amap_map_test.jks')
            storePassword 'amap_map_test'
        }
    }

    buildTypes {
        debug {
            signingConfig signingConfigs.release
        }
        profile {
            signingConfig signingConfigs.release
        }
        release {
            signingConfig signingConfigs.release
        }
    }
}
```

### iOS
1. 使用地图需要使能UiKitView, 在Info.plist中添加:
```xml
<key>io.flutter.embedded_views_preview</key>
<string>YES</string>
```
2. 定位需要声明权限, 在Info.plist中添加:
```xml
<key>NSLocationWhenInUseUsageDescription</key>
<string>需要定位权限</string>
```
3. 调用高德地图需要添加白名单:
```dart
<key>LSApplicationQueriesSchemes</key>
<array>
	<string>iosamap</string>
	<string>amapuri</string>
</array>
```

## 导入
```dart
import 'package:amap_map_fluttify/amap_map_fluttify.dart';
```

## 社区
| QQ群 |
| :----------: |
| <img src="https://github.com/fluttify-project/fluttify-project/blob/master/resources/1593774713224_temp_qrcode_share_9993.png?raw=true" height="300"> | 

## 社区版与专业版
|  显示地图  | 社区版 | 专业版 |
|:-----:|:-----:|:-----:|
|  获取当前位置  |  ✅ |  ✅ |
|  显示我的位置  |  ✅ |  ✅ |
|  是否显示室内地图  |  ✅ | ✅ |
|  选择显示图层  |  ✅ |   ✅ |
|  选择地图语言  |  ✅ |  ✅ |
|  显示路况信息  |  ✅ |   ✅ |
|  显示缩放控件  |  ✅ |   ✅ |
|  显示指南针  |  ✅    | ✅ |
|  显示定位按钮  |  ✅ | ✅ |
|  显示比例尺控件  |  ✅ | ✅ |
|  缩放手势使能  |  ✅ |   ✅ |
|  滑动手势使能  |  ✅ |   ✅ |
|  旋转手势使能  |  ✅ |   ✅ |
|  旋转手势使能  |  ✅ |   ✅ |
|  设置缩放大小  |  ✅ |   ✅ |
|  设置缩放是否以中心点为锚点  |  ✅ | ✅ |
|  显示/隐藏3D楼块效果  | ☑️  | ✅ |
|  显示/隐藏地图上的文字标注  |  ☑️ |  ✅ |
|  同时设置缩放/倾斜/朝向/坐标并动画  |  ☑️ |  ✅ |

|  在地图上绘制  | 社区版 | 专业版 |
|:-----:|:-----:|:-----:|
|  批量添加marker  |  ✅ |  ✅   |
|  把marker列表从地图上移除  |  ✅ |  ✅   |
|  清除地图上所有覆盖物  |  ✅ |  ✅   |
|  添加折线  |  ✅ |  ✅   |
|  添加多边形  |  ✅ |  ✅   |
|  添加圆  |  ✅ |  ✅   |
|  设置marker点击监听事件  |  ✅ |  ✅   |
|  设置marker拖动监听事件  |  ✅ |  ✅   |
|  Marker弹窗点击事件监听  |  ✅ |  ✅   |
|  添加平滑移动marker  | ☑️ |  ✅   |
|  添加海量点  | ☑️ |  ✅   |
|  自定义弹窗  | ☑️ |  ✅   |
|  设置海量点点击监听事件  | ☑️ |  ✅   |
|  截图  | ✅  |  ✅   |
|  自定义地图  | ☑️ |  ✅   |
|  添加热力图  | ☑️ |  ✅   |
|  添加图片覆盖物  | ☑️  |  ✅   |
|  将指定的经纬度列表调整至同一屏幕中显示  | ☑️ |  ✅   |
|  添加瓦片图  | ☑️  |  ✅   |
|  输入起始点添加驾车路线  | ☑️  |  ✅   |
|  输入地区名称添加地区轮廓  | ☑️  |  ✅   |
|  添加回放轨迹  | ☑️  |  ✅   |
|  轨迹平滑处理  | ☑️  |  ✅   |
|  Marker(缩放 透明度 旋转 平移)动画  | ☑️  |  ✅   |

|  与地图交互  | 社区版 | 专业版 |
|:-----:|:-----:|:-----:|
|  监听地图点击事件  |  ✅ |  ✅   |
|  监听地图长按事件  |  ✅ |  ✅   |
|  监听地图移动开始  |  ✅ |  ✅   |
|  监听地图移动中  | ✅ |  ✅   |
|  监听地图移动结束  |  ✅ |  ✅   |
|  限制地图的显示范围  |  ✅ |  ✅   |
|  获取当前缩放大小  |  ✅ |  ✅   |
|  放大/缩小一个等级  |  ✅ |  ✅   |
|  设置地图中心点  |  ✅ |  ✅   |
|  获取地图中心点  |  ✅ |  ✅   |
|  屏幕坐标转经纬度坐标  |  ✅ |  ✅   |
|  经纬度坐标转屏幕坐标  |  ✅ |  ✅   |
|  设置地图朝向  | ☑️ |  ✅   |
|  设置地图倾斜度  | ☑️ |  ✅   |

|  导航  | 社区版 | 专业版 |
|:-----:|:-----:|:-----:|
|  跳转高德app驾车导航  |  ✅ |  ✅   |
|  跳转高德app骑行导航  |  ☑️ |  ✅   |
|  内置导航组件  |  ☑️ |  ✅   |
|  可嵌入的导航Widget  |  ☑️ |  ✅   |

|  其他  | 社区版 | 专业版 |
|:-----:|:-----:|:-----:|
|  NO-IDFA  |  ☑️ |  ✅   |
|  获取地图静态图片  |  ☑️ |  ✅   |
|  电子围栏  |  ☑️ |  ✅   |

## LICENSE
> Copyright (C) 2020 yohom
> 
> This program is free software: you can redistribute it and/or modify
> it under the terms of the GNU General Public License as published by
> the Free Software Foundation, either version 3 of the License, or
> (at your option) any later version.
> 
> This program is distributed in the hope that it will be useful,
> but WITHOUT ANY WARRANTY; without even the implied warranty of
> MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> GNU General Public License for more details.
> 
> You should have received a copy of the GNU General Public License
> along with this program.  If not, see <https://www.gnu.org/licenses/>.