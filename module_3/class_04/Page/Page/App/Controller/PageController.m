//
//  PageController.m
//  Page
//
//  Created by Franti Saúl Huamán Mera on 2/15/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "PageController.h"

@implementation PageController

- (NSMutableArray *)obtenerFotos{
    return [NSMutableArray arrayWithObjects:@"mario", @"rombo", @"stopOne", @"superman", @"apple", nil];
}

#pragma mark -
#pragma mark Singleton Instance Method
+ (instancetype)sharedInstance{
    static PageController *y = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        y=[PageController new];
    });
    return y;
}
@end
