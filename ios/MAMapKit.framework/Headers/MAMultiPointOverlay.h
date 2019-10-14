//
//  MAMultiPointOverlay.h
//  MAMapKit
//
//  Created by hanxiaoming on 2017/4/11.
//  Copyright © 2017年 Amap. All rights reserved.
//

#import "MAShape.h"
#import "MAOverlay.h"

///海量点overlay单个点对象（since 5.1.0）
@interface MAMultiPointItem : NSObject<NSCopying, MAAnnotation>

///经纬度
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;

///唯一标识，默认为nil。
@property (nonatomic, copy) NSString *customID;

///标题
@property (nonatomic, copy) NSString *title;

///副标题
@property (nonatomic, copy) NSString *subtitle;

@end


///海量点overlay（since 5.1.0）
@interface MAMultiPointOverlay : MAShape<MAOverlay>

///点对象集合
@property (nonatomic, readonly) NSArray<MAMultiPointItem *> *items;

///初始化方法
- (instancetype)initWithMultiPointItems:(NSArray<MAMultiPointItem *> *)items;

@end
