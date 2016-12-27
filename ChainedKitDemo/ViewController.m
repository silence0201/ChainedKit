//
//  ViewController.m
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 26/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "SIChainedKit.h"

#define WEAKSELF typeof(self) __weak weakSelf = self ;

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WEAKSELF
    // NSObject
    [Person si_make:^(Person *person) {
        person.si_setValueForKey(@"张三",@"name")
              .si_setValueForKey(@"12",@"age") ;
        NSLog(@"%@",person) ;
        NSLog(@"%@",person.si_valueForKey(@"name")) ;
        NSLog(@"%d",person.si_isKindOfClass([Person class])) ;
        if (person.si_respondsToSel(@selector(eat:))) {
            person.si_performSelOnMain(@selector(eat:),@"苹果",YES) ;
        }
    }] ;
    
    // UIView
    UIView *view = [UIView si_make:^(UIView *view) {
        view.si_setBackgroundColorWithRGB(115,115,115,1).si_setAlpha(0.6)
        .si_setCornerRadius(10).si_setMaskToBounds(YES) ;
        view.si_setSizeEasy(150,150).si_setCenter(weakSelf.view.center) ;
        
        NSLog(@"%@",NSStringFromCGRect(view.si_viewFrame())) ;
    }] ;
    
    self.view.si_addSubview(view) ;
    
    // UIButton
    [UIButton si_make:^(UIButton *button) {
        button.si_setCenterEasy(100,200).si_setSizeEasy(120,50).si_setBackgroundColor([UIColor blueColor]) ;
        button.si_setTitleForState(@"按钮",UIControlStateNormal) ;
        button.si_setCornerRadius(5).si_setMaskToBounds(YES) ;
        button.si_setContentEdgeEasy(0,5,0,0).si_setTitleEdgeEasy(0,5,5,0) ;
        button.si_setAdjustImageWhenDisable(NO).si_setAdjustImageWhenHighlight(NO) ;
        button.si_addTarget(self,@selector(click:),UIControlEventTouchUpInside) ;
        [weakSelf.view addSubview:button] ;
    }] ;
    
    // UIImageView
    [UIImageView si_make:^(UIImageView *imageView) {
        imageView.si_setFrameEasy(0,10,300,450) ;
        imageView.si_setImage([UIImage imageNamed:@"11"]) ;
        imageView.si_setContentMode(UIViewContentModeScaleToFill) ;
        [weakSelf.view addSubview:imageView] ;
    }] ;
    
    // UILabel
    [UILabel si_make:^(UILabel *label) {
        label.si_setoriginEasy(120,300).si_setSizeEasy(150,50) ;
        label.si_setBackgroundColorWithRGB(0,255,255,1).si_setAlpha(0.5) ;
        label.si_setNumberOfLine(0).si_setTextAlignment(NSTextAlignmentCenter) ;
        label.si_setText(@"我是一个label我是一个label我是一个") ;
        [weakSelf.view addSubview:label] ;
    }] ;
    
    // UITextField
    [UITextField si_make:^(UITextField *textField) {
        textField.si_setFrameEasy(100,200,200,30) ;
        textField.si_setPlaceHolder(@"占位文字").si_setFontSize(12) ;
        textField.si_setClearOnBeginEdit(YES).si_setBackgroundColor([UIColor whiteColor]);
        [weakSelf.view addSubview:textField] ;
    }] ;
    
    // UIScrollView
    [UIScrollView si_make:^(UIScrollView *scrollView) {
        scrollView.si_setFrameEasy(10,10,100,200).si_setBackgroundColor([UIColor redColor]) ;
        scrollView.si_setContentInset(UIEdgeInsetsMake(10, 10, 10, 10)).si_setContentSize(CGSizeMake(200, 200)) ;
        scrollView.si_setAlwaysBounceH(NO).si_setAlwaysBounceV(NO) ;
        scrollView.si_setDelegate(self) ;
        [weakSelf.view addSubview:scrollView] ;
    }] ;
    
    // UITableView
    [UITableView si_make:^(UITableView *tableView) {
        tableView.si_setDelegate(self).si_setDataSource(self) ;
        tableView.si_setFrame(weakSelf.view.bounds) ;
        tableView.si_setRowHeight(44) ;
        tableView.si_registClassForCellId([UITableViewCell class],@"cell") ;
        [weakSelf.view addSubview:tableView] ;
    }] ;
}

- (void)click:(UIButton *)btn{
    NSString *title = btn.si_titleForState(UIControlStateNormal);
    NSLog(@"%@", title);
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSLog(@"%s",__func__) ;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.si_setText([NSString stringWithFormat:@"%ld", indexPath.row]);
    return cell;
}

@end
