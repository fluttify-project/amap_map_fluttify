//
//  MAPolyline.h
//  MAMapKit
//
//  
//  Copyright (c) 2011年 Amap. All rights reserved.
//

#import "MAConfig.h"
#import "MAMultiPoint.h"
#import "MAOverlay.h"

///此类用于定义一个由多个点相连的多段线，点与点之间尾部相连但第一点与最后一个点不相连, 通常MAPolyline是MAPolylineView的model
@interface MAPolyline : MAMultiPoint <MAOverlay>

/**
 * @brief 根据map point数据生成多段线
 * @param points map point数据,points对应的内存会拷贝,调用者负责该内存的释放
 * @param count  map point个数
 * @return 生成的多段线
 */
+ (instancetype)polylineWithPoints:(MAMapPoint *)points count:(NSUInteger)count;

/**
 * @brief 根据经纬度坐标数据生成多段线
 * @param coords 经纬度坐标数据,coords对应的内存会拷贝,调用者负责该内存的释放
 * @param count  经纬度坐标个数
 * @return 生成的多段线
 */
+ (instancetype)polylineWithCoordinates:(CLLocationCoordinate2D *)coords count:(NSUInteger)count;

/**
 * @brief 重新设置折线坐标点. since 5.0.0
 * @param points 指定的直角坐标点数组, C数组，内部会做copy，调用者负责内存管理
 * @param count 坐标点的个数
 * @return 是否设置成功
 */
- (BOOL)setPolylineWithPoints:(MAMapPoint *)points count:(NSInteger)count;

/**
 * @brief 重新设置折线坐标点. since 5.0.0
 * @param coords 指定的经纬度坐标点数组, C数组，内部会做copy，调用者负责内存管理
 * @param count 坐标点的个数
 * @return 是否设置成功
 */
- (BOOL)setPolylineWithCoordinates:(CLLocationCoordinate2D *)coords count:(NSInteger)count;

@end
