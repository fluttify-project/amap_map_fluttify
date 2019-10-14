//
//  MACustomBuildingOverlay.h
//  MAMapKit
//
//  Created by liubo on 2018/5/23.
//  Copyright © 2018年 Amap. All rights reserved.
//

#import "MAShape.h"
#import "MAOverlay.h"
#import "MAMultiPoint.h"

#pragma mark - MACustomBuildingOverlayOption

///该类用于定义一个楼块显示选项. since 6.3.0
@interface MACustomBuildingOverlayOption : MAMultiPoint

///楼块的高度. 修改该属性会使option范围内的所有楼块为同一个高度. (范围 (-1 U [1, 1000]). 默认-1,显示为默认高度.)
@property (nonatomic, assign) CGFloat height;

///楼块的高度缩放比例. 修改该属性会使option范围内的所有楼块高度放大或者缩小heightScale倍. (默认1. 如果指定了height则此值将被忽略.)
@property (nonatomic, assign) CGFloat heightScale;

///楼块的顶面颜色. (默认[UIColor lightGrayColor], 不支持透明度)
@property (nonatomic, strong) UIColor *topColor;

///楼块的侧面颜色. (默认[UIColor darkGrayColor], 不支持透明度)
@property (nonatomic, strong) UIColor *sideColor;

///option选项是否可见. (默认YES)
@property (nonatomic, assign) BOOL visibile;

/**
 * @brief 根据经纬度坐标数据生成楼块显示选项option
 * @param coords 经纬度坐标点数据,coords对应的内存会拷贝,调用者负责该内存的释放
 * @param count  经纬度坐标点数组个数
 * @return 新生成的楼块显示选项option
 */
+ (instancetype)optionWithCoordinates:(CLLocationCoordinate2D *)coords count:(NSUInteger)count;

/**
 * @brief 重新设置option范围.
 * @param coords 指定的经纬度坐标点数组, C数组，内部会做copy，调用者负责内存管理
 * @param count 坐标点的个数
 * @return 是否设置成功
 */
- (BOOL)setOptionWithCoordinates:(CLLocationCoordinate2D *)coords count:(NSUInteger)count;

@end


#pragma mark - MACustomBuildingOverlay

///该类用于定义一个自定义楼块MACustomBuildingOverlay, 通常MACustomBuildingOverlay是MACustomBuildingOverlayRenderer的model.(注意: 自定义楼块仅支持在zoomLevel>=15级时显示) since 6.3.0
@interface MACustomBuildingOverlay : MAShape<MAOverlay>

///默认的楼块显示option, 将显示所有的楼块. (如果不需要显示所有的楼块,可以设置defaultOption.visibile = NO)
@property (nonatomic, readonly) MACustomBuildingOverlayOption *defaultOption;

///当前自定义的楼块显示options. (options按添加顺序, 后添加的在最上层显示)
@property (nonatomic, readonly) NSArray<MACustomBuildingOverlayOption *> *customOptions;

/**
 * @brief 增加自定义楼块显示的option
 * @param option 要增加的自定义楼块显示option
 */
- (void)addCustomOption:(MACustomBuildingOverlayOption *)option;

/**
 * @brief 移除自定义楼块显示的option
 * @param option 要移除的自定义楼块显示option
 */
- (void)removeCustomOption:(MACustomBuildingOverlayOption *)option;

@end
