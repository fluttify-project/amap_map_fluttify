//
//  MAMultiTexturePolylineRenderer.h
//  MapKit_static
//
//  Created by yi chen on 12/11/15.
//  Copyright © 2016 Amap. All rights reserved.
//

#import "MAConfig.h"
#import "MAPolylineRenderer.h"
#import "MAMultiPolyline.h"

///此类用于绘制MAMultiPolyline对应的多彩线，支持分段纹理绘制
@interface MAMultiTexturePolylineRenderer : MAPolylineRenderer

///关联的MAMultiPolyline model
@property (nonatomic, readonly) MAMultiPolyline *multiPolyline;

///分段纹理图片数组
@property (nonatomic, strong) NSArray *strokeTextureImages;

///取分段纹理id,返回分段纹理id数组, 如果strokeTextureImages未指定、尚未加载或加载失败，返回值可能包含0
@property (nonatomic, strong, readonly) NSArray<NSNumber*> *strokeTextureIDs;

/**
 * @brief 根据指定的MAMultiPolyline生成一个多段线Renderer
 * @param multiPolyline 指定MAMultiPolyline
 * @return 新生成的多段线Renderer
 */
- (instancetype)initWithMultiPolyline:(MAMultiPolyline *)multiPolyline;

/**
 * @brief 加载分段绘制的纹理图片. 需要分段纹理绘制时，必须设置。否则使用默认纹理绘制
 * @param textureImages 必须为UIImage数组，纹理图片（需满足：长宽相等，且宽度值为2的次幂）。若为nil，则清空原有纹理
 * @return 是否成功，若纹理加载失败返回0
 */
- (BOOL)loadStrokeTextureImages:(NSArray *)textureImages __attribute__((deprecated("已废弃, 请通过属性strokeTextureImages设置")));

@end
