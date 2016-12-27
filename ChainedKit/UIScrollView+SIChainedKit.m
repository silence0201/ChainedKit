//
//  UIScrollView+SIChainedKit.m
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 27/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import "UIScrollView+SIChainedKit.h"

@implementation UIScrollView (SIChainedKit)

- (UIScrollView *(^)(CGPoint))si_setContentOffset {
    return ^(CGPoint offset){
        self.contentOffset = offset;
        return self;
    };
}

- (UIScrollView *(^)(CGSize))si_setContentSize {
    return ^(CGSize size){
        self.contentSize = size;
        return self;
    };
}

- (UIScrollView *(^)(UIEdgeInsets))si_setContentInset {
    return ^(UIEdgeInsets edge){
        self.contentInset = edge;
        return self;
    };
}

- (UIScrollView *(^)(id<UIScrollViewDelegate>))si_setDelegate {
    return ^(id<UIScrollViewDelegate> obj) {
        self.delegate = obj;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))si_setBounce {
    return ^(BOOL b) {
        self.bounces = b;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))si_setAlwaysBounceV {
    return ^(BOOL b) {
        self.alwaysBounceVertical = b;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))si_setAlwaysBounceH {
    return ^(BOOL b) {
        self.alwaysBounceHorizontal = b;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))si_setPagingEnable {
    return ^(BOOL b) {
        self.pagingEnabled = b;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))si_setScrollEnable {
    return ^(BOOL b) {
        self.scrollEnabled = b;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))si_setScrollToTop {
    return ^(BOOL b) {
        self.scrollsToTop = b;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))si_setShowHIndicator {
    return ^(BOOL b) {
        self.showsHorizontalScrollIndicator = b;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))si_setShowVIndicator {
    return ^(BOOL b) {
        self.showsVerticalScrollIndicator = b;
        return self;
    };
}

- (UIScrollView *(^)(UIEdgeInsets))si_setScrollIndecatorInset {
    return ^(UIEdgeInsets inset) {
        self.scrollIndicatorInsets = inset;
        return self;
    };
}

- (UIScrollView *(^)(UIScrollViewIndicatorStyle))si_setIndicatorStyle {
    return ^(UIScrollViewIndicatorStyle style) {
        self.indicatorStyle = style;
        return self;
    };
}

- (UIScrollView *(^)(CGFloat))si_setDeceleratRate {
    return ^(CGFloat rate) {
        self.decelerationRate = rate;
        return self;
    };
}

- (UIScrollView *(^)(CGFloat))si_setZoomScale {
    return ^(CGFloat scale) {
        self.zoomScale = scale;
        return self;
    };
}

- (UIScrollView *(^)(CGFloat))si_setMinZoomScale {
    return ^(CGFloat scale) {
        self.minimumZoomScale = scale;
        return self;
    };
}

- (UIScrollView *(^)(CGFloat))si_setMaxZoomScale {
    return ^(CGFloat scale) {
        self.maximumZoomScale = scale;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))si_setBounceZoom {
    return ^(BOOL b) {
        self.bouncesZoom = b;
        return self;
    };
}


- (UIScrollView *(^)(CGPoint, BOOL))si_setSetContentOffsetAnimated {
    return ^(CGPoint offset, BOOL b) {
        [self setContentOffset:offset animated:b];
        return self;
    };
}

- (UIScrollView *(^)(CGRect, BOOL))si_setScrollRectToVisibleAnimated {
    return ^(CGRect rect, BOOL b) {
        [self scrollRectToVisible:rect animated:b];
        return self;
    };
}

- (UIScrollView *(^)(CGFloat, BOOL))si_setSetZoomScaleAnimated {
    return ^(CGFloat scale, BOOL b) {
        [self setZoomScale:scale animated:b];
        return self;
    };
}

- (UIScrollView *(^)(CGRect, BOOL))si_setZoomToRectAnimated {
    return ^(CGRect rect, BOOL b) {
        [self zoomToRect:rect animated:b];
        return self;
    };
}


@end
