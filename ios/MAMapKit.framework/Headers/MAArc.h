//
//  MAArc.h
//  MAMapKit
//
//  Created by liubo on 2018/4/10.
//  Copyright © 2018年 Amap. All rights reserved.
//

#import "MAConfig.h"
#import "MAShape.h"
#import "MAOverlay.h"

///该类用于定义一个圆弧, 通常MAArc是MAArcRenderer的model
@interface MAArc : MAShape <MAOverlay>

///起点经纬度坐标，无效坐标按照{0，0}处理
@property (nonatomic, assign) CLLocationCoordinate2D startCoordinate;

///途径点经纬度坐标，无效坐标按照{0，0}处理
@property (nonatomic, assign) CLLocationCoordinate2D passedCoordinate;

///终点经纬度坐标，无效坐标按照{0，0}处理
@property (nonatomic, assign) CLLocationCoordinate2D endCoordinate;

///该圆弧的外接MapRect
@property (nonatomic, readonly) MAMapRect boundingMapRect;

/**
 * @brief 根据起点、途经点和终点生成圆弧
 * @param startCoordinate 起点的经纬度坐标，无效坐标按照{0，0}处理
 * @param passedCoordinate 途径点的经纬度坐标，无效坐标按照{0，0}处理
 * @param endCoordinate 终点的经纬度坐标，无效坐标按照{0，0}处理
 * @return 新生成的圆弧
 */
+ (instancetype)arcWithStartCoordinate:(CLLocationCoordinate2D)startCoordinate
                      passedCoordinate:(CLLocationCoordinate2D)passedCoordinate
                         endCoordinate:(CLLocationCoordinate2D)endCoordinate;

@end
