//
//  MAAnnotationMoveAnimation.h
//  MAMapKit
//
//  Created by shaobin on 16/11/21.
//  Copyright © 2016 Amap. All rights reserved.
//


#import "MAConfig.h"
#import <Foundation/Foundation.h>
#import "MAAnnotation.h"

///annotation移动动画. since 4.5.0
@interface MAAnnotationMoveAnimation : NSObject

/**
 * @brief 获取动画名字
 * @return 添加动画时传入的名字
 */
- (NSString *)name;

/**
 * @brief 获取经纬度坐标点数组
 * @return 返回经纬度坐标点数组
 */
- (CLLocationCoordinate2D *)coordinates;

/**
 * @brief 获取coordinates数组内坐标点个数
 * @return coordinates数组内坐标点个数
 */
- (NSUInteger)count;

/**
 * @brief 获取动画时长
 * @return 动画时长
 */
- (CGFloat)duration;

/**
 * @brief 获取动画已执行的时长
 * @return 动画已执行的时长
 */
- (CGFloat)elapsedTime;

/**
 * @brief 取消
 */
- (void)cancel;

/**
 * @brief 是否已取消
 * @return YES已取消，NO未取消
 */
- (BOOL)isCancelled;

/**
 * @brief 获取当前动画已走过点的总个数
 * @return 个数
 */
- (NSInteger)passedPointCount;


@end
