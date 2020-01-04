# 下载源码自行编译可能遇到的问题

> `iOS`编译推荐使用`Xcode`进行；`Android`编译推荐使用`Android Stuido`进行

### 这里以`Android Studio`为例

- 下载源码后，使用`Android
  studio`打开项目：File->Open->选择`amap_map_fluttify/example`.
- 等待`Android Studio`索引完毕，找到`pubspec.yaml`文件，点击`Packages
  get`，等待执行完毕
- 等到此 Flutter 项目中 Dart
  代码不再报错了就能分别编译`iOS`和`Android`了

#### 编译 Android   

- 使用`Android Studio`打开`Android
  `项目：File->Open->选择`amap_map_fluttify/example/android`
- 等待 Gradle 同步 

同步过程中可能遇到各种问题，例如高德地图库中的各种类重复，此时`Clean`一下 Android
项目，然后最好再`Invalidate Caches\Restart`，基本就能解决了。 如果还不行，找到
Gradle
缓存文件夹，我自己是`/Users/{name}/.gradle/caches/modules-2/files-2.1/`，找到
console
中报错的类的包名，以高德为例，com.amap.api，进入此包名文件夹，检查是否有多个版本的缓存，多余的资源等，如果有就删除没有被引用的.
如果还是有问题，找到 flutter 的 pub-caches
文件夹，我自己是`/Users/{name}/.pub-cache/hosted/pub.flutter-io.cn`，在里面搜索无法通过编译的类/插件/packages的名称，会发现可能存在多个版本的。
`amap_map_fluttify`的`fluttify`引擎更新，`amap_map_fluttify`的版本抬升等，都会有较新的版本被同步下来，此时可以适当删除非当前所使用的版本包.
再次回到`Android`项目同步即可，一般都能通过编译并且能正常打包.

#### 编译 iOS   

- 使用`Xcode`打开`ios`项目
- 连接真机
- 左边视图切换到`Project
  navigator`下，点击`Runner(如果没有修改名称的话)`，点击`TARGETS`下的`Runner`，选择`Signing
  & Capabilities`，点击`All`，修改`Bundle Identifier`，然后重新编译

编译过程中可能会遇到一些错误，就目前来看这些错误带入`Google`都能得到解答(我不是 iOSer😖)

---

### Swift工程集成时, 报`无效的资源bundle，请检查AMap.bundle是否正确导入。`

方案1. 注释掉ios工程的Podfile内的`use_frameworks!`.<br/>
方案2. 参考 [手动添加bundle到工程](https://lbs.amap.com/api/ios-sdk/guide/create-project/manual-configuration), 把`AMap.bundle`加入到主工程中.

### Swift工程集成时, 报`The 'Pods-Runner' target has transitive dependencies that include statically linked binaries`

方案1. 注释掉ios工程的Podfile内的`use_frameworks!`.<br/>
方案2. 重新创建项目, 并选择objc.

### 集成最新版本时, 报`Because run depends on xxx_fluttify x.x.x which doesn't match any versions, version solving failed.`

方案1: 在命令行运行`flutter packages upgrade; flutter packages get`, 而不是使用ide获取依赖.<br/>
方案2: 去掉国内镜像换成官方源, 即注释掉环境变量

```shell script
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
```

方案3: 等待国内镜像同步最新版本.

### 使用模拟器, 崩溃

使用真机调试.

### iOS端集成地图, 报`Trying to embed a platform view but the PrerollContext does not support embedding`

看README提到的`Info.plist`配置.

### Android端报`INVALID_USER_SCODE`

1. 检查申请的高德key是否正确<br/>
2. 检查key是否配置在`<application>`标签下, 有的人是配置到`<activity>`下了, 导致SDK没有取到值
