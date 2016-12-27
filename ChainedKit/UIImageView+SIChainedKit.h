//
//  UIImageView+SIChainedKit.h
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 27/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (SIChainedKit)

@property (nonatomic,strong,readonly) UIImageView *(^si_setImage)(UIImage *) ;
@property (nonatomic,strong,readonly) UIImageView *(^si_setHighLightImage)(UIImage *) ;

@property (nonatomic,strong,readonly) UIImageView *(^si_sethighLight)(BOOL) ;

@property (nonatomic,strong,readonly) UIImageView *(^si_setAnimationImages)(NSArray *) ;
@property (nonatomic,strong,readonly) UIImageView *(^si_setHighlightanimationImages)(NSArray *) ;

@property (nonatomic,strong,readonly) UIImageView *(^si_setAnimationDuration)(NSTimeInterval) ;
@property (nonatomic,strong,readonly) UIImageView *(^si_setAnimationRepeatCount)(NSInteger) ;

@end
