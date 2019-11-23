## Swift工程集成时, 报`无效的资源bundle，请检查AMap.bundle是否正确导入。`
参考 [手动添加bundle到工程](https://lbs.amap.com/api/ios-sdk/guide/create-project/manual-configuration), 把`AMap.bundle`加入到主工程中.

## 集成最新版本时, 报`Because run depends on xxx_fluttify x.x.x which doesn't match any versions, version solving failed.`
方案1: 去掉国内镜像换成官方源, 即注释掉环境变量
```shell script
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
```
方案2: 等待国内镜像同步最新版本.

## 使用模拟器, 奔溃
使用真机调试.

## iOS端集成地图, 报`Trying to embed a platform view but the PrerollContext does not support embedding`
看README提到的`Info.plist`配置.
 