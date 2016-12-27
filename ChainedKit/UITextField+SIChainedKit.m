//
//  UITextField+SIChainedKit.m
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 27/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import "UITextField+SIChainedKit.h"

@implementation UITextField (SIChainedKit)

- (UITextField *(^)(NSString *))si_setText{
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (UITextField *(^)(NSAttributedString *))si_setAttributeText{
    return ^(NSAttributedString *text){
        self.attributedText = text;
        return self;
    };
}

- (UITextField *(^)(UIColor *))si_setTextColor{
    return ^(UIColor *color){
        self.textColor = color;
        return self;
    };
}

- (UITextField *(^)(UIFont *))si_setFont{
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}


- (UITextField *(^)(NSTextAlignment))si_setTextAlignment{
    return ^(NSTextAlignment alignment){
        self.textAlignment = alignment;
        return self;
    };
}

- (UITextField *(^)(UITextBorderStyle))si_setBorderStyle{
    return ^(UITextBorderStyle style){
        self.borderStyle= style;
        return self;
    };
}


- (UITextField *(^)(NSString *))si_setPlaceHolder{
    return ^(NSString *text){
        self.placeholder = text;
        return self;
    };
}

- (UITextField *(^)(NSAttributedString *))si_setAttributePlaceholder{
    return ^(NSAttributedString *text){
        self.attributedPlaceholder = text;
        return self;
    };
}

- (UITextField *(^)(BOOL))si_setClearOnBeginEdit{
    return ^(BOOL b){
        self.clearsOnBeginEditing = b;
        return self;
    };
}

- (UITextField *(^)(BOOL))si_setAdjustFontToWidth{
    return ^(BOOL b){
        self.adjustsFontSizeToFitWidth = b;
        return self;
    };
}

- (UITextField *(^)(id<UITextFieldDelegate>))si_setDelegate {
    return ^(id<UITextFieldDelegate> delegate) {
        self.delegate = delegate;
        return self;
    };
}

- (UITextField *(^)(UIImage *))si_setBackgroundImage {
    return ^(UIImage *image){
        self.background = image;
        return self;
    };
}

- (UITextField *(^)(UIImage *))si_setdisableBackgroundImage {
    return ^(UIImage *image){
        self.disabledBackground = image;
        return self;
    };
}


- (UITextField *(^)(BOOL))si_setAllowEditTxtAttribute {
    return ^(BOOL b){
        self.allowsEditingTextAttributes = b;
        return self;
    };
}

- (UITextField *(^)(UITextFieldViewMode))si_setCleaButtonMode {
    return ^(UITextFieldViewMode mode){
        self.clearButtonMode = mode;
        return self;
    };
}

- (UITextField *(^)(UIView *))si_setleftView {
    return ^(UIView *view){
        self.leftView = view;
        return self;
    };
}

- (UITextField *(^)(UITextFieldViewMode))si_setLeftMode {
    return ^(UITextFieldViewMode mode){
        self.leftViewMode = mode;
        return self;
    };
}

- (UITextField *(^)(UIView *))si_setRightView {
    return ^(UIView *view){
        self.rightView = view;
        return self;
    };
}

- (UITextField *(^)(UITextFieldViewMode))si_setRightMode {
    return ^(UITextFieldViewMode mode){
        self.rightViewMode = mode;
        return self;
    };
}

- (UITextField *(^)(CGRect))si_drawPlaceholder {
    return ^(CGRect rect){
        [self drawPlaceholderInRect:rect];
        return self;
    };
}

- (UITextField *(^)(CGRect))si_drawText {
    return ^(CGRect rect){
        [self drawTextInRect:rect];
        return self;
    };
}

- (UITextField *(^)(UIView *))si_setInputView {
    return ^(UIView *view){
        self.inputView = view;
        return self;
    };
}

- (UITextField *(^)(UIView *))si_setInputAccessoryView {
    return ^(UIView *view){
        self.inputAccessoryView = view;
        return self;
    };
}

@end
