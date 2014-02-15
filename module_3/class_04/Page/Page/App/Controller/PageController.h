//
//  PageController.h
//  Page
//
//  Created by Franti Saúl Huamán Mera on 2/15/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PageController : NSObject
+ (instancetype)sharedInstance;
- (NSMutableArray *)obtenerFotos;
@end
