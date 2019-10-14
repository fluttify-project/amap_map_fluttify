//
//  MAShape.h
//  MAMapKit
//
//  
//  Copyright (c) 2011年 Amap. All rights reserved.
//

#import "MAConfig.h"
#import <Foundation/Foundation.h>
#import "MAAnnotation.h"

///该类为一个抽象类，定义了基于MAAnnotation的MAShape类的基本属性和行为，不能直接使用，必须子类化之后才能使用
@interface MAShape : NSObject <MAAnnotation> {

    NSString *_title;       ///<标题
    NSString *_subtitle;    ///<副标题
}

///标题
@property (nonatomic, copy) NSString *title;

///副标题
@property (nonatomic, copy) NSString *subtitle;

@end
