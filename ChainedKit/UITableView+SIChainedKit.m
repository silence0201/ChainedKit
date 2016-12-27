//
//  UITableView+SIChainedKit.m
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 27/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import "UITableView+SIChainedKit.h"

@implementation UITableView (SIChainedKit)

- (UITableView *(^)(id<UITableViewDataSource>))si_setDataSource{
    return ^(id<UITableViewDataSource> dataSource){
        self.dataSource = dataSource;
        return self;
    };
}

- (UITableView *(^)(id<UITableViewDelegate>))si_setDelegate{
    return ^(id<UITableViewDelegate> delegate){
        self.delegate = delegate;
        return self;
    };
}

- (UITableView *(^)(CGFloat))si_setRowHeight {
    return ^(CGFloat height){
        self.rowHeight = height;
        return self;
    };
}

- (UITableView *(^)(CGFloat))si_setSectionHeadHeight {
    return ^(CGFloat height){
        self.sectionHeaderHeight = height;
        return self;
    };
}

- (UITableView *(^)(CGFloat))si_setSectionFootHeight {
    return ^(CGFloat height){
        self.sectionFooterHeight = height;
        return self;
    };
}

- (UITableView *(^)(CGFloat))si_setEstimateRowHeight {
    return ^(CGFloat height){
        self.estimatedRowHeight = height;
        return self;
    };
}

- (UITableView *(^)(UIEdgeInsets))si_setSeparatInset {
    return ^(UIEdgeInsets inset) {
        self.separatorInset = inset;
        return self;
    };
}

- (UITableView *(^)(UIView *))si_setBackgroundView {
    return ^(UIView *view) {
        self.backgroundView = view;
        return self;
    };
}

- (UITableView *(^)(BOOL))si_setEdit {
    return ^(BOOL b) {
        self.editing = b;
        return self;
    };
}

- (UITableView *(^)(BOOL))si_setAllowSelect {
    return ^(BOOL b) {
        self.allowsSelection = b;
        return self;
    };
}
- (UITableView *(^)(BOOL))si_setAllowMultSelect {
    return ^(BOOL b) {
        self.allowsMultipleSelection = b;
        return self;
    };
}
- (UITableView *(^)(BOOL))si_setAllowSelectDuringEdit {
    return ^(BOOL b) {
        self.allowsSelectionDuringEditing = b;
        return self;
    };
}
- (UITableView *(^)(BOOL))si_setAllowMultSelectDuringEdit {
    return ^(BOOL b) {
        self.allowsMultipleSelectionDuringEditing = b;
        return self;
    };
}

- (UITableView *(^)(UIColor *))si_setSectionIndexColor {
    return ^(UIColor *color) {
        self.sectionIndexColor = color;
        return self;
    };
}

- (UITableView *(^)(UIColor *))si_setSectionIndexBgColor {
    return ^(UIColor *color) {
        self.sectionIndexBackgroundColor = color;
        return self;
    };
}

- (UITableView *(^)(UIColor *))si_setSectionIndexTrackBgColor {
    return ^(UIColor *color) {
        self.sectionIndexTrackingBackgroundColor = color;
        return self;
    };
}

- (UITableView *(^)(UITableViewCellSeparatorStyle))si_setSeparatStyle {
    return ^(UITableViewCellSeparatorStyle style) {
        self.separatorStyle = style;
        return self;
    };
}

- (UITableView *(^)(UIColor *))si_setSeparatColor {
    return ^(UIColor *color) {
        self.separatorColor = color;
        return self;
    };
}

- (UITableView *(^)(UINib *, NSString *))si_registNibForCellId {
    return ^(UINib *nib, NSString *Id){
        [self registerNib:nib forCellReuseIdentifier:Id];
        return self;
    };
}

- (UITableView *(^)(Class, NSString *))si_registClassForCellId {
    return ^(Class class, NSString *Id){
        [self registerClass:class forCellReuseIdentifier:Id];
        return self;
    };
}


- (UITableView *(^)(UINib *, NSString *))si_registNibForHeadFootViewId {
    return ^(UINib *nib, NSString *Id){
        [self registerNib:nib forHeaderFooterViewReuseIdentifier:Id];
        return self;
    };
}

- (UITableView *(^)(Class, NSString *))si_registClassForHeadFootViewId {
    return ^(Class class, NSString *Id){
        [self registerClass:class forHeaderFooterViewReuseIdentifier:Id];
        return self;
    };
}


@end
