//
//  UILabel+SIChainedKit.h
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 27/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (SIChainedKit)

@property (nonatomic,strong,readonly) UILabel *(^si_setText)(NSString *) ;
@property (nonatomic,strong,readonly) UILabel *(^si_setAttributeText)(NSAttributedString *) ;

@property (nonatomic,strong,readonly) UILabel *(^si_setTextAlignment)(NSTextAlignment) ;
@property (nonatomic,strong,readonly) UILabel *(^si_setTextColor)(UIColor *) ;
@property (nonatomic,strong,readonly) UILabel *(^si_setTextColorWithRGB)(CGFloat,CGFloat,CGFloat,CGFloat) ;
@property (nonatomic,strong,readonly) UILabel *(^si_setHighlightTextColor)(UIColor *) ;
@property (nonatomic,strong,readonly) UILabel *(^si_setHighlight)(BOOL) ;
@property (nonatomic,strong,readonly) UILabel *(^si_setEnable)(BOOL) ;

@property (nonatomic,strong,readonly) UILabel *(^si_setFont)(UIFont *) ;
@property (nonatomic,strong,readonly) UILabel *(^si_setFontSize)(CGFloat) ;
@property (nonatomic,strong,readonly) UILabel *(^si_setShadowColor)(UIColor *) ;
@property (nonatomic,strong,readonly) UILabel *(^si_setShadowOffset)(CGSize) ;
@property (nonatomic,strong,readonly) UILabel *(^si_setLineBreakMode)(NSLineBreakMode) ;
@property (nonatomic,strong,readonly) UILabel *(^si_setNumberOfLine)(NSInteger) ;

@property (nonatomic,strong,readonly) UILabel *(^si_setAdjustFontToFit)(BOOL) ;
@property (nonatomic,strong,readonly) UILabel *(^si_setBaselineAdjust)(UIBaselineAdjustment) ;

@property (nonatomic,strong,readonly) UILabel *(^si_setDrawTextInRect)(CGRect) ;


@end
