//
//  MAOverlayRenderer.h
//  MAMapKit
//
//
//  Copyright (c) 2011年 Amap. All rights reserved.
//

#import "MAConfig.h"
#import <UIKit/UIKit.h>
#import "MAOverlay.h"
#import "MALineDrawType.h"

///虚线类型
typedef NS_ENUM(NSUInteger, MALineDashType) {
    kMALineDashTypeNone = 0,     ///<不画虚线
    kMALineDashTypeSquare,       ///<方块样式
    kMALineDashTypeDot,          ///<圆点样式
};


#define kMAOverlayRendererDefaultStrokeColor [UIColor colorWithRed:0.3 green:0.63 blue:0.89 alpha:0.8]
#define kMAOverlayRendererDefaultFillColor [UIColor colorWithRed:0.77 green:0.88 blue:0.94 alpha:0.8]

@protocol MAOverlayRenderDelegate;

///该类是地图覆盖物Renderer的基类, 提供绘制overlay的接口但并无实际的实现（render相关方法只能在重写后的glRender方法中使用）
@interface MAOverlayRenderer : NSObject {
    @protected
    GLuint _strokeTextureID;
    BOOL _needsUpdate;
    BOOL _needsLoadStrokeTexture;
}

///由地图添加时，不要手动设置。如果不是使用mapview进行添加，则需要手动设置。（since 5.1.0）
@property (nonatomic, weak) id<MAOverlayRenderDelegate> rendererDelegate;

///关联的overlay对象
@property (nonatomic, readonly, retain) id <MAOverlay> overlay;

///缓存的OpenGLES坐标
@property (nonatomic) CGPoint *glPoints  __attribute__((deprecated("已废弃")));

///缓存的OpenGLES坐标
@property (nonatomic) NSUInteger glPointCount  __attribute__((deprecated("已废弃")));

///用于生成笔触纹理id的图片（image需满足: 长宽相等,且宽度值为2的整数次幂; 如果您需要减轻绘制产生的锯齿,您可以参考AMap.bundle中的traffic_texture_blue.png的方式,在image两边增加部分透明像素.)。（since 5.3.0）
@property (nonatomic, strong) UIImage *strokeImage;

///笔触纹理id, 修改纹理id参考, 如果strokeImage未指定、尚未加载或加载失败返回0
@property (nonatomic, readonly) GLuint strokeTextureID;

///透明度[0，1]，默认为1. 使用MAOverlayRenderer类提供的渲染接口会自动应用此属性。（since 5.1.0）
@property (nonatomic, assign) CGFloat alpha;

///overlay渲染的scale。（since 5.1.0）
@property (nonatomic, readonly) CGFloat contentScale;

/**
 * @brief 初始化并返回一个Overlay Renderer
 * @param overlay 关联的overlay对象
 * @return 初始化成功则返回overlay view,否则返回nil
 */
- (instancetype)initWithOverlay:(id <MAOverlay>)overlay;

/**
 *  @brief 获取当前地图view矩阵，数组长度为16，无需外界释放. 需要添加至地图后，才能获取有效矩阵数据，否则返回NULL
 *  @return 矩阵数组
 */
- (float *)getViewMatrix;

/**
 *  @brief 获取当前地图projection矩阵，数组长度为16，无需外界释放. 需要添加至地图后，才能获取有效矩阵数据，否则返回NULL
 *  @return 矩阵数组
 */
- (float *)getProjectionMatrix;

/**
 *  @brief 获取当前地图中心点偏移，用以把地图坐标转换为gl坐标。需要添加到地图获取才有效。（since 5.1.0）
 *  @return 偏移
 */
- (MAMapPoint)getOffsetPoint;

/**
 *  @brief 获取当前地图缩放级别，需要添加到地图获取才有效。（since 5.1.0）
 *  @return 缩放级别
 */
- (CGFloat)getMapZoomLevel;

/**
 * @brief 将MAMapPoint转化为相对于receiver的本地坐标，deprecated
 * @param mapPoint 要转化的MAMapPoint
 * @return 相对于receiver的本地坐标
 */
- (CGPoint)pointForMapPoint:(MAMapPoint)mapPoint __attribute__((deprecated("已废弃")));

/**
 * @brief 将相对于receiver的本地坐标转化为MAMapPoint, deprecated
 * @param point 要转化的相对于receiver的本地坐标
 * @return MAMapPoint
 */
- (MAMapPoint)mapPointForPoint:(CGPoint)point __attribute__((deprecated("已废弃")));

/**
 * @brief 将MAMapRect转化为相对于receiver的本地rect, deprecated
 * @param mapRect 要转化的MAMapRect
 * @return 相对于receiver的本地rect
 */
- (CGRect)rectForMapRect:(MAMapRect)mapRect __attribute__((deprecated("已废弃")));

/**
 * @brief 将相对于receiver的本地rect转化为MAMapRect, deprecated
 * @param rect 要转化的相对于receiver的本地rect
 * @return MAMapRect
 */
- (MAMapRect)mapRectForRect:(CGRect)rect __attribute__((deprecated("已废弃")));


/**
 * @brief 将MAMapPoint转换为opengles可以直接使用的坐标
 * @param mapPoint MAMapPoint坐标
 * @return 直接支持的坐标
 */
- (CGPoint)glPointForMapPoint:(MAMapPoint)mapPoint;

/**
 * @brief 批量将MAMapPoint转换为opengles可以直接使用的坐标
 * @param mapPoints MAMapPoint坐标数据指针
 * @param count     个数
 * @return 直接支持的坐标数据指针(需要调用者手动释放)
 */
- (CGPoint *)glPointsForMapPoints:(MAMapPoint *)mapPoints count:(NSUInteger)count;

/**
 * @brief 将屏幕尺寸转换为OpenGLES尺寸
 * @param windowWidth 屏幕尺寸
 * @return OpenGLES尺寸
 */
- (CGFloat)glWidthForWindowWidth:(CGFloat)windowWidth;

/**
 * @brief OpenGLES坐标系发生改变, 重新计算缓存的OpenGLES坐标, deprecated
 */
- (void)referenceDidChange __attribute__((deprecated("已废弃")));

/**
 * @brief 使用OpenGLES 绘制线
 * @param points      OpenGLES坐标系点指针, 参考- (CGPoint)glPointForMapPoint:(MAMapPoint)mapPoint, - (CGPoint *)glPointsForMapPoints:(MAMapPoint *)mapPoints count:(NSUInteger)count
 * @param pointCount  点个数
 * @param strokeColor 线颜色
 * @param lineWidth   OpenGLES支持线宽尺寸, 参考 - (CGFloat)glWidthForWindowWidth:(CGFloat)windowWidth
 * @param looped      是否闭合, 如polyline会设置NO, polygon会设置YES
 */
- (void)renderLinesWithPoints:(CGPoint *)points
                   pointCount:(NSUInteger)pointCount
                  strokeColor:(UIColor *)strokeColor
                    lineWidth:(CGFloat)lineWidth
                       looped:(BOOL)looped;

/**
 * @brief 使用OpenGLES 绘制线
 * @param points       OpenGLES坐标系点指针, 参考- (CGPoint)glPointForMapPoint:(MAMapPoint)mapPoint, - (CGPoint *)glPointsForMapPoints:(MAMapPoint *)mapPoints count:(NSUInteger)count
 * @param pointCount   点个数
 * @param strokeColor  线颜色
 * @param lineWidth    OpenGLES支持线宽尺寸, 参考 - (CGFloat)glWidthForWindowWidth:(CGFloat)windowWidth
 * @param looped       是否闭合, 如polyline会设置NO, polygon会设置YES
 * @param lineJoinType 线连接点样式
 * @param lineCapType  线端点样式
 * @param lineDash     虚线类型
 */
- (void)renderLinesWithPoints:(CGPoint *)points
                   pointCount:(NSUInteger)pointCount
                  strokeColor:(UIColor *)strokeColor
                    lineWidth:(CGFloat)lineWidth
                       looped:(BOOL)looped
                 LineJoinType:(MALineJoinType)lineJoinType
                  LineCapType:(MALineCapType)lineCapType
                     lineDash:(MALineDashType)lineDash;

/**
 * @brief 使用OpenGLES 按指定纹理绘制线
 * @param points     OpenGLES坐标系点指针, 参考- (CGPoint)glPointForMapPoint:(MAMapPoint)mapPoint, - (CGPoint *)glPointsForMapPoints:(MAMapPoint *)mapPoints count:(NSUInteger)count
 * @param pointCount 点个数
 * @param lineWidth  线OpenGLES支持线宽尺寸, 参考 - (CGFloat)glWidthForWindowWidth:(CGFloat)windowWidth
 * @param textureID  指定的纹理
 * @param looped     是否闭合, 如polyline会设置NO, polygon会设置YES
 */
- (void)renderTexturedLinesWithPoints:(CGPoint *)points
                           pointCount:(NSUInteger)pointCount
                            lineWidth:(CGFloat)lineWidth
                            textureID:(GLuint)textureID
                               looped:(BOOL)looped;

/**
 * @brief 使用OpenGLES 绘制多纹理线
 * @param points           OpenGLES坐标系点指针, 参考- (CGPoint)glPointForMapPoint:(MAMapPoint)mapPoint, - (CGPoint *)glPointsForMapPoints:(MAMapPoint *)mapPoints count:(NSUInteger)count
 * @param pointCount       点个数
 * @param lineWidth        线OpenGLES支持线宽尺寸, 参考 - (CGFloat)glWidthForWindowWidth:(CGFloat)windowWidth
 * @param textureIDs       各段指定的纹理 使用- (BOOL)loadStrokeTextureImages:(NSArray *)textureImages;加载,在strokeTextureIDs属性中获取
 * @param drawStyleIndexes 纹理索引数组，成员为NSNumber,且为非负数，负数按0处理
 * @param looped           是否闭合, 如polyline会设置NO, polygon会设置YES
 */
- (void)renderTexturedLinesWithPoints:(CGPoint *)points
                           pointCount:(NSUInteger)pointCount
                            lineWidth:(CGFloat)lineWidth
                           textureIDs:(NSArray *)textureIDs
                     drawStyleIndexes:(NSArray *)drawStyleIndexes
                               looped:(BOOL)looped;


/**
 * @brief 使用OpenGLES 绘制多段颜色线
 * @param points           OpenGLES坐标系点指针, 参考- (CGPoint)glPointForMapPoint:(MAMapPoint)mapPoint, - (CGPoint *)glPointsForMapPoints:(MAMapPoint *)mapPoints count:(NSUInteger)count
 * @param pointCount       点个数
 * @param strokeColors     各段指定的颜色
 * @param drawStyleIndexes 颜色索引数组，成员为NSNumber,且为非负数，负数按0处理
 * @param isGradient       颜色是否渐变
 * @param lineWidth        线OpenGLES支持线宽尺寸, 参考 - (CGFloat)glWidthForWindowWidth:(CGFloat)windowWidth
 * @param looped           是否闭合, 如polyline会设置NO, polygon会设置YES
 * @param lineJoinType     线连接点样式
 * @param lineCapType      线端点样式
 * @param lineDash         虚线类型
 */
- (void)renderLinesWithPoints:(CGPoint *)points
                   pointCount:(NSUInteger)pointCount
                 strokeColors:(NSArray *)strokeColors
             drawStyleIndexes:(NSArray *)drawStyleIndexes
                   isGradient:(BOOL)isGradient
                    lineWidth:(CGFloat)lineWidth
                       looped:(BOOL)looped
                 LineJoinType:(MALineJoinType)lineJoinType
                  LineCapType:(MALineCapType)lineCapType
                     lineDash:(MALineDashType)lineDash;


/**
 * @brief 使用OpenGLES 绘制区域
 * @param points           OpenGLES坐标系点指针, 参考- (CGPoint)glPointForMapPoint:(MAMapPoint)mapPoint, - (CGPoint *)glPointsForMapPoints:(MAMapPoint *)mapPoints count:(NSUInteger)count
 * @param pointCount       点个数
 * @param fillColor        填充颜色
 * @param usingTriangleFan 若必为凸多边形输入YES，可能为凹多边形输入NO
 */
- (void)renderRegionWithPoints:(CGPoint *)points
                    pointCount:(NSUInteger)pointCount
                     fillColor:(UIColor *)fillColor
              usingTriangleFan:(BOOL)usingTriangleFan;


/**
 * @brief 使用OpenGLES 绘制区域(带轮廓线) \n注意：strokeLineWidth为0 或 strokeColor为nil 时不绘制轮廓线。
 * @param points             OpenGLES坐标系点指针, 参考- (CGPoint)glPointForMapPoint:(MAMapPoint)mapPoint, - (CGPoint *)glPointsForMapPoints:(MAMapPoint *)mapPoints count:(NSUInteger)count
 * @param pointCount         点个数
 * @param fillColor          填充颜色
 * @param strokeColor        轮廓线颜色
 * @param strokeLineWidth    轮廓线宽。OpenGLES支持线宽尺寸, 参考 - (CGFloat)glWidthForWindowWidth:(CGFloat)windowWidth
 * @param strokeLineJoinType 轮廓线连接点样式
 * @param strokeLineDash     轮廓虚线类型
 * @param usingTriangleFan   若必为凸多边形输入YES，可能为凹多边形输入NO
 */
- (void)renderStrokedRegionWithPoints:(CGPoint *)points pointCount:(NSUInteger)pointCount
                            fillColor:(UIColor *)fillColor
                          strokeColor:(UIColor *)strokeColor
                      strokeLineWidth:(CGFloat)strokeLineWidth
                   strokeLineJoinType:(MALineJoinType)strokeLineJoinType
                       strokeLineDash:(MALineDashType)strokeLineDash
                     usingTriangleFan:(BOOL)usingTriangleFan;


/**
 * @brief 使用OpenGLES 绘制区域(带纹理轮廓线) \n注意：strokeLineWidth为0 或 strokeTexture为0 时不绘制轮廓线。
 * @param points           OpenGLES坐标系点指针, 参考- (CGPoint)glPointForMapPoint:(MAMapPoint)mapPoint, - (CGPoint *)glPointsForMapPoints:(MAMapPoint *)mapPoints count:(NSUInteger)count
 * @param pointCount       点个数
 * @param fillColor        填充颜色
 * @param strokeLineWidth  轮廓线宽。OpenGLES支持线宽尺寸, 参考 - (CGFloat)glWidthForWindowWidth:(CGFloat)windowWidth
 * @param strokeTexture    轮廓线纹理。使用- (void)loadStrokeTextureImage:(UIImage *)textureImage;加载
 * @param usingTriangleFan 若必为凸多边形输入YES，可能为凹多边形输入NO
 */
- (void)renderTextureStrokedRegionWithPoints:(CGPoint *)points
                                  pointCount:(NSUInteger)pointCount
                                   fillColor:(UIColor *)fillColor
                             strokeTineWidth:(CGFloat)strokeLineWidth
                             strokeTextureID:(GLuint)strokeTexture
                            usingTriangleFan:(BOOL)usingTriangleFan;

/**
 * @brief 使用OpenGLES 绘制图片
 * @param textureID OpenGLES纹理ID
 * @param points    OpenGLES坐标系点指针,纹理矩形的四个顶点坐标,其第一个坐标为图片左上角，依次顺时针传入其他顶点 ,参考- (CGPoint)glPointForMapPoint:(MAMapPoint)mapPoint, - (CGPoint *)glPointsForMapPoints:(MAMapPoint *)mapPoints count:(NSUInteger)count
 */
- (void)renderIconWithTextureID:(GLuint)textureID points:(CGPoint *)points;

/**
 * @brief 使用OpenGLES 绘制图片
 * @param textureID     OpenGLES纹理ID
 * @param points        OpenGLES坐标系点指针,纹理矩形的四个顶点坐标,其第一个坐标为图片左上角，依次顺时针传入其他顶点 ,参考- (CGPoint)glPointForMapPoint:(MAMapPoint)mapPoint, - (CGPoint *)glPointsForMapPoints:(MAMapPoint *)mapPoints count:(NSUInteger)count
 * @param modulateColor 调节颜色值, 最终颜色 = 纹理色 * modulateColor. 如只需要调节alpha的话就设置为[red=1, green=1, blue=1, alpha=0.5]
 */
- (void)renderIconWithTextureID:(GLuint)textureID points:(CGPoint *)points modulateColor:(UIColor *)modulateColor;

/**
 * @brief 绘制函数(子类需要重载来实现)
 */
- (void)glRender;

/**
 * @brief 加载纹理图片，纹理ID存储在成员strokeTextureID中。纹理图片为nil时，清空原有纹理
 * @param textureImage 纹理图片（需满足：长宽相等，且宽度值为2的次幂）。若为nil，则清空原有纹理
 * @return openGL纹理ID, 若纹理加载失败返回0
 */
- (GLuint)loadStrokeTextureImage:(UIImage *)textureImage __attribute__((deprecated("已废弃, 请通过属性strokeImage设置")));

/**
 * @brief 加载纹理图片（since 5.1.0）
 * @param textureImage 纹理图片（需满足：长宽相等，且宽度值为2的次幂)
 * @return openGL纹理ID, 若纹理加载失败返回0
 */
- (GLuint)loadTexture:(UIImage *)textureImage;

/**
 @brief 删除纹理（since 5.1.0）
 @param textureId 纹理ID
 */
- (void)deleteTexture:(GLuint)textureId;

/**
 * @brief 当关联overlay对象有更新时，调用此接口刷新. since 5.0.0
 */
- (void)setNeedsUpdate;

@end
