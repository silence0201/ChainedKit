//
//  UITableView+SIChainedKit.h
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 27/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (SIChainedKit)


@property (nonatomic, strong, readonly) UITableView *(^si_setDataSource)(id<UITableViewDataSource>);
@property (nonatomic, strong, readonly) UITableView *(^si_setDelegate)(id<UITableViewDelegate>);
@property (nonatomic, strong, readonly) UITableView *(^si_setRowHeight)(CGFloat);
@property (nonatomic, strong, readonly) UITableView *(^si_setSectionHeadHeight)(CGFloat);
@property (nonatomic, strong, readonly) UITableView *(^si_setSectionFootHeight)(CGFloat);
@property (nonatomic, strong, readonly) UITableView *(^si_setEstimateRowHeight)(CGFloat);
@property (nonatomic, strong, readonly) UITableView *(^si_setSeparatInset)(UIEdgeInsets);
@property (nonatomic, strong, readonly) UITableView *(^si_setBackgroundView)(UIView *);
@property (nonatomic, strong, readonly) UITableView *(^si_setEdit)(BOOL);
@property (nonatomic, strong, readonly) UITableView *(^si_setAllowSelect)(BOOL);
@property (nonatomic, strong, readonly) UITableView *(^si_setAllowMultSelect)(BOOL);
@property (nonatomic, strong, readonly) UITableView *(^si_setAllowSelectDuringEdit)(BOOL);
@property (nonatomic, strong, readonly) UITableView *(^si_setAllowMultSelectDuringEdit)(BOOL);
@property (nonatomic, strong, readonly) UITableView *(^si_setSectionIndexColor)(UIColor *);
@property (nonatomic, strong, readonly) UITableView *(^si_setSectionIndexBgColor)(UIColor *);
@property (nonatomic, strong, readonly) UITableView *(^si_setSectionIndexTrackBgColor)(UIColor *);
@property (nonatomic, strong, readonly) UITableView *(^si_setSeparatStyle)(UITableViewCellSeparatorStyle);
@property (nonatomic, strong, readonly) UITableView *(^si_setSeparatColor)(UIColor *);

@property (nonatomic, strong, readonly) UITableView *(^si_registNibForCellId)(UINib *, NSString *);
@property (nonatomic, strong, readonly) UITableView *(^si_registClassForCellId)(Class, NSString *);
@property (nonatomic, strong, readonly) UITableView *(^si_registNibForHeadFootViewId)(UINib *, NSString *);
@property (nonatomic, strong, readonly) UITableView *(^si_registClassForHeadFootViewId)(Class, NSString *);

@end
