//
//  MAMapView.h
//  MAMapKit
//
//  Created by 翁乐 on 3/17/16.
//  Copyright © 2016 Amap. All rights reserved.
//

#import "MAConfig.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MAOverlay.h"
#import "MAOverlayRenderer.h"
#import "MAAnnotationView.h"
#import "MACircle.h"
#import "MAUserLocation.h"
#import "MAMapStatus.h"
#import "MAIndoorInfo.h"
#import "MAUserLocationRepresentation.h"
#import "MAMapCustomStyleOptions.h"

///地图类型
typedef NS_ENUM(NSInteger, MAMapType)
{
    MAMapTypeStandard = 0,  ///< 普通地图
    MAMapTypeSatellite,     ///< 卫星地图
    MAMapTypeStandardNight, ///< 夜间视图
    MAMapTypeNavi,          ///< 导航视图
    MAMapTypeBus            ///< 公交视图
};

///用户跟踪模式
typedef NS_ENUM(NSInteger, MAUserTrackingMode)
{
    MAUserTrackingModeNone              = 0,    ///< 不追踪用户的location更新
    MAUserTrackingModeFollow            = 1,    ///< 追踪用户的location更新
    MAUserTrackingModeFollowWithHeading = 2     ///< 追踪用户的location与heading更新
};

///交通拥堵状态
typedef NS_ENUM(NSInteger, MATrafficStatus)
{
    MATrafficStatusSmooth = 1,                  ///< 1 通畅
    MATrafficStatusSlow,                        ///< 2 缓行
    MATrafficStatusJam,                         ///< 3 阻塞
    MATrafficStatusSeriousJam,                  ///< 4 严重阻塞
};

///绘制overlay的层级
typedef NS_ENUM(NSInteger, MAOverlayLevel) {
    MAOverlayLevelAboveRoads = 0,   ///< 在地图底图标注和兴趣点图标之下绘制overlay
    MAOverlayLevelAboveLabels       ///< 在地图底图标注和兴趣点图标之上绘制overlay
};

#pragma mark - 动画相关的key
///中心点(MAMapPoint)key, 封装成[NSValue valueWithMAMapPoint:]
extern NSString * const kMAMapLayerCenterMapPointKey;

///缩放级别key, 范围[minZoomLevel, maxZoomLevel], 封装成NSNumber
extern NSString * const kMAMapLayerZoomLevelKey;

///旋转角度key, 范围[0, 360), 封装成NSNumber
extern NSString * const kMAMapLayerRotationDegreeKey;

///摄像机俯视角度, 范围[0, 45], 封装成NSNumber
extern NSString * const kMAMapLayerCameraDegreeKey;


@protocol MAMapViewDelegate;

@interface MAMapView : UIView

///地图view的delegate
@property (nonatomic, weak) id<MAMapViewDelegate> delegate;

///地图类型
@property (nonatomic) MAMapType mapType;

///当前地图的中心点，改变该值时，地图的比例尺级别不会发生变化
@property (nonatomic) CLLocationCoordinate2D centerCoordinate;

///当前地图的经纬度范围，设定的该范围可能会被调整为适合地图窗口显示的范围
@property (nonatomic) MACoordinateRegion region;

///可见区域, 设定的该范围可能会被调整为适合地图窗口显示的范围
@property (nonatomic) MAMapRect visibleMapRect;

///设置可见地图区域的矩形边界，如限制地图只显示北京市范围
@property (nonatomic, assign) MACoordinateRegion limitRegion;

///设置可见地图区域的矩形边界，如限制地图只显示北京市范围
@property (nonatomic, assign) MAMapRect limitMapRect;

///缩放级别（默认3-19，有室内地图时为3-20）
@property (nonatomic) CGFloat zoomLevel;

///最小缩放级别
@property (nonatomic) CGFloat minZoomLevel;

///最大缩放级别（有室内地图时最大为20，否则为19）
@property (nonatomic) CGFloat maxZoomLevel;

///设置地图旋转角度(逆时针为正向)
@property (nonatomic) CGFloat rotationDegree;

///设置地图相机角度(范围为[0.f, 60.f]，但高于40度的角度需要在16级以上才能生效)
@property (nonatomic) CGFloat cameraDegree;

///是否以screenAnchor点作为锚点进行缩放，默认为YES。如果为NO，则以手势中心点作为锚点
@property (nonatomic, assign) BOOL zoomingInPivotsAroundAnchorPoint;

///是否支持缩放, 默认YES
@property (nonatomic, getter = isZoomEnabled) BOOL zoomEnabled;

///是否支持平移, 默认YES
@property (nonatomic, getter = isScrollEnabled) BOOL scrollEnabled;

///是否支持旋转, 默认YES
@property (nonatomic, getter = isRotateEnabled) BOOL rotateEnabled;

///是否支持camera旋转, 默认YES
@property (nonatomic, getter = isRotateCameraEnabled) BOOL rotateCameraEnabled;

///是否支持天空模式，默认为YES. 开启后，进入天空模式后，annotation重用可视范围会缩减
@property (nonatomic, getter = isSkyModelEnabled) BOOL skyModelEnable __attribute((deprecated("已废弃 since 6.0.0")));

///是否显示楼块，默认为YES
@property (nonatomic, getter = isShowsBuildings) BOOL showsBuildings;

///是否显示底图标注, 默认为YES
@property (nonatomic, assign, getter = isShowsLabels) BOOL showsLabels;

///是否显示交通路况图层, 默认为NO
@property (nonatomic, getter = isShowTraffic) BOOL showTraffic;

///设置实时交通颜色,key为 MATrafficStatus
@property (nonatomic, copy) NSDictionary <NSNumber *, UIColor *> *trafficStatus;

///设置实时交通线宽系数，默认线宽系数为0.8，范围为[0 - 1] (since 5.3.0)
@property (nonatomic, assign) CGFloat trafficRatio __attribute((deprecated("已废弃 since 6.0.0, 不再支持修改实时交通线宽")));

///是否支持单击地图获取POI信息(默认为YES), 对应的回调是 -(void)mapView:(MAMapView *) didTouchPois:(NSArray *)
@property (nonatomic, assign) BOOL touchPOIEnabled;

///是否显示指南针, 默认YES
@property (nonatomic, assign) BOOL showsCompass;

///指南针原点位置
@property (nonatomic, assign) CGPoint compassOrigin;

///指南针的宽高
@property (nonatomic, readonly) CGSize compassSize;

///是否显示比例尺, 默认YES
@property (nonatomic, assign) BOOL showsScale;

///比例尺原点位置
@property (nonatomic, assign) CGPoint scaleOrigin;

///比例尺的最大宽高
@property (nonatomic, readonly) CGSize scaleSize;

///logo位置, 必须在mapView.bounds之内，否则会被忽略
@property (nonatomic, assign) CGPoint logoCenter;

///logo的宽高
@property (nonatomic, readonly) CGSize logoSize;

///在当前缩放级别下, 基于地图中心点, 1 screen point 对应的距离(单位是米)
@property (nonatomic, readonly) double metersPerPointForCurrentZoom;

///标识当前地图中心位置是否在中国范围外。此属性不是精确判断，不能用于边界区域
@property (nonatomic, readonly) BOOL isAbroad;

///最大帧数，有效的帧数为：60、30、20、10等能被60整除的数。默认为60
@property (nonatomic, assign) NSUInteger maxRenderFrame;

///是否允许降帧，默认为YES
@property (nonatomic, assign) BOOL isAllowDecreaseFrame;

///停止/开启 OpenGLES绘制, 默认NO. 对应回调是 - (void)mapView:(MAMapView *) didChangeOpenGLESDisabled:(BOOL)
@property (nonatomic, assign) BOOL openGLESDisabled;

///地图的视图锚点。坐标系归一化，(0, 0)为MAMapView左上角，(1, 1)为右下角。默认为(0.5, 0.5)，即当前地图的视图中心 （since 5.0.0）
@property (nonatomic, assign) CGPoint screenAnchor;

///地图渲染的runloop mode，默认为NSRunLoopCommonModes。如果是和UIScrollView一起使用且不希望地图在scrollView拖动时渲染，请设置此值为NSDefaultRunLoopMode。（since 5.1.0）
@property (nonatomic, copy) NSRunLoopMode runLoopMode;

///是否显示海外地图，默认为@NO. 注意：必须先在官网申请开通海外权限
@property (nonatomic, getter=isShowsWorldMap) NSNumber *showsWorldMap;

///设置语言。中文:@0: 英文:@1. 英文使用注意事项：1、不能和自定义地图样式同时使用；2、英文状态只在MAMapTypeStandard生效
@property (nonatomic, strong) NSNumber *mapLanguage;

/**
 * @brief 设定当前地图的经纬度范围，该范围可能会被调整为适合地图窗口显示的范围
 * @param region 要设定的经纬度范围
 * @param animated 是否动画设置
 */
- (void)setRegion:(MACoordinateRegion)region animated:(BOOL)animated;

/**
 * @brief 根据当前地图视图frame的大小调整region范围
 * @param region 要调整的经纬度范围
 * @return 调整后的经纬度范围
 */
- (MACoordinateRegion)regionThatFits:(MACoordinateRegion)region;

/**
 * @brief 设置可见区域
 * @param mapRect 要设定的可见区域
 * @param animated 是否动画设置
 */
- (void)setVisibleMapRect:(MAMapRect)mapRect animated:(BOOL)animated;

/**
 * @brief 重新计算可见地图矩形区域,使之匹配mapview长宽比
 * @param mapRect 要调整的地图矩形区域
 * @return 调整后的地图矩形区域
 */
- (MAMapRect)mapRectThatFits:(MAMapRect)mapRect;

/**
 * @brief 根据边缘插入来调整地图矩形区域，使之匹配mapview加insets后的长宽比
 * @param mapRect 要调整的地图矩形区域
 * @param insets 边缘插入
 * @return 调整后的地图矩形区域
 */
- (MAMapRect)mapRectThatFits:(MAMapRect)mapRect edgePadding:(UIEdgeInsets)insets;

/**
 * @brief 设置可见地图矩形区域
 * @param insets 边缘插入
 * @param mapRect 要显示的地图矩形区域
 * @param animated 是否动画效果
 */
- (void)setVisibleMapRect:(MAMapRect)mapRect edgePadding:(UIEdgeInsets)insets animated:(BOOL)animated;

/**
 * @brief 设置当前地图的中心点，改变该值时，地图的比例尺级别不会发生变化
 * @param coordinate 要设置的中心点
 * @param animated 是否动画设置
 */
- (void)setCenterCoordinate:(CLLocationCoordinate2D)coordinate animated:(BOOL)animated;

/**
 * @brief 设置缩放级别（默认3-19，有室内地图时为3-20）
 * @param zoomLevel 要设置的缩放级别
 * @param animated 是否动画设置
 */
- (void)setZoomLevel:(CGFloat)zoomLevel animated:(BOOL)animated;

/**
 * @brief 根据指定的枢纽点来缩放地图
 * @param zoomLevel 缩放级别
 * @param pivot 枢纽点(基于地图view的坐标系)
 * @param animated 是否动画
 */
- (void)setZoomLevel:(CGFloat)zoomLevel atPivot:(CGPoint)pivot animated:(BOOL)animated;

/**
 * @brief 设置地图旋转角度(逆时针为正向)
 * @param rotationDegree 旋转角度, 如当前角度是0，720表示逆时针旋转2周，-720表示正时针旋转2周
 * @param animated 动画
 * @param duration 动画时间
 */
- (void)setRotationDegree:(CGFloat)rotationDegree animated:(BOOL)animated duration:(CFTimeInterval)duration;

/**
 * @brief 设置地图相机角度(范围为[0.f, 60.f]，但高于40度的角度需要在16级以上才能生效)
 * @param cameraDegree 要设置的相机角度
 * @param animated 是否动画
 * @param duration 动画时间
 */
- (void)setCameraDegree:(CGFloat)cameraDegree animated:(BOOL)animated duration:(CFTimeInterval)duration;

/**
 * @brief 获取地图状态
 * @return 地图状态
 */
- (MAMapStatus *)getMapStatus;


/**
 * @brief 设置地图状态
 * @param status 要设置的地图状态
 * @param animated 是否动画
 */
- (void)setMapStatus:(MAMapStatus *)status animated:(BOOL)animated;

/**
 * @brief 设置地图状态
 * @param status 要设置的地图状态
 * @param animated 是否动画
 * @param duration 动画时间，默认动画时间为0.35s
 */
- (void)setMapStatus:(MAMapStatus *)status
            animated:(BOOL)animated
            duration:(CFTimeInterval)duration;

/**
 * @brief 设置指南针的图片
 * @param image 新的指南针图片
 */
- (void)setCompassImage:(UIImage *)image;

/**
 * @brief 在指定区域内截图(默认会包含该区域内的annotationView),注意不要在地图回调方法内直接调用
 * @param rect 指定的区域
 * @return 截图image
 */
- (UIImage *)takeSnapshotInRect:(CGRect)rect __attribute((deprecated("已废弃，请使用takeSnapshotInRect:withCompletionBlock:方法 since 6.0.0")));

/**
 * @brief 异步在指定区域内截图(默认会包含该区域内的annotationView), 地图载入完整时回调
 * @param rect 指定的区域
 * @param block 回调block(resultImage:返回的图片,state：0载入不完整，1完整）
 */
- (void)takeSnapshotInRect:(CGRect)rect withCompletionBlock:(void (^)(UIImage *resultImage, NSInteger state))block;

/**
 * @brief 在指定的缩放级别下, 基于地图中心点, 1 screen point 对应的距离(单位是米).
 * @param zoomLevel 指定的缩放级别, 在[minZoomLevel, maxZoomLevel]范围内.
 * @return 对应的距离(单位是米)
 */
- (double)metersPerPointForZoomLevel:(CGFloat)zoomLevel;

/**
 * @brief 将经纬度转换为指定view坐标系的坐标
 * @param coordinate 经纬度
 * @param view 指定的view
 * @return 基于指定view坐标系的坐标
 */
- (CGPoint)convertCoordinate:(CLLocationCoordinate2D)coordinate toPointToView:(UIView *)view;

/**
 * @brief 将指定view坐标系的坐标转换为经纬度
 * @param point 指定view坐标系的坐标
 * @param view 指定的view
 * @return 经纬度
 */
- (CLLocationCoordinate2D)convertPoint:(CGPoint)point toCoordinateFromView:(UIView *)view;

/**
 * @brief 将经纬度region转换为指定view坐标系的rect
 * @param region 经纬度region
 * @param view 指定的view
 * @return 指定view坐标系的rect
 */
- (CGRect)convertRegion:(MACoordinateRegion)region toRectToView:(UIView *)view;

/**
 * @brief 将指定view坐标系的rect转换为经纬度region
 * @param rect 指定view坐标系的rect
 * @param view 指定的view
 * @return 经纬度region
 */
- (MACoordinateRegion)convertRect:(CGRect)rect toRegionFromView:(UIView *)view;

/**
 * @brief 重新加载地图 
 * 
 * 将离线地图解压到 Documents/3dvmap/ 目录下后，调用此函数使离线数据生效,
 * 对应的回调分别是 offlineDataWillReload:(MAMapView *)mapView, offlineDataDidReload:(MAMapView *)mapView.
 */
- (void)reloadMap;

/**
 * @brief 清除所有磁盘上缓存的地图数据(不包括离线地图)
 */
- (void)clearDisk;

/**
 * @brief 重新加载内部纹理，在纹理被错误释放时可以执行此方法。（since 5.4.0）
 */
- (void)reloadInternalTexture;

/**
 * @brief 获取地图审图号。如果启用了“自定义样式”功能(customMapStyleEnabled 为 YES)，则返回nil。（since 5.4.0）
 * @return 地图审图号
 */
- (NSString *)mapContentApprovalNumber;

/**
 * @brief 获取卫星图片审图号。（since 5.4.0）
 * @return 卫星图片审图号
 */
- (NSString *)satelliteImageApprovalNumber;

/**
 * @brief 添加CAKeyframeAnimation动画。（since 6.0.0）
 * @param mapCenterAnimation 地图中心点动画
 * @param zoomAnimation 放大缩小动画
 * @param rotateAnimation 旋转动画
 * @param cameraDegreeAnimation 仰角动画
 */
- (void)addAnimationWith:(CAKeyframeAnimation *)mapCenterAnimation
           zoomAnimation:(CAKeyframeAnimation *)zoomAnimation
         rotateAnimation:(CAKeyframeAnimation *)rotateAnimation
   cameraDegreeAnimation:(CAKeyframeAnimation *)cameraDegreeAnimation;

/**
 * @brief 强制刷新。（since 6.0.0）
 */
- (void)forceRefresh;

@end

@interface MAMapView (Annotation)

///所有添加的标注, 注意从5.3.0开始返回数组内不再包含定位蓝点userLocation
@property (nonatomic, readonly) NSArray *annotations;

///处于选中状态的标注数据数据(其count == 0 或 1)
@property (nonatomic, copy) NSArray *selectedAnnotations;

///annotation 可见区域
@property (nonatomic, readonly) CGRect annotationVisibleRect;

///是否允许对annotationView根据zIndex进行排序，默认为NO 注意：如果设置为YES，慎重重载MAAnnoationView的willMoveToSuperview:，内部排序时会调用removeFromSuperView. 注：从5.3.0版本开启此属性废弃，如果添加的annotationView有zIndex不为0的，则自动开启为YES，否则为NO。删除所有annotation后会重置。zIndex属性只有在viewForAnnotation或者didAddAnnotationViews回调中设置有效。
@property (nonatomic, assign) BOOL allowsAnnotationViewSorting __attribute((deprecated("已废弃 since 5.3.0")));

/**
 * @brief 向地图窗口添加标注，需要实现MAMapViewDelegate的-mapView:viewForAnnotation:函数来生成标注对应的View
 * @param annotation 要添加的标注
 */
- (void)addAnnotation:(id <MAAnnotation>)annotation;

/**
 * @brief 向地图窗口添加一组标注，需要实现MAMapViewDelegate的-mapView:viewForAnnotation:函数来生成标注对应的View
 * @param annotations 要添加的标注数组
 */
- (void)addAnnotations:(NSArray *)annotations;

/**
 * @brief 移除标注
 * @param annotation 要移除的标注
 */
- (void)removeAnnotation:(id <MAAnnotation>)annotation;

/**
 * @brief 移除一组标注
 * @param annotations 要移除的标注数组
 */
- (void)removeAnnotations:(NSArray *)annotations;

/**
 * @brief 获取指定投影矩形范围内的标注
 * @param mapRect 投影矩形范围
 * @return 标注集合
 */
- (NSSet *)annotationsInMapRect:(MAMapRect)mapRect;

/**
 * @brief 根据标注数据获取标注view
 * @param annotation 标注数据
 * @return 对应的标注view
 */
- (MAAnnotationView *)viewForAnnotation:(id <MAAnnotation>)annotation;

/**
 * @brief 从复用内存池中获取制定复用标识的annotation view
 * @param identifier 复用标识
 * @return annotation view
 */
- (MAAnnotationView *)dequeueReusableAnnotationViewWithIdentifier:(NSString *)identifier;

/**
 * @brief 选中标注数据对应的view。注意：如果annotation对应的annotationView因不在屏幕范围内而被移入复用池，为了完成选中操作，会将对应的annotationView添加到地图上，并将地图中心点移至annotation.coordinate的位置。
 * @param annotation 标注数据
 * @param animated 是否有动画效果
 */
- (void)selectAnnotation:(id <MAAnnotation>)annotation animated:(BOOL)animated;

/**
 * @brief 取消选中标注数据对应的view
 * @param annotation 标注数据
 * @param animated 是否有动画效果
 */
- (void)deselectAnnotation:(id <MAAnnotation>)annotation animated:(BOOL)animated;

/**
 * @brief 设置地图使其可以显示数组中所有的annotation, 如果数组中只有一个则直接设置地图中心为annotation的位置。
 * @param annotations 需要显示的annotation
 * @param animated    是否执行动画
 */
- (void)showAnnotations:(NSArray *)annotations animated:(BOOL)animated;

/**
 * @brief 设置地图使其可以显示数组中所有的annotation, 如果数组中只有一个则直接设置地图中心为annotation的位置。
 * @param annotations 需要显示的annotation
 * @param insets      insets 嵌入边界
 * @param animated    是否执行动画
 */
- (void)showAnnotations:(NSArray *)annotations edgePadding:(UIEdgeInsets)insets animated:(BOOL)animated;

@end


@interface MAMapView (UserLocation)

///是否显示用户位置
@property (nonatomic) BOOL showsUserLocation;

///当前的位置数据
@property (nonatomic, readonly) MAUserLocation *userLocation;

///是否自定义用户位置精度圈(userLocationAccuracyCircle)对应的 view, 默认为 NO.\n 如果为YES: 会调用 - (MAOverlayRenderer *)mapView (MAMapView *)mapView rendererForOverlay:(id <MAOverlay>)overlay 若返回nil, 则不加载.\n 如果为NO : 会使用默认的样式.
@property (nonatomic) BOOL customizeUserLocationAccuracyCircleRepresentation;

///用户位置精度圈 对应的overlay
@property (nonatomic, readonly) MACircle *userLocationAccuracyCircle;

///定位用户位置的模式, 注意：在follow模式下，设置地图中心点、设置可见区域、滑动手势、选择annotation操作会取消follow模式，并触发 - (void)mapView:(MAMapView *)mapView didChangeUserTrackingMode:(MAUserTrackingMode)mode animated:(BOOL)animated;
@property (nonatomic) MAUserTrackingMode userTrackingMode;

///当前位置再地图中是否可见
@property (nonatomic, readonly, getter=isUserLocationVisible) BOOL userLocationVisible;

///设定定位的最小更新距离。默认为kCLDistanceFilterNone，会提示任何移动
@property (nonatomic) CLLocationDistance distanceFilter;

///设定定位精度。默认为kCLLocationAccuracyBest
@property (nonatomic) CLLocationAccuracy desiredAccuracy;

///设定最小更新角度。默认为1度，设定为kCLHeadingFilterNone会提示任何角度改变
@property (nonatomic) CLLocationDegrees headingFilter;

///指定定位是否会被系统自动暂停
@property (nonatomic) BOOL pausesLocationUpdatesAutomatically;

///是否允许后台定位。默认为NO。只在iOS 9.0之后起作用。\n 设置为YES的时候必须保证 Background Modes 中的 Location updates处于选中状态，否则会抛出异常。\n 注意：定位必须在停止的状态下设置（showsUserLocation = NO），否则无效
@property (nonatomic) BOOL allowsBackgroundLocationUpdates;

/**
 * @brief 设置定位用户位置的模式
 * @param mode 要设置的模式
 * @param animated 是否动画设置
 */
- (void)setUserTrackingMode:(MAUserTrackingMode)mode animated:(BOOL)animated;

/**
 * @brief 设定UserLocationView样式。如果用户自定义了userlocation的annotationView，或者该annotationView还未添加到地图上，此方法将不起作用
 * @param representation 样式信息对象
 */
- (void)updateUserLocationRepresentation:(MAUserLocationRepresentation *)representation;

@end

@interface MAMapView (Overlay)

///所有添加的Overlay
@property (nonatomic, readonly) NSArray *overlays;

/**
 * @brief 取位于level下的overlays
 * @param level 层级
 */
- (NSArray *)overlaysInLevel:(MAOverlayLevel)level;

/**
 * @brief 向地图窗口添加Overlay。
 * 需要实现MAMapViewDelegate的-mapView:rendererForOverlay:函数来生成标注对应的Renderer。
 * 默认添加层级：MAGroundOverlay默认层级为MAOverlayLevelAboveRoads，其余overlay类型默认层级为MAOverlayLevelAboveLabels
 * @param overlay 要添加的overlay
 */
- (void)addOverlay:(id <MAOverlay>)overlay;

/**
 * @brief 向地图窗口添加一组Overlay，需要实现MAMapViewDelegate的-mapView:rendererForOverlay:函数来生成标注对应的Renderer
 * 默认添加层级：MAOverlayLevelAboveLabels
 * @param overlays 要添加的overlay数组
 */
- (void)addOverlays:(NSArray *)overlays;

/**
 * @brief 向地图窗口添加Overlay，需要实现MAMapViewDelegate的-mapView:rendererForOverlay:函数来生成标注对应的Renderer
 * @param overlay 要添加的overlay
 * @param level 添加的overlay所在层级
 */
- (void)addOverlay:(id <MAOverlay>)overlay level:(MAOverlayLevel)level;

/**
 * @brief 向地图窗口添加一组Overlay，需要实现MAMapViewDelegate的-mapView:rendererForOverlay:函数来生成标注对应的Renderer
 * @param overlays 要添加的overlay数组
 * @param level 添加的overlay所在层级
 */
- (void)addOverlays:(NSArray *)overlays level:(MAOverlayLevel)level;

/**
 * @brief 移除Overlay
 * @param overlay 要移除的overlay
 */
- (void)removeOverlay:(id <MAOverlay>)overlay;

/**
 * @brief 移除一组Overlay
 * @param overlays 要移除的overlay数组
 */
- (void)removeOverlays:(NSArray *)overlays;

/**
 * @brief 在指定层级的指定的索引处添加一个Overlay
 * @param overlay 要添加的overlay
 * @param index 指定的索引
 * @param level 指定的层级
 
 * 注：各个层级的索引分开计数；
 * 若index大于level层级的最大索引，则添加至level层级的最大索引之后。
 */
- (void)insertOverlay:(id <MAOverlay>)overlay atIndex:(NSUInteger)index level:(MAOverlayLevel)level;

/**
 * @brief 在指定的Overlay之上插入一个overlay
 * @param overlay 带添加的Overlay
 * @param sibling 用于指定相对位置的Overlay
 */
- (void)insertOverlay:(id <MAOverlay>)overlay aboveOverlay:(id <MAOverlay>)sibling;

/**
 * @brief 在指定的Overlay之下插入一个overlay
 * @param overlay 带添加的Overlay
 * @param sibling 用于指定相对位置的Overlay
 */
- (void)insertOverlay:(id <MAOverlay>)overlay belowOverlay:(id <MAOverlay>)sibling;

/**
 * @brief 在指定的索引处添加一个Overlay
 * @param overlay 要添加的overlay
 * @param index 指定的索引
 */
- (void)insertOverlay:(id <MAOverlay>)overlay atIndex:(NSUInteger)index;

/**
 * @brief 在MAOverlayLevelAboveLabels上交换指定索引处的Overlay
 * @param index1 索引1
 * @param index2 索引2
 */
- (void)exchangeOverlayAtIndex:(NSUInteger)index1 withOverlayAtIndex:(NSUInteger)index2;

/**
 * @brief 交换指定索引处的Overlay
 * @param index1 索引1
 * @param index2 索引2
 * @param level 所处层级
 */
- (void)exchangeOverlayAtIndex:(NSUInteger)index1 withOverlayAtIndex:(NSUInteger)index2 atLevel:(MAOverlayLevel)level;

/**
 * @brief 交换两个overlay
 * @param overlay1 overlay1
 * @param overlay2 overlay2
 */
- (void)exchangeOverlay:(id <MAOverlay>)overlay1 withOverlay:(id <MAOverlay>)overlay2;

/**
 * @brief 查找指定overlay对应的Renderer，如果该View尚未创建，返回nil
 * @param overlay 指定的overlay
 * @return 指定overlay对应的Renderer
 */
- (MAOverlayRenderer *)rendererForOverlay:(id <MAOverlay>)overlay;

/**
 * @brief 设置地图使其可以显示数组中所有的overlay, 如果数组中只有一个则直接设置地图中心为overlay的位置。
 * @param overlays    需要显示的overlays
 * @param animated    是否执行动画
 */
- (void)showOverlays:(NSArray *)overlays animated:(BOOL)animated;

/**
 * @brief 设置地图使其可以显示数组中所有的overlay, 如果数组中只有一个则直接设置地图中心为overlay的位置。
 * @param overlays    需要显示的overlays
 * @param insets      insets 嵌入边界
 * @param animated    是否执行动画
 */
- (void)showOverlays:(NSArray *)overlays edgePadding:(UIEdgeInsets)insets animated:(BOOL)animated;

@end

#if MA_INCLUDE_INDOOR
@interface MAMapView (Indoor)

///是否显示室内地图, 默认NO
@property (nonatomic, getter = isShowsIndoorMap) BOOL showsIndoorMap;

///是否显示室内地图默认控件, 默认YES
@property (nonatomic, getter = isShowsIndoorMapControl) BOOL showsIndoorMapControl;

///默认室内地图控件的最大宽高
@property (nonatomic, readonly) CGSize indoorMapControlSize;

/**
 * @brief 设置默认室内地图控件位置
 * @param origin 左上角点位置
 */
- (void)setIndoorMapControlOrigin:(CGPoint)origin;

/**
 * @brief 设置当前室内地图楼层数
 * @param floorIndex 要设置的楼层数
 */
- (void)setCurrentIndoorMapFloorIndex:(NSInteger)floorIndex;

/**
 * @brief 清空室内地图缓存
 */
- (void)clearIndoorMapCache;

@end
#endif

///自定义样式
@interface MAMapView (CustomMapStyle)

///是否开启自定义样式, 默认NO. since 5.0.0
@property (nonatomic, assign) BOOL customMapStyleEnabled;

/**
 * @brief 自定义地图样式, 目前仅支持自定义标准类型. 默认不生效，调用customMapStyleEnabled=YES使生效.
 * @param customJson 自定义的JSON格式数据.
 */
- (void)setCustomMapStyle:(NSData *)customJson __attribute((deprecated("已废弃, 请使用 setCustomMapStyleWithWebData: since 5.7.0")));

/**
 * @brief 根据web导出数据设置地图样式, 目前仅支持自定义标准类型. 默认不生效，调用customMapStyleEnabled=YES使生效. since 5.2.0
 * @param data 高德web端工具导出的地图样式数据.
 */
- (void)setCustomMapStyleWithWebData:(NSData *)data __attribute((deprecated("已废弃, 请使用 setCustomMapStyleOptions: since 6.6.0")));

/**
 * @brief 设置自定义纹理. since 5.7.0
 * @param customTextureResourcePath 自定义纹理文件路径.
 */
- (void)setCustomTextureResourcePath:(NSString *)customTextureResourcePath __attribute((deprecated("已废弃, 请使用 setCustomMapStyleOptions: since 6.6.0")));

/**
 * @brief 自定义地图样式id, 官网发布后下次开启自定义样式便可生效，目前仅支持自定义标准类型. 默认不生效，调用customMapStyleEnabled=YES使生效. since 6.0.0
 * @param customMapStyleID 自定义样式ID，从官网获取
 */
- (void)setCustomMapStyleID:(NSString *)customMapStyleID __attribute((deprecated("已废弃, 请使用 setCustomMapStyleOptions: since 6.6.0")));

/**
 * @brief 自定义地图样式设置,可以支持分级样式配置，如控制不同级别显示不同的颜色(自6.6.0开始使用新版样式，旧版样式无法在新版接口setCustomMapStyleOptions:(MAMapCustomStyleOptions *)styleOptions中使用，请到官网(lbs.amap.com)更新新版样式文件)
 * @param styleOptions 自定义样式options.  since 6.6.0
 */
- (void)setCustomMapStyleOptions:(MAMapCustomStyleOptions *)styleOptions;

@end

#pragma mark - MAMapViewDelegate
@protocol MAMapViewDelegate <NSObject>

@optional

/**
 * @brief 地图区域改变过程中会调用此接口 since 4.6.0
 * @param mapView 地图View
 */
- (void)mapViewRegionChanged:(MAMapView *)mapView;

/**
 * @brief 地图区域即将改变时会调用此接口
 * @param mapView 地图View
 * @param animated 是否动画
 */
- (void)mapView:(MAMapView *)mapView regionWillChangeAnimated:(BOOL)animated;

/**
 * @brief 地图区域改变完成后会调用此接口
 * @param mapView 地图View
 * @param animated 是否动画
 */
- (void)mapView:(MAMapView *)mapView regionDidChangeAnimated:(BOOL)animated;

/**
 * @brief 地图将要发生移动时调用此接口
 * @param mapView       地图view
 * @param wasUserAction 标识是否是用户动作
 */
- (void)mapView:(MAMapView *)mapView mapWillMoveByUser:(BOOL)wasUserAction;

/**
 * @brief 地图移动结束后调用此接口
 * @param mapView       地图view
 * @param wasUserAction 标识是否是用户动作
 */
- (void)mapView:(MAMapView *)mapView mapDidMoveByUser:(BOOL)wasUserAction;

/**
 * @brief 地图将要发生缩放时调用此接口
 * @param mapView       地图view
 * @param wasUserAction 标识是否是用户动作
 */
- (void)mapView:(MAMapView *)mapView mapWillZoomByUser:(BOOL)wasUserAction;

/**
 * @brief 地图缩放结束后调用此接口
 * @param mapView       地图view
 * @param wasUserAction 标识是否是用户动作
 */
- (void)mapView:(MAMapView *)mapView mapDidZoomByUser:(BOOL)wasUserAction;

/**
 * @brief 地图开始加载
 * @param mapView 地图View
 */
- (void)mapViewWillStartLoadingMap:(MAMapView *)mapView;

/**
 * @brief 地图加载成功
 * @param mapView 地图View
 */
- (void)mapViewDidFinishLoadingMap:(MAMapView *)mapView;

/**
 * @brief 地图加载失败
 * @param mapView 地图View
 * @param error 错误信息
 */
- (void)mapViewDidFailLoadingMap:(MAMapView *)mapView withError:(NSError *)error;

/**
 * @brief 根据anntation生成对应的View。
 
 注意：
 1、5.1.0后由于定位蓝点增加了平滑移动功能，如果在开启定位的情况先添加annotation，需要在此回调方法中判断annotation是否为MAUserLocation，从而返回正确的View。
 if ([annotation isKindOfClass:[MAUserLocation class]]) {
    return nil;
 }
 
 2、请不要在此回调中对annotation进行select和deselect操作，此时annotationView还未添加到mapview。
 
 * @param mapView 地图View
 * @param annotation 指定的标注
 * @return 生成的标注View
 */
- (MAAnnotationView *)mapView:(MAMapView *)mapView viewForAnnotation:(id <MAAnnotation>)annotation;

/**
 * @brief 当mapView新添加annotation views时，调用此接口
 * @param mapView 地图View
 * @param views 新添加的annotation views
 */
- (void)mapView:(MAMapView *)mapView didAddAnnotationViews:(NSArray *)views;

/**
 * @brief 当选中一个annotation view时，调用此接口. 注意如果已经是选中状态，再次点击不会触发此回调。取消选中需调用-(void)deselectAnnotation:animated:
 * @param mapView 地图View
 * @param view 选中的annotation view
 */
- (void)mapView:(MAMapView *)mapView didSelectAnnotationView:(MAAnnotationView *)view;

/**
 * @brief 当取消选中一个annotation view时，调用此接口
 * @param mapView 地图View
 * @param view 取消选中的annotation view
 */
- (void)mapView:(MAMapView *)mapView didDeselectAnnotationView:(MAAnnotationView *)view;

/**
 * @brief 在地图View将要启动定位时，会调用此函数
 * @param mapView 地图View
 */
- (void)mapViewWillStartLocatingUser:(MAMapView *)mapView;

/**
 * @brief 在地图View停止定位后，会调用此函数
 * @param mapView 地图View
 */
- (void)mapViewDidStopLocatingUser:(MAMapView *)mapView;

/**
 * @brief 位置或者设备方向更新后，会调用此函数
 * @param mapView 地图View
 * @param userLocation 用户定位信息(包括位置与设备方向等数据)
 * @param updatingLocation 标示是否是location数据更新, YES:location数据更新 NO:heading数据更新
 */
- (void)mapView:(MAMapView *)mapView didUpdateUserLocation:(MAUserLocation *)userLocation updatingLocation:(BOOL)updatingLocation;

/**
 *  @brief 当plist配置NSLocationAlwaysUsageDescription或者NSLocationAlwaysAndWhenInUseUsageDescription，并且[CLLocationManager authorizationStatus] == kCLAuthorizationStatusNotDetermined，会调用代理的此方法。
    此方法实现调用后台权限API即可（ 该回调必须实现 [locationManager requestAlwaysAuthorization] ）; since 6.8.0
 *  @param locationManager  地图的CLLocationManager。
 */
- (void)mapViewRequireLocationAuth:(CLLocationManager *)locationManager;

/**
 * @brief 定位失败后，会调用此函数
 * @param mapView 地图View
 * @param error 错误号，参考CLError.h中定义的错误号
 */
- (void)mapView:(MAMapView *)mapView didFailToLocateUserWithError:(NSError *)error;

/**
 * @brief 拖动annotation view时view的状态变化
 * @param mapView 地图View
 * @param view annotation view
 * @param newState 新状态
 * @param oldState 旧状态
 */
- (void)mapView:(MAMapView *)mapView annotationView:(MAAnnotationView *)view didChangeDragState:(MAAnnotationViewDragState)newState
   fromOldState:(MAAnnotationViewDragState)oldState;

/**
 * @brief 根据overlay生成对应的Renderer
 * @param mapView 地图View
 * @param overlay 指定的overlay
 * @return 生成的覆盖物Renderer
 */
- (MAOverlayRenderer *)mapView:(MAMapView *)mapView rendererForOverlay:(id <MAOverlay>)overlay;

/**
 * @brief 当mapView新添加overlay renderers时，调用此接口
 * @param mapView 地图View
 * @param overlayRenderers 新添加的overlay renderers
 */
- (void)mapView:(MAMapView *)mapView didAddOverlayRenderers:(NSArray *)overlayRenderers;

/**
 * @brief 标注view的accessory view(必须继承自UIControl)被点击时，触发该回调
 * @param mapView 地图View
 * @param view callout所属的标注view
 * @param control 对应的control
 */
- (void)mapView:(MAMapView *)mapView annotationView:(MAAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control;

/**
 * @brief 标注view的calloutview整体点击时，触发该回调。只有使用默认calloutview时才生效。
 * @param mapView 地图的view
 * @param view calloutView所属的annotationView
 */
- (void)mapView:(MAMapView *)mapView didAnnotationViewCalloutTapped:(MAAnnotationView *)view;

/**
 * @brief 标注view被点击时，触发该回调。（since 5.7.0）
 * @param mapView 地图的view
 * @param view annotationView
 */
- (void)mapView:(MAMapView *)mapView didAnnotationViewTapped:(MAAnnotationView *)view;

/**
 * @brief 当userTrackingMode改变时，调用此接口
 * @param mapView 地图View
 * @param mode 改变后的mode
 * @param animated 动画
 */
- (void)mapView:(MAMapView *)mapView didChangeUserTrackingMode:(MAUserTrackingMode)mode animated:(BOOL)animated;

/**
 * @brief 当openGLESDisabled变量改变时，调用此接口
 * @param mapView 地图View
 * @param openGLESDisabled 改变后的openGLESDisabled
 */
- (void)mapView:(MAMapView *)mapView didChangeOpenGLESDisabled:(BOOL)openGLESDisabled;

/**
 * @brief 当touchPOIEnabled == YES时，单击地图使用该回调获取POI信息
 * @param mapView 地图View
 * @param pois 获取到的poi数组(由MATouchPoi组成)
 */
- (void)mapView:(MAMapView *)mapView didTouchPois:(NSArray *)pois;

/**
 * @brief 单击地图回调，返回经纬度
 * @param mapView 地图View
 * @param coordinate 经纬度
 */
- (void)mapView:(MAMapView *)mapView didSingleTappedAtCoordinate:(CLLocationCoordinate2D)coordinate;

/**
 * @brief 长按地图，返回经纬度
 * @param mapView 地图View
 * @param coordinate 经纬度
 */
- (void)mapView:(MAMapView *)mapView didLongPressedAtCoordinate:(CLLocationCoordinate2D)coordinate;

/**
 * @brief 地图初始化完成（在此之后，可以进行坐标计算）
 * @param mapView 地图View
 */
- (void)mapInitComplete:(MAMapView *)mapView;

#if MA_INCLUDE_INDOOR
/**
 * @brief  室内地图出现,返回室内地图信息
 *
 *  @param mapView        地图View
 *  @param indoorInfo     室内地图信息
 */
- (void)mapView:(MAMapView *)mapView didIndoorMapShowed:(MAIndoorInfo *)indoorInfo;

/**
 * @brief  室内地图楼层发生变化,返回变化的楼层
 *
 *  @param mapView        地图View
 *  @param indoorInfo     变化的楼层
 */
- (void)mapView:(MAMapView *)mapView didIndoorMapFloorIndexChanged:(MAIndoorInfo *)indoorInfo;

/**
 * @brief  室内地图消失后,返回室内地图信息
 *
 *  @param mapView        地图View
 *  @param indoorInfo     室内地图信息
 */
- (void)mapView:(MAMapView *)mapView didIndoorMapHidden:(MAIndoorInfo *)indoorInfo;
#endif //end of MA_INCLUDE_INDOOR

/**
 * @brief 离线地图数据将要被加载, 调用reloadMap会触发该回调，离线数据生效前的回调.
 * @param mapView 地图View
 */
- (void)offlineDataWillReload:(MAMapView *)mapView;

/**
 * @brief 离线地图数据加载完成, 调用reloadMap会触发该回调，离线数据生效后的回调.
 * @param mapView 地图View
 */
- (void)offlineDataDidReload:(MAMapView *)mapView;

@end

