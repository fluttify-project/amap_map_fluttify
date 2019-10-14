//
//  MAOverlayPathRenderer.h
//  MAMapKit
//
//
//  Copyright (c) 2011年 Amap. All rights reserved.
//

#import "MAConfig.h"
#import <UIKit/UIKit.h>
#import "MAOverlayRenderer.h"

///该类设置overlay绘制的属性，可以使用该类的子类MACircleRenderer, MAPolylineRenderer, MAPolygonRenderer或者继承该类
@interface MAOverlayPathRenderer : MAOverlayRenderer

///填充颜色,默认是kMAOverlayRendererDefaultFillColor
@property (nonatomic, retain) UIColor *fillColor;

///笔触颜色,默认是kMAOverlayRendererDefaultStrokeColor
@property (nonatomic, retain) UIColor *strokeColor;

///笔触宽度,默认是0
@property (nonatomic, assign) CGFloat lineWidth;

///LineJoin,默认是kMALineJoinBevel
@property (nonatomic, assign) MALineJoinType lineJoinType;

///LineCap,默认是kMALineCapButt
@property (nonatomic, assign) MALineCapType lineCapType;

///MiterLimit,默认是10.f
@property (nonatomic, assign) CGFloat miterLimit;

///是否绘制成虚线, 默认是NO
@property (nonatomic, assign) BOOL lineDash __deprecated_msg("已废弃，请使用lineDashType");

///虚线类型, since 5.5.0
@property (nonatomic, assign) MALineDashType lineDashType;

@end
