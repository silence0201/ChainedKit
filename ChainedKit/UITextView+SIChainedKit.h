//
//  UITextView+SIChainedKit.h
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 27/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (SIChainedKit)

@property (nonatomic, strong, readonly) UITextView *(^si_setText)(NSString *);
@property (nonatomic, strong, readonly) UITextView *(^si_setAttributeTxt)(NSAttributedString *);
@property (nonatomic, strong, readonly) UITextView *(^si_setTextColor)(UIColor *);

@property (nonatomic, strong, readonly) UITextView *(^si_setFont)(UIFont *);
@property (nonatomic, strong, readonly) UITextView *(^si_setFontSize)(NSInteger);

@property (nonatomic, strong, readonly) UITextView *(^si_setTextAlignment)(NSTextAlignment);
@property (nonatomic, strong, readonly) UITextView *(^si_setDelegate)(id<UITextViewDelegate>);
@property (nonatomic, strong, readonly) UITextView *(^si_setAllowEditTxtAttribute)(BOOL);

@property (nonatomic, strong, readonly) UITextView *(^si_setInputView)(UIView *);
@property (nonatomic, strong, readonly) UITextView *(^si_setInputAccessoryView)(UIView *);


@property (nonatomic, strong, readonly) UITextView *(^si_setSelectRange)(NSRange);
@property (nonatomic, strong, readonly) UITextView *(^si_setEditAble)(BOOL);
@property (nonatomic, strong, readonly) UITextView *(^si_setSelectAble)(BOOL);
@property (nonatomic, strong, readonly) UITextView *(^si_setDataDetectorType)(UIDataDetectorTypes);
@property (nonatomic, strong, readonly) UITextView *(^si_setTxtContainerInset)(UIEdgeInsets);
@property (nonatomic, strong, readonly) UITextView *(^si_setLinkTxtAttributes)(NSDictionary *);
@property (nonatomic, strong, readonly) UITextView *(^si_setScrollRangeToVisible)(NSRange);

@end
