//
//  MAArcRenderer.h
//  MAMapKit
//
//  Created by liubo on 2018/4/10.
//  Copyright © 2018年 Amap. All rights reserved.
//

#import "MAConfig.h"
#import "MAArc.h"
#import "MAOverlayPathRenderer.h"

///此类用于绘制MAArc,可以通过MAOverlayPathRenderer修改其stroke attributes
@interface MAArcRenderer : MAOverlayPathRenderer

///关联的MAArc model
@property (nonatomic, readonly) MAArc *arc;

/**
 * @brief 根据指定的MAArc生成一个圆弧Renderer
 * @param arc 指定MAArc
 * @return 新生成的圆弧Renderer
 */
- (instancetype)initWithArc:(MAArc *)arc;

@end
