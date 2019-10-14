//
//  MAMultiPoint.h
//  MAMapKit
//
//
//  Copyright (c) 2011年 Amap. All rights reserved.
//

#import "MAConfig.h"
#import <Foundation/Foundation.h>
#import "MAShape.h"
#import "MAGeometry.h"

///该类是个由多个点组成的虚基类, 不能直接实例化对象, 要使用其子类MAPolyline,MAPolygon来实例化
@interface MAMultiPoint : MAShape {
    @package
    MAMapPoint *_points;
    NSUInteger _pointCount;
    MAMapRect _boundingRect;
}

///坐标点数组
@property (nonatomic, readonly) MAMapPoint *points;

///坐标点的个数
@property (nonatomic, readonly) NSUInteger pointCount;

///是否跨越180度经度线，默认NO since 6.4.0
@property (nonatomic, assign, readonly) BOOL cross180Longitude;

/**
 * @brief 将内部的坐标点数据转化为经纬度坐标并拷贝到coords内存中
 * @param coords 调用者提供的内存空间, 该空间长度必须大于等于要拷贝的坐标点的个数（range.length）
 * @param range  要拷贝的数据范围
 */
- (void)getCoordinates:(CLLocationCoordinate2D *)coords range:(NSRange)range;

@end
