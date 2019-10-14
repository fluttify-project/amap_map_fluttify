//
//  MAPolygon.h
//  MAMapKit
//
//  Copyright (c) 2011年 Amap. All rights reserved.
//

#import "MAConfig.h"
#import <Foundation/Foundation.h>
#import "MAMultiPoint.h"
#import "MAOverlay.h"

///此类用于定义一个由多个点组成的闭合多边形, 点与点之间按顺序尾部相连, 第一个点与最后一个点相连, 通常MAPolygon是MAPolygonView的model
@interface MAPolygon : MAMultiPoint <MAOverlay>

///设置中空区域，用来创建中间带空洞的复杂图形。注意：传入的overlay只支持MAPolgon类型和MACircle类型,不支持与polygon边相交或在polygon外部,不支持hollowShapes彼此间相交,和空洞顺序有关,不支持嵌套. since 5.5.0
@property (nonatomic, strong) NSArray<id<MAOverlay>> *hollowShapes;

/**
 * @brief 根据经纬度坐标数据生成闭合多边形
 * @param coords 经纬度坐标点数据,coords对应的内存会拷贝,调用者负责该内存的释放
 * @param count  经纬度坐标点数组个数
 * @return 新生成的多边形
 */
+ (instancetype)polygonWithCoordinates:(CLLocationCoordinate2D *)coords count:(NSUInteger)count;

/**
 * @brief 根据map point数据生成多边形
 * @param points map point数据,points对应的内存会拷贝,调用者负责该内存的释放
 * @param count  点的个数
 * @return 新生成的多边形
 */
+ (instancetype)polygonWithPoints:(MAMapPoint *)points count:(NSUInteger)count;

/**
 * @brief 重新设置多边形顶点. since 5.0.0
 * @param points 指定的直角坐标点数组, C数组，内部会做copy，调用者负责内存管理
 * @param count 坐标点的个数
 * @return 是否设置成功
 */
- (BOOL)setPolygonWithPoints:(MAMapPoint *)points count:(NSInteger)count;

/**
 * @brief 重新设置多边形顶点. since 5.0.0
 * @param coords 指定的经纬度坐标点数组, C数组，内部会做copy，调用者负责内存管理
 * @param count 坐标点的个数
 * @return 是否设置成功
 */
- (BOOL)setPolygonWithCoordinates:(CLLocationCoordinate2D *)coords count:(NSInteger)count;

@end
