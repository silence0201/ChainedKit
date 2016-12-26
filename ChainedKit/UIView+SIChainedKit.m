//
//  UIView+SIChainedKit.m
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 26/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import "UIView+SIChainedKit.h"

@implementation UIView (SIChainedKit)

-(UIView *(^)(CGRect))si_setFrame{
    return ^(CGRect frame){
        self.frame = frame ;
        return self ;
    } ;
}

- (UIView *(^)(CGFloat, CGFloat, CGFloat, CGFloat))si_setFrameEasy{
    return ^(CGFloat x,CGFloat y,CGFloat width,CGFloat height){
        self.frame = CGRectMake(x, y, width, height) ;
        return self ;
    } ;
}

- (UIView *(^)(CGFloat))si_setX{
    return ^(CGFloat x) {
        CGRect frame = self.frame;
        frame.origin.x = x;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat))si_setY{
    return ^(CGFloat y){
        CGRect frame = self.frame ;
        frame.origin.y = y ;
        self.frame = frame ;
        return self ;
    } ;
}

- (UIView *(^)(CGFloat))si_setWidth {
    return ^(CGFloat width) {
        CGRect frame = self.frame;
        frame.size.width = width;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat))si_setHeight {
    return ^(CGFloat height) {
        CGRect frame = self.frame;
        frame.size.height = height;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGRect bounds))si_setBounds {
    return ^(CGRect bounds) {
        self.bounds = bounds;
        return self;
    };
}
- (UIView *(^)(CGFloat x, CGFloat y, CGFloat width, CGFloat height))si_setBoundsEasy {
    return ^(CGFloat x, CGFloat y, CGFloat width, CGFloat height){
        self.bounds = CGRectMake(x, y, width, height);
        return self;
    };
}

- (UIView *(^)(CGPoint center))si_setCenter {
    return ^(CGPoint center){
        self.center = center;
        return self;
    };
}

- (UIView *(^)(CGFloat x, CGFloat y))si_setCenterEasy {
    return ^(CGFloat x, CGFloat y){
        self.center = CGPointMake(x, y);
        return self;
    };
}

- (UIView *(^)(CGFloat))si_setCenterX {
    return ^(CGFloat centerX) {
        CGPoint center = self.center;
        center.x = centerX;
        self.center = center;
        return self;
    };
}

- (UIView *(^)(CGFloat))si_setCenterY {
    return ^(CGFloat centerY) {
        CGPoint center = self.center;
        center.y = centerY;
        self.center = center;
        return self;
    };
}

- (UIView *(^)(CGSize size))si_setSize {
    return ^(CGSize size){
        CGRect frame = self.frame;
        frame.size = size;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat width, CGFloat height))si_setSizeEasy {
    return ^(CGFloat width, CGFloat height){
        CGRect frame = self.frame;
        frame.size = CGSizeMake(width, height);
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGPoint origin))si_setOrigin {
    return ^(CGPoint origin){
        CGRect frame = self.frame;
        frame.origin = origin;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat x, CGFloat y))si_setoriginEasy {
    return ^(CGFloat x, CGFloat y){
        CGRect frame = self.frame;
        frame.origin = CGPointMake(x, y);
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(UIColor *))si_setBackgroundColor {
    return ^(UIColor *color) {
        self.backgroundColor = color;
        return self;
    };
}

- (UIView *(^)(CGFloat, CGFloat, CGFloat, CGFloat))si_setBackgroundColorWithRGB {
    return ^(CGFloat red, CGFloat green, CGFloat blue, CGFloat alpha){
        self.backgroundColor = [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:alpha];
        return self;
    };
}

- (UIView *(^)(CGFloat))si_setAlpha {
    return ^(CGFloat alpha) {
        self.alpha = alpha;
        return self;
    };
}

- (UIView *(^)(CGFloat))si_setOpaque {
    return ^(CGFloat opaque) {
        self.opaque = opaque;
        return self;
    };
}

- (UIView *(^)(CGFloat))si_setCornerRadius {
    return ^(CGFloat radius) {
        self.layer.cornerRadius = radius;
        return self;
    };
}

- (UIView *(^)(BOOL))si_setMaskToBounds {
    return ^(BOOL b) {
        self.layer.masksToBounds = b;
        return self;
    };
}

- (UIView *(^)(BOOL))si_setClipToBounds {
    return ^(BOOL b) {
        self.clipsToBounds = b;
        return self;
    };
}

- (UIView *(^)(BOOL))si_setUserInteractionEnable {
    return ^(BOOL b) {
        self.userInteractionEnabled = b;
        return self;
    };
}

- (UIView *(^)(BOOL))si_setHideen{
    return ^(BOOL b) {
        self.hidden = b;
        return self;
    };
}

- (UIView *(^)(NSInteger))si_setTag {
    return ^(NSInteger tag){
        self.tag = tag;
        return self;
    };
}


- (UIView *(^)(UIViewContentMode))si_setContentMode {
    return ^(UIViewContentMode mode){
        self.contentMode = mode;
        return self;
    };
}

- (UIView *(^)(BOOL))si_setMutipleTouch {
    return ^(BOOL b) {
        self.multipleTouchEnabled = b ;
        return self;
    };
}

- (UIView *(^)(BOOL))si_setAutoresizeSubViews {
    return ^(BOOL b) {
        self.autoresizesSubviews = b ;
        return self;
    };
}

- (UIView *(^)(BOOL))si_setAutoresizeMask {
    return ^(BOOL b) {
        self.autoresizingMask = b ;
        return self;
    };
}


- (UIView *(^)(BOOL))si_setEndEdit {
    return ^(BOOL end){
        [self endEditing:end] ;
        return self;
    };
}


- (UIView *(^)())si_removerFromSupview {
    return ^(){
        [self removeFromSuperview];
        return self;
    };
}

- (UIView *(^)(UIView *, NSInteger))si_insertSubviewAtIndex {
    return ^(UIView *view, NSInteger index) {
        [self insertSubview:view atIndex:index];
        return self;
    };
}

- (UIView *(^)(UIView *, UIView *))si_inserSubviewBelowView {
    return ^(UIView *view1, UIView *view2) {
        [self insertSubview:view1 belowSubview:view2];
        return self;
    };
}

- (UIView *(^)(UIView *, UIView *))si_insertSubviewAboveView {
    return ^(UIView *view1, UIView *view2) {
        [self insertSubview:view1 aboveSubview:view2];
        return self;
    };
}

- (UIView *(^)(NSInteger , NSInteger))si_exchangeSubviewAtIndexWithIndex {
    return ^(NSInteger index1, NSInteger index2) {
        [self exchangeSubviewAtIndex:index1 withSubviewAtIndex:index2];
        return self;
    };
}

- (UIView *(^)(UIView *))si_addSubview {
    return ^(UIView *view) {
        [self addSubview:view];
        return self;
    };
}

- (UIView *(^)(UIView *))si_bringSubViewToFront {
    return ^(UIView *view) {
        [self bringSubviewToFront:view];
        return self;
    };
}

- (UIView *(^)(UIView *))si_sendSubviewToBack {
    return ^(UIView *view) {
        [self sendSubviewToBack:view];
        return self;
    };
}

- (UIView *(^)(UIGestureRecognizer *))si_addGesture {
    return ^(UIGestureRecognizer *gesture){
        [self addGestureRecognizer:gesture];
        return self;
    };
}

- (UIView *(^)(UIGestureRecognizer *))si_removeGesture {
    return ^(UIGestureRecognizer *gesture){
        [self removeGestureRecognizer:gesture];
        return self;
    };
}




@end
