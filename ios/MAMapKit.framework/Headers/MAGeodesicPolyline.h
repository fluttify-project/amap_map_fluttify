//
//  MAGeodesicPolyline.h
//  MapKit_static
//
//  Created by songjian on 13-10-23.
//  Copyright © 2016 Amap. All rights reserved.

#import "MAConfig.h"

#if MA_INCLUDE_OVERLAY_GEODESIC

#import "MAPolyline.h"

///大地曲线
@interface MAGeodesicPolyline : MAPolyline

/**
 * @brief 根据MAMapPoints生成大地曲线
 * @param points MAMapPoint点
 * @param count  点的个数
 * @return 生成的大地曲线
 */
+ (instancetype)polylineWithPoints:(MAMapPoint *)points count:(NSUInteger)count;

/**
 * @brief 根据经纬度生成大地曲线
 * @param coords 经纬度
 * @param count  点的个数
 * @return 生成的大地曲线
 */
+ (instancetype)polylineWithCoordinates:(CLLocationCoordinate2D *)coords count:(NSUInteger)count;

/**
 * @brief 重新设置坐标点. since 5.0.0
 * @param points 指定的直角坐标点数组，C数组，内部会做copy，调用者负责内存管理。
 * @param count 坐标点的个数
 * @return 是否设置成功
 */
- (BOOL)setPolylineWithPoints:(MAMapPoint *)points count:(NSInteger)count;

/**
 * @brief 重新设置坐标点. since 5.0.0
 * @param coords 指定的经纬度坐标点数组，C数组，内部会做copy，调用者负责内存管理
 * @param count 坐标点的个数
 * @return 是否设置成功
 */
- (BOOL)setPolylineWithCoordinates:(CLLocationCoordinate2D *)coords count:(NSInteger)count;

@end

#endif
