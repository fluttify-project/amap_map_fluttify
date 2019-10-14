//
//  MAAnnotation.h
//  MAMapKit
//
//  Created by yin cai on 11-12-13.
//  Copyright (c) 2011年 Amap. All rights reserved.
//

#import "MAConfig.h"
#import <CoreGraphics/CoreGraphics.h>
#import <CoreLocation/CoreLocation.h>
#import <Foundation/Foundation.h>
#import "MAGeometry.h"

///该类为标注点的protocol，提供了标注类的基本信息函数
@protocol MAAnnotation <NSObject>

///标注view中心坐标
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

@optional

///annotation标题
@property (nonatomic, copy) NSString *title;

///annotation副标题
@property (nonatomic, copy) NSString *subtitle;

/**
 * @brief 设置标注的坐标，在拖拽时会被调用.
 * @param newCoordinate 新的坐标值
 */
- (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate;

@end

/**
 * 支持动画需要实现的协议. since 4.5.0
 */
@protocol MAAnimatableAnnotation <NSObject>

@required
/**
 * @brief 动画帧更新回调接口，实现者可在内部做更新处理，如更新coordinate. （since 4.5.0）
 * @param timeDelta 时间步长，单位秒
 */
- (void)step:(CGFloat)timeDelta;

/**
 * @brief 动画是否已完成. 通过此方法判断是否需要将动画annotation移出渲染执行过程。（since 4.5.0）
 * @return YES动画已完成，NO没有完成
 */
- (BOOL)isAnimationFinished;

/**
 * @brief 动画是否可以开始. 通过此方法判断是否需要将动画annotation加入渲染过程，已经start且尚未finish的动画标注才会调用step方法。（since 6.0.0）
 * @return YES 可以开始，NO 尚未开始。
 */
- (BOOL)shouldAnimationStart;

@optional
/**
 * @brief 动画更新时调用此接口，获取annotationView的旋转角度，不实现默认为0. （since 4.5.0）
 * @return 当前annotation的旋转角度
 */
- (CLLocationDirection)rotateDegree;


@end
