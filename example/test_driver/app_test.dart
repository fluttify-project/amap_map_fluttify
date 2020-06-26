import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('创建地图', () {
    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('是否显示定位', () async {
      await driver.tap(find.text('创建地图'));
      await driver.tap(find.text('显示地图'));
      await wait(3);

      await driver.tap(find.text('是否显示定位'));
      await wait(3);
    });

    test('选择定位模式', () async {
      await driver.tap(find.text('选择定位模式'));
      await driver.tap(find.text('定位一次并移动地图到中心'));
      await wait();
    });

    test('选择定位间隔时间', () async {
      await driver.tap(find.text('选择定位间隔时间'));
      await driver.tap(find.text('1秒'));
      await wait();
    });

    test('获取当前位置经纬度', () async {
      await driver.tap(find.text('获取当前位置经纬度'));
      await wait(3);
    });

    test('使用自定义定位图标', () async {
      final target = find.text('使用自定义定位图标');

      await driver.scrollIntoView(target);
      await driver.tap(find.text('使用自定义定位图标'));
      await wait();
    });

    test('切换地图图层', () async {
      final target = find.text('切换地图图层');

      await driver.scrollIntoView(target);
      await driver.tap(target);
      await driver.tap(find.text('正常视图'));
      await wait();
      await driver.tap(target);
      await driver.tap(find.text('卫星视图'));
      await wait();
      await driver.tap(target);
      await driver.tap(find.text('黑夜视图'));
      await wait();
      await driver.tap(target);
      await driver.tap(find.text('导航视图'));
      await wait();
      await driver.tap(target);
      await driver.tap(find.text('公交视图'));
      await wait();
    });

    test('切换语言', () async {
      final target = find.text('切换语言');

      await driver.scrollIntoView(target);
      await driver.tap(target);
      await driver.tap(find.text('英文'));
      await wait();

      await driver.tap(target);
      await driver.tap(find.text('中文'));
    });

    test('是否显示路况信息', () async {
      final target = find.text('是否显示路况信息');

      await driver.scrollIntoView(target);
      await driver.tap(target);
      await wait();
    });

    test('获取地图中心点', () async {
      final target = find.text('获取地图中心点');

      await driver.scrollIntoView(target);
      await driver.tap(target);
      await wait();
    });
  });
}

Future wait([int seconds = 2]) {
  return Future.delayed(Duration(seconds: seconds));
}
