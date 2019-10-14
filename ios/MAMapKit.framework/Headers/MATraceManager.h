//
//  MATraceManager.h
//  MAMapKit
//
//  Created by shaobin on 16/9/1.
//  Copyright © 2016年 Amap. All rights reserved.
//



#import "MAConfig.h"

#if MA_INCLUDE_TRACE_CORRECT

#import <Foundation/Foundation.h>
#import <AMapFoundationKit/AMapFoundationKit.h>
#import "MATraceLocation.h"

@class MATraceManager;

///处理中回调， index: 批次编号，0 based
typedef void(^MAProcessingCallback)(int index, NSArray<MATracePoint *> *points);

///成功回调，distance：距离，单位米
typedef void(^MAFinishCallback)(NSArray<MATracePoint *> *points, double distance);

///失败回调
typedef void(^MAFailedCallback)(int errorCode, NSString *errorDesc);

///定位回调, locations: 原始定位点; tracePoints: 纠偏后的点，如果纠偏失败返回nil; distance:距离; error: 纠偏失败时的错误信息
typedef void(^MATraceLocationCallback)(NSArray<CLLocation *> *locations, NSArray<MATracePoint *> *tracePoints, double distance, NSError *error);

/**
 * @brief 轨迹定位的代理协议，since v6.2.0
*/
@protocol MATraceDelegate <NSObject>

@required

/**
 * @brief 轨迹定位纠偏的回调方法，since v6.2.0
 * @param manager 轨迹定位管理对象
 * @param locations 已经完成纠偏的原始定位数据
 * @param tracePoints 已经完成纠偏处理后的轨迹点
 * @param error 如果成功的话为nil，否则为失败原因
 */
- (void)traceManager:(MATraceManager *)manager
            didTrace:(NSArray<CLLocation *> *)locations
             correct:(NSArray<MATracePoint *> *)tracePoints
            distance:(double)distance
           withError:(NSError *)error;

@optional
/**
 *  @brief 当plist配置NSLocationAlwaysUsageDescription或者NSLocationAlwaysAndWhenInUseUsageDescription，并且[CLLocationManager authorizationStatus] == kCLAuthorizationStatusNotDetermined，会调用代理的此方法。
 此方法实现调用后台权限API即可（ 该回调必须实现 [locationManager requestAlwaysAuthorization] ）; since 6.8.1
 *  @param locationManager  地图的CLLocationManager。
 */
- (void)mapViewRequireLocationAuth:(CLLocationManager *)locationManager;

@end

///轨迹纠偏管理类
@interface MATraceManager : NSObject

/**
 * @brief 单例方法
 */
+ (instancetype)sharedInstance;

/**
 * @brief 获取纠偏后的经纬度点集
 * @param locations 待纠偏处理的点集, 顺序即为传入的顺序
 * @param type loctions经纬度坐标的类型, 如果已经是高德坐标系，传 -1
 * @param processingCallback  如果一次传入点过多，内部会分批处理。每处理完一批就调用此回调
 * @param finishCallback 全部处理完毕调用此回调
 * @param failedCallback 失败调用此回调
 * @return 返回一个NSOperation对象，可调用cancel取消
 */
- (NSOperation *)queryProcessedTraceWith:(NSArray<MATraceLocation *>*)locations
                                    type:(AMapCoordinateType)type
                      processingCallback:(MAProcessingCallback)processingCallback
                          finishCallback:(MAFinishCallback)finishCallback
                          failedCallback:(MAFailedCallback)failedCallback;

/**
 * @brief 开始轨迹定位, 内部使用系统CLLocationManager，distanceFilter，desiredAccuracy均为系统默认值
 * @param locCallback 定位回调, 回调中返回坐标类型为AMapCoordinateTypeGPS
 */
- (void)startTraceWith:(MATraceLocationCallback)locCallback  __attribute__((deprecated("use start instead")));

/**
 * @brief 停止轨迹定位
 */
- (void)stopTrace  __attribute__((deprecated("use stop instead")));

/**
 * @brief 轨迹定位的代理回调对象，配合start和stop方法使用，since v6.2.0
 */
@property (nonatomic, weak) id<MATraceDelegate> delegate;

/**
 * @brief 开始轨迹定位, 内部使用系统CLLocationManager，distanceFilter，desiredAccuracy均为系统默认值，since v6.2.0
 */
- (void)start;

/**
 * @brief 停止轨迹定位，since v6.2.0
 */
- (void)stop;

@end

#endif
