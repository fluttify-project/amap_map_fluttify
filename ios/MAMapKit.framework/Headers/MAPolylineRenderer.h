//
//  MAPolylineRenderer.h
//  MAMapKit
//
//  
//  Copyright (c) 2011年 Amap. All rights reserved.
//

#import "MAConfig.h"
#import <UIKit/UIKit.h>
#import "MAPolyline.h"
#import "MAOverlayPathRenderer.h"

///此类用于绘制MAPolyline,可以通过MAOverlayPathRenderer修改其fill和stroke attributes
@interface MAPolylineRenderer : MAOverlayPathRenderer

///关联的MAPolyline model
@property (nonatomic, readonly) MAPolyline *polyline;

///设置是否显示3d箭头线, 默认为NO。如果设置为YES，则为3d箭头线。since 6.7.0
@property (nonatomic, assign) BOOL is3DArrowLine;

///设置为立体3d箭头的侧边颜色（当is3DArrowLine为YES时有效)顶部颜色使用strokeColor。since 6.7.0
@property (nonatomic, strong) UIColor *sideColor;

/**
 * @brief 根据指定的MAPolyline生成一个多段线Renderer
 * @param polyline 指定MAPolyline
 * @return 新生成的多段线Renderer
 */
- (instancetype)initWithPolyline:(MAPolyline *)polyline;

@end
