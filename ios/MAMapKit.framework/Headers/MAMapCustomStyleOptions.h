//
//  MAMapCustomStyleOptions.h
//  MAMapKit
//
//  Created by ldj on 2018/11/27.
//  Copyright © 2018 Amap. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MAMapCustomStyleOptions : NSObject

///自定义样式二进制
@property (nonatomic, strong) NSData *styleData;

///设置地图自定义样式对应的styleID，从官网获取
@property (nonatomic, strong) NSString *styleId;

///设置自定义纹理文件二进制
@property (nonatomic, strong) NSData *styleTextureData;

///样式额外的配置，比如路况，背景颜色等  since 6.7.0
@property (nonatomic, strong) NSData *styleExtraData;

@end

