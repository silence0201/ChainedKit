//
//  Person.h
//  ChainedKitDemo
//
//  Created by 杨晴贺 on 27/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic,strong) NSString *name ;
@property (nonatomic,strong) NSString *age ;

- (void)eat:(NSString *)food ;

@end
