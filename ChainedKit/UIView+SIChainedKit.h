//
//  UIView+SIChainedKit.h
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 26/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (SIChainedKit)

#pragma mark --- 可以连续点的方法
@property (nonatomic,strong,readonly) UIView *(^si_setFrame)(CGRect) ;
@property (nonatomic,strong,readonly) UIView *(^si_setFrameEasy)(CGFloat,CGFloat,CGFloat,CGFloat) ;
@property (nonatomic,strong,readonly) UIView *(^si_setX)(CGFloat) ;
@property (nonatomic,strong,readonly) UIView *(^si_setY)(CGFloat) ;
@property (nonatomic,strong,readonly) UIView *(^si_setHeight)(CGFloat) ;
@property (nonatomic,strong,readonly) UIView *(^si_setWidth)(CGFloat) ;

@property (nonatomic,strong,readonly) UIView *(^si_setBounds)(CGRect) ;
@property (nonatomic,strong,readonly) UIView *(^si_setBoundsEasy)(CGFloat,CGFloat,CGFloat,CGFloat) ;
@property (nonatomic,strong,readonly) UIView *(^si_setCenter)(CGPoint) ;
@property (nonatomic,strong,readonly) UIView *(^si_setCenterEasy)(CGFloat,CGFloat) ;
@property (nonatomic,strong,readonly) UIView *(^si_setCenterX)(CGFloat) ;
@property (nonatomic,strong,readonly) UIView *(^si_setCenterY)(CGFloat) ;
@property (nonatomic,strong,readonly) UIView *(^si_setSize)(CGSize) ;
@property (nonatomic,strong,readonly) UIView *(^si_setSizeEasy)(CGFloat,CGFloat) ;
@property (nonatomic,strong,readonly) UIView *(^si_setOrigin)(CGPoint) ;
@property (nonatomic,strong,readonly) UIView *(^si_setoriginEasy)(CGFloat,CGFloat) ;

@property (nonatomic,strong,readonly) UIView *(^si_setBackgroundColor)(UIColor *) ;
@property (nonatomic,strong,readonly) UIView *(^si_setBackgroundColorWithRGB)(CGFloat,CGFloat,CGFloat,CGFloat) ;
@property (nonatomic,strong,readonly) UIView *(^si_setAlpha)(CGFloat) ;
@property (nonatomic,strong,readonly) UIView *(^si_setOpaque)(CGFloat) ;
@property (nonatomic,strong,readonly) UIView *(^si_setCornerRadius)(CGFloat) ;
@property (nonatomic,strong,readonly) UIView *(^si_setMaskToBounds)(BOOL) ;
@property (nonatomic,strong,readonly) UIView *(^si_setClipToBounds)(BOOL) ;
@property (nonatomic,strong,readonly) UIView *(^si_setUserInteractionEnable)(BOOL) ;
@property (nonatomic,strong,readonly) UIView *(^si_setHideen)(BOOL) ;
@property (nonatomic,strong,readonly) UIView *(^si_setTag)(NSInteger) ;
@property (nonatomic,strong,readonly) UIView *(^si_setContentMode)(UIViewContentMode) ;
@property (nonatomic,strong,readonly) UIView *(^si_setMutipleTouch)(BOOL) ;
@property (nonatomic,strong,readonly) UIView *(^si_setAutoresizeSubViews)(BOOL) ;
@property (nonatomic,strong,readonly) UIView *(^si_setAutoresizeMask)(BOOL) ;
@property (nonatomic,strong,readonly) UIView *(^si_setEndEdit)(BOOL) ;

@property (nonatomic,strong,readonly) UIView *(^si_removerFromSupview)() ;
@property (nonatomic,strong,readonly) UIView *(^si_insertSubviewAtIndex)(UIView *,NSInteger) ;
@property (nonatomic,strong,readonly) UIView *(^si_exchangeSubviewAtIndexWithIndex)(NSInteger,NSInteger) ;
@property (nonatomic,strong,readonly) UIView *(^si_inserSubviewBelowView)(UIView *,UIView *) ;
@property (nonatomic,strong,readonly) UIView *(^si_insertSubviewAboveView)(UIView *,UIView *) ;
@property (nonatomic,strong,readonly) UIView *(^si_bringSubViewToFront)(UIView *) ;
@property (nonatomic,strong,readonly) UIView *(^si_sendSubviewToBack)(UIView *) ;
@property (nonatomic,strong,readonly) UIView *(^si_addSubview)(UIView *) ;

@property (nonatomic,strong,readonly) UIView *(^si_addGesture)(UIGestureRecognizer *) ;
@property (nonatomic,strong,readonly) UIView *(^si_removeGesture)(UIGestureRecognizer *) ;

#pragma mark --- 不可连续点的方法
@property (nonatomic,copy,readonly) BOOL         (^si_viewIsZeroSize)();
@property (nonatomic,copy,readonly) CGFloat      (^si_viewX)();
@property (nonatomic,copy,readonly) CGFloat      (^si_viewY)();
@property (nonatomic,copy,readonly) CGFloat      (^si_viewMaxX)();
@property (nonatomic,copy,readonly) CGFloat      (^si_viewMaxY)();
@property (nonatomic,copy,readonly) CGPoint      (^si_viewOrigin)();
@property (nonatomic,copy,readonly) CGFloat      (^si_viewCenterX)();
@property (nonatomic,copy,readonly) CGFloat      (^si_viewCenterY)();
@property (nonatomic,copy,readonly) CGFloat      (^si_viewWidth)();
@property (nonatomic,copy,readonly) CGFloat      (^si_viewHeight)();
@property (nonatomic,copy,readonly) CGSize       (^si_viewSize)();
@property (nonatomic,copy,readonly) CGRect       (^si_viewFrame)();

@end
