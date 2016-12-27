//
//  UITextField+SIChainedKit.h
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 27/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (SIChainedKit)

@property (nonatomic,strong,readonly) UITextField *(^si_setText)(NSString *) ;
@property (nonatomic,strong,readonly) UITextField *(^si_setAttributeText)(NSAttributedString *) ;
@property (nonatomic,strong,readonly) UITextField *(^si_setTextColor)(UIColor *) ;

@property (nonatomic,strong,readonly) UITextField *(^si_setFont)(UIFont *) ;

@property (nonatomic,strong,readonly) UITextField *(^si_setTextAlignment)(NSTextAlignment) ;
@property (nonatomic,strong,readonly) UITextField *(^si_setBorderStyle)(UITextBorderStyle) ;

@property (nonatomic,strong,readonly) UITextField *(^si_setPlaceHolder)(NSString *) ;
@property (nonatomic,strong,readonly) UITextField *(^si_setAttributePlaceholder)(NSAttributedString *) ;
@property (nonatomic,strong,readonly) UITextField *(^si_setClearOnBeginEdit)(BOOL) ;

@property (nonatomic,strong,readonly) UITextField *(^si_setAdjustFontToWidth)(BOOL) ;
@property (nonatomic,strong,readonly) UITextField *(^si_setDelegate)(id<UITextFieldDelegate>) ;

@property (nonatomic,strong,readonly) UITextField *(^si_setBackgroundImage)(UIImage *) ;
@property (nonatomic,strong,readonly) UITextField *(^si_setdisableBackgroundImage)(UIImage *) ;

@property (nonatomic,strong,readonly) UITextField *(^si_setAllowEditTxtAttribute)(BOOL) ;
@property (nonatomic,strong,readonly) UITextField *(^si_setCleaButtonMode)(UITextFieldViewMode) ;

@property (nonatomic,strong,readonly) UITextField *(^si_setleftView)(UIView *) ;
@property (nonatomic,strong,readonly) UITextField *(^si_setLeftMode)(UITextFieldViewMode) ;
@property (nonatomic,strong,readonly) UITextField *(^si_setRightView)(UIView *) ;
@property (nonatomic,strong,readonly) UITextField *(^si_setRightMode)(UITextFieldViewMode) ;

@property (nonatomic,strong,readonly) UITextField *(^si_drawPlaceholder)(CGRect) ;
@property (nonatomic,strong,readonly) UITextField *(^si_drawText)(CGRect) ;
@property (nonatomic,strong,readonly) UITextField *(^si_setInputView)(UIView *) ;
@property (nonatomic,strong,readonly) UITextField *(^si_setInputAccessoryView)(UIView *) ;


@end
