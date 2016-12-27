//
//  UILabel+SIChainedKit.m
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 27/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import "UILabel+SIChainedKit.h"

@implementation UILabel (SIChainedKit)

- (UILabel *(^)(NSString *))si_setText {
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (UILabel *(^)(NSAttributedString *))si_setAttributeText {
    return ^(NSAttributedString *attributedText){
        self.attributedText = attributedText;
        return self;
    };
}

- (UILabel *(^)(NSTextAlignment))si_setTextAlignment {
    return ^(NSTextAlignment alignment){
        self.textAlignment = alignment;
        return self;
    };
}

- (UILabel *(^)(UIColor *))si_setTextColor {
    return ^(UIColor *color){
        self.textColor = color;
        return self;
    };
}

- (UILabel *(^)(CGFloat, CGFloat, CGFloat, CGFloat))si_setTextColorWithRGB {
    return ^(CGFloat r, CGFloat g, CGFloat b, CGFloat a){
        self.textColor = [UIColor colorWithRed:r / 255.0 green:g / 255.0 blue:g / 255.0 alpha:a];
        return self;
    };
}

- (UILabel *(^)(UIColor *))si_setHighlightTextColor {
    return ^(UIColor *color){
        self.highlightedTextColor = color;
        return self;
    };
}

- (UILabel *(^)(BOOL))si_setHighlight {
    return ^(BOOL b){
        self.highlighted = b;
        return self;
    };
}

- (UILabel *(^)(BOOL))si_setEnable {
    return ^(BOOL b){
        self.enabled = b;
        return self;
    };
}

- (UILabel *(^)(UIFont *))si_setFont {
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}

- (UILabel *(^)(CGFloat))si_setFontSize {
    return ^(CGFloat size){
        self.font = [UIFont systemFontOfSize:size];
        return self;
    };
}

- (UILabel *(^)(UIColor *))si_setShadowColor {
    return ^(UIColor *color){
        self.shadowColor = color;
        return self;
    };
}

- (UILabel *(^)(CGSize))si_setShadowOffset {
    return ^(CGSize size){
        self.shadowOffset = size;
        return self;
    };
}

- (UILabel *(^)(NSLineBreakMode))si_setLineBreakMode {
    return ^(NSLineBreakMode mode){
        self.lineBreakMode = mode;
        return self;
    };
}

- (UILabel *(^)(NSInteger))si_setNumberOfLine {
    return ^(NSInteger num){
        self.numberOfLines = num;
        return self;
    };
}

- (UILabel *(^)(BOOL))si_setAdjustFontToFit {
    return ^(BOOL b){
        self.adjustsFontSizeToFitWidth = b;
        return self;
    };
}

- (UILabel *(^)(UIBaselineAdjustment))si_setBaselineAdjust {
    return ^(UIBaselineAdjustment adjustment){
        self.baselineAdjustment = adjustment;
        return self;
    };
}

- (UILabel *(^)(CGRect))si_setDrawTextInRect{
    return ^(CGRect rect){
        [self drawTextInRect:rect];
        return self;
    };
}


@end
