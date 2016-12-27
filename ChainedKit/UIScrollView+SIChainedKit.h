//
//  UIScrollView+SIChainedKit.h
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 27/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (SIChainedKit)

@property (nonatomic, strong, readonly) UIScrollView *(^si_setContentOffset)(CGPoint);
@property (nonatomic, strong, readonly) UIScrollView *(^si_setContentSize)(CGSize);
@property (nonatomic, strong, readonly) UIScrollView *(^si_setContentInset)(UIEdgeInsets);
@property (nonatomic, strong, readonly) UIScrollView *(^si_setDelegate)(id<UIScrollViewDelegate>);
@property (nonatomic, strong, readonly) UIScrollView *(^si_setBounce)(BOOL);

@property (nonatomic, strong, readonly) UIScrollView *(^si_setAlwaysBounceV)(BOOL);
@property (nonatomic, strong, readonly) UIScrollView *(^si_setAlwaysBounceH)(BOOL);
@property (nonatomic, strong, readonly) UIScrollView *(^si_setPagingEnable)(BOOL);
@property (nonatomic, strong, readonly) UIScrollView *(^si_setScrollEnable)(BOOL);

@property (nonatomic, strong, readonly) UIScrollView *(^si_setShowHIndicator)(BOOL);
@property (nonatomic, strong, readonly) UIScrollView *(^si_setShowVIndicator)(BOOL);

@property (nonatomic, strong, readonly) UIScrollView *(^si_setScrollIndecatorInset)(UIEdgeInsets);
@property (nonatomic, strong, readonly) UIScrollView *(^si_setIndicatorStyle)(UIScrollViewIndicatorStyle);
@property (nonatomic, strong, readonly) UIScrollView *(^si_setDeceleratRate)(CGFloat);
@property (nonatomic, strong, readonly) UIScrollView *(^si_setZoomScale)(CGFloat);
@property (nonatomic, strong, readonly) UIScrollView *(^si_setMinZoomScale)(CGFloat);
@property (nonatomic, strong, readonly) UIScrollView *(^si_setMaxZoomScale)(CGFloat);
@property (nonatomic, strong, readonly) UIScrollView *(^si_setBounceZoom)(BOOL);
@property (nonatomic, strong, readonly) UIScrollView *(^si_setScrollToTop)(BOOL);

@property (nonatomic, strong, readonly) UIScrollView *(^si_setSetContentOffsetAnimated)(CGPoint, BOOL);
@property (nonatomic, strong, readonly) UIScrollView *(^si_setScrollRectToVisibleAnimated)(CGRect, BOOL);
@property (nonatomic, strong, readonly) UIScrollView *(^si_setSetZoomScaleAnimated)(CGFloat, BOOL);
@property (nonatomic, strong, readonly) UIScrollView *(^si_setZoomToRectAnimated)(CGRect, BOOL);


@end
