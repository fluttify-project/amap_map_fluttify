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
