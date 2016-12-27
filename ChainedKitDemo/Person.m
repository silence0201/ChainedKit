//
//  Person.m
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 27/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)eat:(NSString *)food{
    NSLog(@"%@",food) ;
}

-(NSString *)description{
    return [NSString stringWithFormat:@"name:%@ age:%@",self.name,self.age] ;
}

@end
