//
//  UIControl+SIChainedKit.m
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 26/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import "UIControl+SIChainedKit.h"

@implementation UIControl (SIChainedKit)

- (UIControl *(^)(BOOL))si_setSelected{
    return ^(BOOL selected){
        self.selected = selected ;
        return self ;
    } ;
}

- (UIControl *(^)(BOOL))si_setEnable{
    return ^(BOOL enable){
        self.enabled = enable ;
        return self ;
    } ;
}

- (UIControl *(^)(BOOL))si_setHighlight{
    return ^(BOOL highlight){
        self.highlighted = highlight ;
        return self ;
    } ;
}

- (UIControl *(^)(UIControlContentVerticalAlignment))si_setVerticalAlignment{
    return ^(UIControlContentVerticalAlignment aligment){
        self.contentVerticalAlignment = aligment ;
        return self ;
    } ;
}

- (UIControl *(^)(UIControlContentHorizontalAlignment))si_setHorizontalAlignment{
    return ^(UIControlContentHorizontalAlignment aligment){
        self.contentHorizontalAlignment = aligment ;
        return self ;
    } ;
}

- (UIControl *(^)(id, SEL, UIControlEvents))si_addTarget{
    return ^(id target, SEL action, UIControlEvents event){
        [self addTarget:target action:action forControlEvents:event];
        return self;
    } ;
}

- (UIControl *(^)(id, SEL, UIControlEvents))si_removeTarget{
    return ^(id target, SEL action, UIControlEvents event){
        [self removeTarget:target action:action forControlEvents:event];
        return self;
    };
}

@end
