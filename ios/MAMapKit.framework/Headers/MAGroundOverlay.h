//
//  MAGroundOverlay.h
//  MapKit_static
//
//  Created by Li Fei on 11/12/13.
//  Copyright © 2016 Amap. All rights reserved.
//

#import "MAConfig.h"

#if MA_INCLUDE_OVERLAY_GROUND

#import <UIKit/UIKit.h>
#import "MAShape.h"
#import "MAOverlay.h"

///该类用于确定覆盖在地图上的图片，及其覆盖区域, 通常MAGroundOverlay是MAGroundOverlayRenderer的model
@interface MAGroundOverlay : MAShape<MAOverlay>

///绘制在地图上的覆盖图片
@property (nonatomic, readonly) UIImage *icon;

///透明度. 最终透明度 = 纹理透明度 * alpha. 有效范围为[0.f, 1.f], 默认为1.f
@property (nonatomic, assign) CGFloat alpha;

///覆盖图片在地图尺寸等同于其像素的zoom值
@property (nonatomic, readonly) CGFloat zoomLevel;

///图片在地图中的覆盖范围
@property (nonatomic, readonly) MACoordinateBounds bounds;

/**
 * @brief 根据bounds值和icon生成GroundOverlay
 * @param bounds 图片的在地图的覆盖范围
 * @param icon   覆盖图片
 * @return 以bounds和icon 新生成GroundOverlay
 */
+ (instancetype)groundOverlayWithBounds:(MACoordinateBounds)bounds
                                   icon:(UIImage *)icon;

/**
 * @brief 根据coordinate,icon,zoomLevel生成GroundOverlay
 * @param coordinate 图片的在地图上的中心点
 * @param zoomLevel  图片在地图尺寸等同于像素的zoom值
 * @param icon       覆盖图片
 * @return 以coordinate,icon,zoomLevel 新生成GroundOverlay
 */
+ (instancetype)groundOverlayWithCoordinate:(CLLocationCoordinate2D)coordinate
                                  zoomLevel:(CGFloat)zoomLevel
                                       icon:(UIImage *)icon;

/**
 * @brief 更新GroundOverlay. since 5.0.0
 * @param bounds 图片的在地图的覆盖范围
 * @param icon   覆盖图片
 * @return 返回是否成功
 */
- (BOOL)setGroundOverlayWithBounds:(MACoordinateBounds)bounds icon:(UIImage *)icon;

/**
 * @brief 更新GroundOverlay. since 5.0.0
 * @param coordinate 图片的在地图上的中心点
 * @param zoomLevel  图片在地图尺寸等同于像素的zoom值
 * @param icon       覆盖图片
 * @return 返回是否成功
 */
- (BOOL)setGroundOverlayWithCoordinate:(CLLocationCoordinate2D)coordinate
                             zoomLevel:(CGFloat)zoomLevel
                                  icon:(UIImage *)icon;

@end

#endif
