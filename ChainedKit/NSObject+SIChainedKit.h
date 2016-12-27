//
//  NSObject+SIChainedKit.h
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 26/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (SIChainedKit)

/** make */
+ (instancetype)si_make:(void(^)(id obj))block ;

#pragma mark ---- 可以连续点执行的方法
@property (nonatomic,strong,readonly) NSObject *(^si_performSelOnMain)(SEL,id,BOOL) ;
@property (nonatomic,strong,readonly) NSObject *(^si_performSelOnThread)(SEL,NSThread *,id,BOOL) ;
@property (nonatomic,strong,readonly) NSObject *(^si_performSelOnBackground)(SEL,id) ;
@property (nonatomic,strong,readonly) NSObject *(^si_performSelWithDelay)(SEL,id,NSTimeInterval) ;

@property (nonatomic,strong,readonly) NSObject *(^si_setValueForKey)(id,NSString *) ;
@property (nonatomic,strong,readonly) NSObject *(^si_setValueForKeyPath)(id,NSString *) ;
@property (nonatomic,strong,readonly) NSObject *(^si_setValueForKeysWithDic)(NSDictionary *) ;

#pragma mark ---- 不可以连续点执行的方法
@property (nonatomic,strong,readonly) BOOL (^si_isEqual)(id) ;

@property (nonatomic,strong,readonly) BOOL (^si_isKindOfClass)(Class) ;
@property (nonatomic,strong,readonly) BOOL (^si_isMemberOfClass)(Class) ;
@property (nonatomic,strong,readonly) BOOL (^si_conformsToProtocol)(Protocol *) ;
@property (nonatomic,strong,readonly) BOOL (^si_respondsToSel)(SEL) ;

@property (nonatomic,strong,readonly) id(^si_valueForKey)(NSString *) ;
@property (nonatomic,strong,readonly) id(^si_valueForKeyPath)(NSString *) ;
@property (nonatomic,strong,readonly) NSDictionary *(^si_dicWithValuesForkeys)(NSArray *) ;


@end
