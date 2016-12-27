//
//  UIButton+SIChainedKit.m
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 27/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import "UIButton+SIChainedKit.h"

@implementation UIButton (SIChainedKit)

- (UIButton *(^)(UIEdgeInsets))si_setContentEdge {
    return ^(UIEdgeInsets edge){
        self.contentEdgeInsets = edge;
        return self;
    };
}

- (UIButton *(^)(CGFloat, CGFloat, CGFloat, CGFloat))si_setContentEdgeEasy {
    return ^(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right){
        self.contentEdgeInsets = UIEdgeInsetsMake(top, left, bottom, right);
        return self;
    };
}

- (UIButton *(^)(UIEdgeInsets))si_setTitleEdge {
    return ^(UIEdgeInsets edge){
        self.titleEdgeInsets = edge;
        return self;
    };
}

- (UIButton *(^)(CGFloat, CGFloat, CGFloat, CGFloat))si_setTitleEdgeEasy {
    return ^(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right){
        self.titleEdgeInsets = UIEdgeInsetsMake(top, left, bottom, right);
        return self;
    };
}

- (UIButton *(^)(UIEdgeInsets))si_setImageEdge {
    return ^(UIEdgeInsets edge){
        self.imageEdgeInsets = edge;
        return self;
    };
}

- (UIButton *(^)(CGFloat, CGFloat, CGFloat, CGFloat))si_setImageEdgeEasy {
    return ^(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right){
        self.imageEdgeInsets = UIEdgeInsetsMake(top, left, bottom, right);
        return self;
    };
}

- (UIButton *(^)(BOOL))si_setAdjustImageWhenHighlight {
    return ^(BOOL b) {
        self.adjustsImageWhenHighlighted = b;
        return self;
    };
}

- (UIButton *(^)(BOOL))si_setAdjustImageWhenDisable {
    return ^(BOOL b) {
        self.adjustsImageWhenDisabled = b;
        return self;
    };
}

- (UIButton *(^)(BOOL))si_setShowTouchWhenHighlight {
    return ^(BOOL b) {
        self.showsTouchWhenHighlighted = b;
        return self;
    };
}

- (UIButton *(^)(NSString *, UIControlState))si_setTitleForState {
    return ^(NSString *title, UIControlState state) {
        [self setTitle:title forState:state];
        return self;
    };
}

- (UIButton *(^)(NSAttributedString *, UIControlState))si_setAttrituteTitleForState {
    return ^(NSAttributedString *title, UIControlState state) {
        [self setAttributedTitle:title forState:state];
        return self;
    };
}

- (UIButton *(^)(UIColor *, UIControlState))si_setTitleColorForState {
    return ^(UIColor *color, UIControlState state) {
        [self setTitleColor:color forState:state];
        return self;
    };
}

- (UIButton *(^)(UIColor *, UIControlState))si_setShadowColorForState {
    return ^(UIColor *color, UIControlState state) {
        [self setTitleShadowColor:color forState:state];
        return self;
    };
}


- (UIButton *(^)(UIImage *, UIControlState))si_setImageForState {
    return ^(UIImage *image, UIControlState state) {
        [self setImage:image forState:state];
        return self;
    };
}

- (UIButton *(^)(UIImage *, UIControlState))si_setBackgroundImageForState {
    return ^(UIImage *image, UIControlState state) {
        [self setBackgroundImage:image forState:state];
        return self;
    };
}

- (NSString *(^)(UIControlState))si_titleForState {
    return ^(UIControlState state){
        return [self titleForState:state];
    };
}

- (NSAttributedString *(^)(UIControlState))si_attributeTitleForState {
    return ^(UIControlState state){
        return [self attributedTitleForState:state];
    };
}

- (UIColor *(^)(UIControlState))si_titleColorForState {
    return ^(UIControlState state){
        return [self titleColorForState:state];
    };
}

- (UIColor *(^)(UIControlState))si_shadowColorForState {
    return ^(UIControlState state){
        return [self titleShadowColorForState:state];
    };
}

- (UIImage *(^)(UIControlState))si_imageForState {
    return ^(UIControlState state){
        return [self imageForState:state];
    };
}

- (UIImage *(^)(UIControlState))si_backgroundImageForState {
    return ^(UIControlState state){
        return [self backgroundImageForState:state];
    };
}


@end
