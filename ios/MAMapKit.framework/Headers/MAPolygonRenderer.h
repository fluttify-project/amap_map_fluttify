//
//  MAPolygonRenderer.h
//  MAMapKit
//
//  
//  Copyright (c) 2011年 Amap. All rights reserved.
//

#import "MAConfig.h"
#import <UIKit/UIKit.h>
#import "MAPolygon.h"
#import "MAOverlayPathRenderer.h"

///此类用于绘制MAPolygon,可以通过MAOverlayPathRenderer修改其fill和stroke attributes
@interface MAPolygonRenderer : MAOverlayPathRenderer

///关联的MAPolygon model
@property (nonatomic, readonly) MAPolygon *polygon;

/**
 * @brief 根据指定的多边形生成一个多边形Renderer
 * @param polygon polygon 指定的多边形数据对象
 * @return 新生成的多边形Renderer
 */
- (instancetype)initWithPolygon:(MAPolygon *)polygon;

@end
