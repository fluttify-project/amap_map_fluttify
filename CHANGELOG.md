## 0.8.3
- feat: MarkerOption增加是否可以显示弹窗的选项 
- enhance: 批量Marker实现widget as marker
- feat: 增加经纬度坐标和屏幕坐标互转的方法

## 0.8.2
- feat: 增加widget as marker功能
- doc: Android设置key的说明

## 0.8.1
- doc: README更新 初始化方法替换, 关闭日志的方法
- enhance: 不再需要拷贝系统的图片分辨率算法
- enhance: 简化_uri2ImageData逻辑
- roll engine #286db79

## 0.8.0
- enhance: [breaking change] android端的初始化使用构造器初始化，而不是间接调用方法，防止偶尔出现的初始化错误

## 0.7.2
- `getLocation`增加一个可选的delay参数, 指定延迟多少时间再获取定位

## 0.7.1
- feat: 新增自定义地图功能

## 0.7.0
- 底层更新

## 0.6.1
- doc: Troubleshooting更新
- feat: 增加截图功能

## 0.6.0
- fix: [breaking change] 所有的回调都返回Future, 并且调用时都加await
- enhance: 提供一个盖住PlatformView黑屏的途径

## 0.5.7
- doc: ImageConfiguration的说明
- fix: onMapCreated返回Future并用await修饰
- feat: Marker增加显示弹窗和关闭弹窗的方法 #61

## 0.5.6
- fix: 未配置onMapCreated时, 初始化参数不应该无效

## 0.5.5
- doc: 调整plist说明
- fix: setCenterCoordinate不设置默认的zoomLevel为15, 如果没有传入zoomLevel就使用当前的zoomLevel.

## 0.5.4
- feat: marker增加角度和锚点选项
- doc: 增加iOS端配置的说明

## 0.5.3
- doc: 加入版本规划说明
- feat: 增加调用高德地图app导航的功能

## 0.5.2
- fix: 设置地图中心点时, ios端的zoomLevel未调用
- doc: requestPermission方法说明

## 0.5.1
- doc: git clone失败的提示
- doc: 使用真机调试
- feat: 画折线添加尾部样式和连接点样式的参数
- feat: 新增删除polyline的方法Polyline::remove

## 0.5.0
- feat: 画线添加自定义纹理参数;
- enhancement: [breaking change] 抽取画圆画多边形的参数

## 0.4.1
- chore: export文件增加library指令
- enhancement: 加强assert失败的提示

## 0.4.0
- [breaking change] enhancement: addMarker(s)方法去除BuildContext参数
- feat: 增加requireAlwaysAuth方法 申请后台定位

## 0.3.4
- feat: 增加坐标转换方法AmapService::convertCoord
- fix: ios获取定位后释放对应对象
- enhancement: AmapView增加初始化参数 简化创建过程

## 0.3.3
- enhancement: showMyLocation增加精度圈边框宽度, 颜色以及填充颜色的设置
- fix: ios移动地图应该回调地图中心点的坐标而不是用户所在坐标

## 0.3.2
- fix: #18 android的marker设置了点击之后, 仍然显示弹窗
- fix: #22.1 解决annotation划出屏幕后被回收重新回到屏幕后消失的bug
- fix: #24 android端setCenterCoordinate animated参数无效的bug
- fix: 根据标题是否为null来判断marker是否可以显示弹窗

## 0.3.1
- enhancement: 完善android端生命周期回调
- feat: 不通过定位组件直接获取经纬度
- feat: 监听地图移动

## 0.3.0
- feat: 批量添加marker
- enhancement: 增加生命周期回调
- fix: #16 ios marker点击事件修复

## 0.2.8
- doc: git-lfs超额说明

## 0.2.7
- feat: 添加地图点击监听
- feat: 删除单个marker和删除所有marker
- feat: 增加calculateDistance方法

## 0.2.6
- enhancement: 使用amap_core的LatLng

## 0.2.5
- feat: 增加获取地图中心点的功能

## 0.2.4
- fix: 释放原生对象时, 只释放当前插件创建的对象

## 0.2.3
- 切换地图语言

## 0.2.2
- roll engine #38df15a 主要增加了对lambda的支持

## 0.2.1
- feature: marker拖动事件

## 0.2.0
- 加强对多fluttify模块的支持

## 0.1.0
- 加入文档

## 0.0.3
- 添加多边形

## 0.0.3
- 画圆
- 画线
- 添加marker
