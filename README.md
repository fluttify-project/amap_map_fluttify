![Logo](https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/Logo-Landscape.png?raw=true)

# 高德地图 地图组件 Flutter插件
[![pub package](https://img.shields.io/pub/v/amap_map_fluttify.svg)](https://pub.Flutter-io.cn/packages/amap_map_fluttify)

## 由于精力有限, `1.0.0`版本发布后, 作为社区版将不再新增功能, 如果现有接口不能满足你的需求, 请使用专业版.

**专业版为付费插件, 如有需要请联系qq 382146139**

**专业版为付费插件, 如有需要请联系qq 382146139**

**专业版为付费插件, 如有需要请联系qq 382146139**

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

## 导入
```dart
import 'package:amap_map_fluttify/amap_map_fluttify.dart';
```

## 使用
参考[wiki](https://github.com/fluttify-project/amap_map_fluttify/wiki).

## 社区
| QQ2群 | QQ1群(已满) |
| :----------: | :----------: |
| 加入QQ群讨论 <br/> <img src="https://github.com/fluttify-project/fluttify-project/blob/master/resources/qrcode_1593774649831.jpg?raw=true" height="300"> |加入QQ群讨论 <br/> <img src="https://github.com/fluttify-project/fluttify-project/blob/master/resources/1593774713224_temp_qrcode_share_9993.png?raw=true" height="300"> | 

## 社区版与专业版
|  显示地图  | 社区版 | 专业版 |
|:-----:|:-----:|:-----:|
|  获取当前位置  |  ✅ |  ✅   |
|  显示我的位置  |  ✅ |  ✅   |
|  是否显示室内地图  |  ✅ |  ✅   |
|  选择显示图层  |  ✅ |  ✅   |
|  选择地图语言  |  ✅ |  ✅   |
|  显示路况信息  |  ✅ |  ✅   |
|  显示缩放控件  |  ✅ |  ✅   |
|  显示指南针  |  ✅ |  ✅   |
|  显示定位按钮  |  ✅ |  ✅   |
|  显示比例尺控件  |  ✅ |  ✅   |
|  缩放手势使能  |  ✅ |  ✅   |
|  滑动手势使能  |  ✅ |  ✅   |
|  旋转手势使能  |  ✅ |  ✅   |
|  旋转手势使能  |  ✅ |  ✅   |
|  设置缩放大小  |  ✅ |  ✅   |
|  设置缩放是否以中心点为锚点  |  ✅ |  ✅   |

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
|  添加平滑移动marker  | ✅  |  ✅   |
|  添加海量点  | ✅  |  ✅   |
|  自定义弹窗  | ✅  |  ✅   |
|  设置海量点点击监听事件  | ✅  |  ✅   |
|  截图  | ✅  |  ✅   |
|  自定义地图  | ✅  |  ✅   |
|  添加热力图  | ✅  |  ✅   |
|  添加图片覆盖物  | ✅  |  ✅   |
|  将指定的经纬度列表调整至同一屏幕中显示  | ✅  |  ✅   |
|  添加瓦片图  | ☑️  |  ✅   |

|  与地图交互  | 社区版 | 专业版 |
|:-----:|:-----:|:-----:|
|  设置地图点击监听事件  |  ✅ |  ✅   |
|  设置地图长按监听事件  |  ✅ |  ✅   |
|  设置地图移动监听事件  |  ✅ |  ✅   |
|  限制地图的显示范围  |  ✅ |  ✅   |
|  获取当前缩放大小  |  ✅ |  ✅   |
|  放大/缩小一个等级  |  ✅ |  ✅   |
|  设置地图中心点  |  ✅ |  ✅   |
|  获取地图中心点  |  ✅ |  ✅   |
|  屏幕坐标转经纬度坐标  |  ✅ |  ✅   |
|  经纬度坐标转屏幕坐标  |  ✅ |  ✅   |

|  导航  | 社区版 | 专业版 |
|:-----:|:-----:|:-----:|
|  跳转高德app导航  |  ✅ |  ✅   |
|  内置导航组件  |  ☑️ |  ✅   |

|  其他  | 社区版 | 专业版 |
|:-----:|:-----:|:-----:|
|  NO-IDFA  |  ☑️ |  ✅   |

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