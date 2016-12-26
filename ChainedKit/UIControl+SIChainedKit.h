//
//  UIControl+SIChainedKit.h
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 26/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (SIChainedKit)

@property (nonatomic,strong,readonly) UIControl *(^si_setSelected)(BOOL) ;
@property (nonatomic,strong,readonly) UIControl *(^si_setEnable)(BOOL) ;
@property (nonatomic,strong,readonly) UIControl *(^si_setHighlight)(BOOL) ;

@property (nonatomic,strong,readonly) UIControl *(^si_setVerticalAlignment)(UIControlContentVerticalAlignment) ;
@property (nonatomic,strong,readonly) UIControl *(^si_setHorizontalAlignment)(UIControlContentHorizontalAlignment) ;

@property (nonatomic,strong,readonly) UIControl *(^si_addTarget)(id,SEL,UIControlEvents) ;
@property (nonatomic,strong,readonly) UIControl *(^si_removeTarget)(id,SEL,UIControlEvents) ;


@end
