//
//  MAMultiPointOverlayRenderer.h
//  MAMapKit
//
//  Created by hanxiaoming on 2017/4/11.
//  Copyright © 2017年 Amap. All rights reserved.
//

#import "MAMultiPointOverlay.h"
#import "MAOverlayRenderer.h"

@class MAMultiPointOverlayRenderer;

///MAMultiPointOverlayRenderer代理（since 5.1.0）
@protocol MAMultiPointOverlayRendererDelegate <NSObject>
@optional

/**
 @brief 点击海量点图层回调

 @param renderer 海量点图层渲染器
 @param item 被点击的单个点对象
 */
- (void)multiPointOverlayRenderer:(MAMultiPointOverlayRenderer *)renderer didItemTapped:(MAMultiPointItem *)item;

@end

///海量点渲染renderer（since 5.1.0）。 注意：为了保证渲染效率，纹理不受alpha参数影响，如果需要设置透明度，请更换icon。
@interface MAMultiPointOverlayRenderer : MAOverlayRenderer

///MAMultiPointOverlayRendererDelegate代理对象
@property (nonatomic, weak) id<MAMultiPointOverlayRendererDelegate> delegate;

///标注纹理图片
@property (nonatomic, strong) UIImage *icon;

///纹理渲染大小，默认为icon图片大小
@property (nonatomic, assign) CGSize pointSize;

///经纬度对应图片中的位置，默认为(0.5,0.5)，范围[0-1] 负值自动取其绝对值 左上角为 (0,0) 右下角为 (1,1)
@property (nonatomic, assign) CGPoint anchor;

///对应的overlay
@property (nonatomic, readonly) MAMultiPointOverlay *multiPointOverlay;

///初始化方法
- (instancetype)initWithMultiPointOverlay:(MAMultiPointOverlay *)multiPointOverlay;

@end
