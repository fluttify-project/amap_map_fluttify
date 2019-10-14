//
//  AMapSearchServices.h
//  AMapSearchKit
//
//  Created by xiaoming han on 15/6/18.
//  Copyright (c) 2015年 xiaoming han. All rights reserved.
//

#import <Foundation/Foundation.h>

///高德SDK服务类
@interface AMapServices : NSObject

/**
 * @brief 获取单例
 */
+ (AMapServices *)sharedServices;

///APIkey。设置key，需要在高德官网控制台绑定对应的bundleid。
@property (nonatomic, copy) NSString *apiKey;

///是否开启HTTPS，从1.3.3版本开始默认为YES。
@property (nonatomic, assign) BOOL enableHTTPS;

///是否启用崩溃日志上传。默认为YES, 只有在真机上设置有效。\n开启崩溃日志上传有助于我们更好的了解SDK的状况，可以帮助我们持续优化和改进SDK。需要注意的是，SDK内部是通过设置NSUncaughtExceptionHandler来捕获异常的，如果您的APP中使用了其他收集崩溃日志的SDK，或者自己有设置NSUncaughtExceptionHandler的话，请保证 AMapServices 的初始化是在其他设置NSUncaughtExceptionHandler操作之后进行的，我们的handler会再处理完异常后调用前一次设置的handler，保证之前设置的handler会被执行。
@property (nonatomic, assign) BOOL crashReportEnabled;

///设备标识，取自idfv。用于排查问题时提供。
@property (nonatomic, readonly) NSString *identifier;

@end
