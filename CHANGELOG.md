## 0.17.16
- feat: Marker添加更改坐标的方法
- feat: Marker添加setVisible方法, 设置marker是否可见

## 0.17.15
- enhance: 借用新的release_batch方法释放对象, 提升性能

## 0.17.14
- fix: 当marker图片过大时, 点击事件只有左上角有效 处理

## 0.17.13
- enhance: build.gradle加入国内源
- enhance: showMyLocation增加定位模式的参数

## 0.17.12
- feat: 热力图实现

## 0.17.11
- enhance: 加载图片时，做一个缓存

## 0.17.10
- roll engine #69360c9

## 0.17.9
- docs: 去除swift项目说明
- enhance: MarkerOption增加width和height参数, 仅限ios

## 0.17.8
- 提升依赖

## 0.17.7
- enhance: ios端合并mapViewMapDidMoveByUser和mapViewMapDidZoomByUser.
- fix: onMapCreated空判断

## 0.17.6
- feat: 增加轨迹功能 (#63)
- docs: README加入apk下载链接
- enhance: 加入打包好的apk
- enhance: 加入打包的jks (#139)

## 0.17.5
- roll engine #26272df
- feat: MarkerOption增加自定义数据字段 (#15)
- fix: setCenterCoordinate的zoomLevel asset错误处理

## 0.17.4
- fix: setCenterCoordinate的zoomLevel没有设置时触发了assert的错误

## 0.17.3
- enhance: ios端支持不同样式的marker

## 0.17.2
- roll engine #4d92ce0.

## 0.17.1
- roll engine #2721fb9
- fix: 修正安卓端CameraPosition构造函数tilt和bearing位置 (#133)

## 0.17.0
- enhance: Android端可以不用通过AndroidManifest.xml配置key

## 0.16.3
- fix: setCenterCoordinate的时候, 如果没有设置bearing和tilt, 则使用地图已有的状态

## 0.16.2
- feat: 增加获取缩放等级的方法

## 0.16.1
- feat: 限制显示区域

## 0.16.0
- roll engine #a3d4e61

## 0.15.0
- 提升依赖

## 0.14.2
- enhance: [android] 在onMapLoaded回调之后再回调onMapCreated

## 0.14.1
- feat: 绘制折线提供虚线的样式
- chore: 增加CI

## 0.14.0
- roll engine #e26c0fa
- enhance: 提升依赖

## 0.13.1
- enhance: 使用类常量代替字面量
- enhance: 当前位置大头针显示处理
- feat: Polygon增加判断点是否在区域内的方法`contains`
- feat: 增加setZoomByCenter设置是否以地图中心点进行缩放

## 0.13.0
- enhance: [breaking change] Location -> MapLocation 防止与amap_location_fluttify的Location对象冲突
- fix: 构造器传zoomLevel无效的处理

## 0.12.3
- feat: 增加setInfoWindowClickListener弹窗点击事件

## 0.12.2
- feat: 添加clear方法, 清除所有添加在地图上的覆盖物
- enhance: 提高flutter的约束版本
- enhance: 开放AmapController内部的androidController和iosController, 供使用者自行通过extension实现自己需要的方法

## 0.12.1
- fix: 降低url_launcher的版本

## 0.12.0
- docs: 添加requestPermission的参考实现
- enhance: 增加对zoomLevel的断言和文档说明
- enhance: [breaking change] getLocation方法更加可靠地获取定位信息, 要么有定位信息要么超时
- enhance: 导出amap_core_fluttify
- feat: 增加setMyLocationRotateAngle方法, ios端未实现
- fix: dispose时，调用地图的生命周期方法
- enhance: 各平台的初始化方法放在onMapCreated前面执行
- feat: 增加setMyLocationChangeListener

## 0.11.0
- roll engine #a918944
- enhance: 适配flutter 1.12.13

## 0.10.5
- feat: showMyLocation方法提供自定义图标的参数
- feat: Polygon和Circle增加remove方法

## 0.10.4
- docs: 改善zoomToSpan的说明
- fix: addMarkers方法添加infoWindowEnable的处理

## 0.10.3
- feat: 加入zoomToSpan方法
- docs: 如果使用全部组件就使用amap_all_fluttify

## 0.10.2
- docs: swift工程说明
- roll engine #a1a3fff

## 0.10.1
- 更新依赖

## 0.10.0
- fix: [breaking change] 增加单独的地图开始移动的回调, 统一android和ios的行为

## 0.9.1
- enhance: ios端地图移动加入开始移动的回调, 使之和android端行为保持一致.

## 0.9.0
- enhance: amap_controller作为amap_view的part, 防止AmapViewState被外部访问
- enhance: infoWindowEnabled默认true
- enhance: [breaking change] 纠正语义 onMapDrag -> onMapMoved, onMapClick -> onMapClicked, onMarkerClick -> onMarkerClicked

## 0.8.4
- fix: 用来获取MarkerLayer的GlobalKey在State中创建，防止出现多个MapView使用一个GlobalKey的情况

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
