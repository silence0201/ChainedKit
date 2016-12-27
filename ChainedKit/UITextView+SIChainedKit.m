//
//  UITextView+SIChainedKit.m
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 27/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import "UITextView+SIChainedKit.h"

@implementation UITextView (SIChainedKit)

- (UITextView *(^)(NSString *))si_setText{
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (UITextView *(^)(NSAttributedString *))si_setAttributeTxt{
    return ^(NSAttributedString *text){
        self.attributedText = text;
        return self;
    };
}

- (UITextView *(^)(UIColor *))si_setTextColor{
    return ^(UIColor *color){
        self.textColor = color;
        return self;
    };
}

- (UITextView *(^)(UIFont *))si_setFont{
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}

- (UITextView *(^)(NSInteger))si_setFontSize{
    return ^(NSInteger size){
        self.font = [UIFont systemFontOfSize:size];
        return self;
    };
}

- (UITextView *(^)(NSTextAlignment))si_setTextAlignment{
    return ^(NSTextAlignment alignment){
        self.textAlignment = alignment;
        return self;
    };
}

- (UITextView *(^)(id<UITextViewDelegate>))si_setDelegate {
    return ^(id<UITextViewDelegate> delegate) {
        self.delegate = delegate;
        return self;
    };
}

- (UITextView *(^)(BOOL))si_setAllowEditTxtAttribute {
    return ^(BOOL b){
        self.allowsEditingTextAttributes = b;
        return self;
    };
}

- (UITextView *(^)(UIView *))si_setInputView {
    return ^(UIView *view){
        self.inputView = view;
        return self;
    };
}

- (UITextView *(^)(UIView *))si_setInputAccessoryView {
    return ^(UIView *view){
        self.inputAccessoryView = view;
        return self;
    };
}

- (UITextView *(^)(NSRange))si_setSelectRange {
    return ^(NSRange range){
        self.selectedRange = range;
        return self;
    };
}

- (UITextView *(^)(BOOL))si_setEditAble {
    return ^(BOOL b){
        self.editable = b;
        return self;
    };
}

- (UITextView *(^)(BOOL))si_setSelectAble {
    return ^(BOOL b){
        self.selectable = b;
        return self;
    };
}

- (UITextView *(^)(UIDataDetectorTypes))si_setDataDetectorType {
    return ^(UIDataDetectorTypes type){
        self.dataDetectorTypes = type;
        return self;
    };
}

- (UITextView *(^)(UIEdgeInsets))si_setTxtContainerInset {
    return ^(UIEdgeInsets edge){
        self.textContainerInset = edge;
        return self;
    };
}

- (UITextView *(^)(NSDictionary *))si_setLinkTxtAttributes {
    return ^(NSDictionary *attributes){
        self.linkTextAttributes = attributes;
        return self;
    };
}

- (UITextView *(^)(NSRange))si_setScrollRangeToVisible {
    return ^(NSRange range){
        [self scrollRangeToVisible:range];
        return self;
    };
}


@end
