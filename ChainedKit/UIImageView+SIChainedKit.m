//
//  UIImageView+SIChainedKit.m
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 27/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import "UIImageView+SIChainedKit.h"

@implementation UIImageView (SIChainedKit)

- (UIImageView *(^)(UIImage *))si_setImage {
    return ^(UIImage *image){
        self.image = image;
        return self;
    };
}

- (UIImageView *(^)(UIImage *))si_setHighLightImage {
    return ^(UIImage *image){
        self.highlightedImage = image;
        return self;
    };
}

- (UIImageView *(^)(BOOL))si_sethighLight {
    return ^(BOOL highLight){
        self.highlighted = highLight;
        return self;
    };
}

- (UIImageView *(^)(NSArray *))si_setAnimationImages {
    return ^(NSArray *images){
        self.animationImages = images;
        return self;
    };
}

- (UIImageView *(^)(NSArray *))si_setHighlightanimationImages {
    return ^(NSArray *images){
        self.highlightedAnimationImages = images;
        return self;
    };
}

- (UIImageView *(^)(NSTimeInterval))si_setAnimationDuration {
    return ^(NSTimeInterval time){
        self.animationDuration = time;
        return self;
    };
}

- (UIImageView *(^)(NSInteger))si_setAnimationRepeatCount {
    return ^(NSInteger count){
        self.animationRepeatCount = count;
        return self;
    };
}

@end
