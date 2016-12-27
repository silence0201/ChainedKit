//
//  NSObject+SIChainedKit.m
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 26/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import "NSObject+SIChainedKit.h"

@implementation NSObject (SIChainedKit)

+ (instancetype)si_make:(void (^)(id))block{
    id obj = [[self alloc]init] ;
    if(block) block(obj) ;
    return obj ;
}

- (NSObject * (^)(SEL, id, BOOL))si_performSelOnMain{
    return ^(SEL selector,id obj,BOOL untiDone){
        [self performSelectorOnMainThread:selector withObject:obj waitUntilDone:untiDone] ;
        return self ;
    } ;
}

- (NSObject * (^)(SEL, NSThread *, id, BOOL))si_performSelOnThread{
    return ^(SEL selector,NSThread *thread,id obj,BOOL untiDone){
        [self performSelector:selector onThread:thread withObject:obj waitUntilDone:untiDone] ;
        return self ;
    } ;
}

- (NSObject * (^)(SEL, id))si_performSelOnBackground{
    return ^(SEL selector,id obj){
        [self performSelectorInBackground:selector withObject:obj] ;
        return self ;
    } ;
}

- (NSObject * (^)(SEL, id, NSTimeInterval))si_performSelWithDelay{
    return ^(SEL selector,id obj,NSTimeInterval delay){
        [self performSelector:selector withObject:obj afterDelay:delay] ;
        return self ;
    } ;
}

- (BOOL (^)(id))si_isEqual{
    return ^(id obj){
        return [self isEqual:obj] ;
    } ;
}

- (BOOL (^)(__unsafe_unretained Class))si_isKindOfClass{
    return ^(Class clazz){
        return [self isKindOfClass:clazz] ;
    } ;
}

- (BOOL (^)(__unsafe_unretained Class))si_isMemberOfClass{
    return ^(Class clazz){
        return [self isMemberOfClass:clazz] ;
    } ;
}

- (BOOL (^)(Protocol *))si_conformsToProtocol{
    return ^(Protocol *pro){
        return [self conformsToProtocol:pro] ;
    } ;
}

- (BOOL (^)(SEL))si_respondsToSel{
    return ^(SEL selector){
        return [self respondsToSelector:selector] ;
    } ;
}

- (NSObject * (^)(id, NSString *))si_setValueForKey{
    return ^(id obj,NSString *key){
        [self setValue:obj forKey:key] ;
        return self ;
    } ;
}

- (NSObject * (^)(id, NSString *))si_setValueForKeyPath{
    return ^(id obj,NSString *keyPath){
        [self setValue:obj forKeyPath:keyPath] ;
        return self ;
    } ;
}

- (NSObject * (^)(NSDictionary *))si_setValueForKeysWithDic{
    return ^(NSDictionary *dic){
        [self setValuesForKeysWithDictionary:dic] ;
        return self ;
    } ;
}

- (id (^)(NSString *))si_valueForKey{
    return ^(NSString *key){
        return [self valueForKey:key] ;
    } ;
}

- (id (^)(NSString *))si_valueForKeyPath{
    return ^(NSString *keyPath){
        return [self valueForKeyPath:keyPath] ;
    } ;
}

- (NSDictionary *(^)(NSArray *))si_dicWithValuesForkeys{
    return ^(NSArray *keys){
        return [self dictionaryWithValuesForKeys:keys] ;
    } ;
}

@end
