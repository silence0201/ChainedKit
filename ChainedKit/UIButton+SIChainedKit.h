//
//  UIButton+SIChainedKit.h
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 27/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (SIChainedKit)

#pragma mark ---- 可以点连用
@property (nonatomic,strong,readonly) UIButton *(^si_setContentEdge)(UIEdgeInsets) ;
@property (nonatomic,strong,readonly) UIButton *(^si_setContentEdgeEasy)(CGFloat,CGFloat,CGFloat,CGFloat) ;

@property (nonatomic,strong,readonly) UIButton *(^si_setImageEdge)(UIEdgeInsets) ;
@property (nonatomic,strong,readonly) UIButton *(^si_setImageEdgeEasy)(CGFloat,CGFloat,CGFloat,CGFloat) ;

@property (nonatomic,strong,readonly) UIButton *(^si_setTitleEdge)(UIEdgeInsets) ;
@property (nonatomic,strong,readonly) UIButton *(^si_setTitleEdgeEasy)(CGFloat,CGFloat,CGFloat,CGFloat) ;

@property (nonatomic,strong,readonly) UIButton *(^si_setAdjustImageWhenHighlight)(BOOL) ;
@property (nonatomic,strong,readonly) UIButton *(^si_setAdjustImageWhenDisable)(BOOL) ;
@property (nonatomic,strong,readonly) UIButton *(^si_setShowTouchWhenHighlight)(BOOL) ;

@property (nonatomic,strong,readonly) UIButton *(^si_setTitleForState)(NSString *,UIControlState) ;
@property (nonatomic,strong,readonly) UIButton *(^si_setAttrituteTitleForState)(NSAttributedString *,UIControlState) ;
@property (nonatomic,strong,readonly) UIButton *(^si_setTitleColorForState)(UIColor *,UIControlState) ;
@property (nonatomic,strong,readonly) UIButton *(^si_setShadowColorForState)(UIColor *,UIControlState) ;
@property (nonatomic,strong,readonly) UIButton *(^si_setImageForState)(UIImage *,UIControlState) ;
@property (nonatomic,strong,readonly) UIButton *(^si_setBackgroundImageForState)(UIImage *,UIControlState) ;

#pragma mark --- 不可以点连用
@property (nonatomic,strong,readonly) NSString *(^si_titleForState)(UIControlState) ;
@property (nonatomic,strong,readonly) NSAttributedString *(^si_attributeTitleForState)(UIControlState) ;
@property (nonatomic,strong,readonly) UIColor *(^si_titleColorForState)(UIControlState) ;
@property (nonatomic,strong,readonly) UIColor *(^si_shadowColorForState)(UIControlState) ;
@property (nonatomic,strong,readonly) UIImage *(^si_imageForState)(UIControlState) ;
@property (nonatomic,strong,readonly) UIImage *(^si_backgroundImageForState)(UIControlState) ;

@end
