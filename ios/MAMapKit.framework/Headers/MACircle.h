//
//  MACircle.h
//  MAMapKit
//
//
//  Copyright (c) 2011年 Amap. All rights reserved.

#import "MAConfig.h"
#import "MAShape.h"
#import "MAOverlay.h"
#import "MAGeometry.h"

///该类用于定义一个圆, 通常MACircle是MACircleView的model
@interface MACircle : MAShape <MAOverlay> {
    @package
    MAMapRect _boundingMapRect;
}

///设置中空区域，用来创建中间带空洞的复杂图形。注意：传入的overlay只支持MAPolgon类型和MACircle类型,不支持与此circle边相交或在circle外部,不支持hollowShapes彼此间相交,和空洞顺序有关,不支持嵌套. since 5.5.0
@property (nonatomic, strong) NSArray<id<MAOverlay>> *hollowShapes;

///中心点经纬度坐标，无效坐标按照{0，0}处理
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;

///半径，单位：米 负数按照0处理
@property (nonatomic, assign) CLLocationDistance radius;

///该圆的外接map rect
@property (nonatomic, readonly) MAMapRect boundingMapRect;

/**
 * @brief 根据中心点和半径生成圆
 * @param coord  中心点的经纬度坐标，无效坐标按照{0，0}处理
 * @param radius 半径，单位：米, 负数按照0处理
 * @return 新生成的圆
 */
+ (instancetype)circleWithCenterCoordinate:(CLLocationCoordinate2D)coord
                                    radius:(CLLocationDistance)radius;

/**
 * @brief 根据map rect生成圆
 * @param mapRect mapRect 圆的最小外界矩形
 * @return 新生成的圆
 */
+ (instancetype)circleWithMapRect:(MAMapRect)mapRect;

/**
 * @brief 设置圆的中心点和半径. since 5.0.0
 * @param coord 中心点的经纬度坐标，无效坐标按照{0，0}处理
 * @param radius 半径，单位：米 负数按照0处理
 * @return 是否设置成功
 */
- (BOOL)setCircleWithCenterCoordinate:(CLLocationCoordinate2D)coord radius:(CLLocationDistance)radius;

@end
