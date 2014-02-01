//
//  AppURLS.m
//  Servicios
//
//  Created by Franti Saúl Huamán Mera on 2/1/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "AppURLS.h"

static const NSString *kServerURLDevelopment = @"http://www.kunfood.com/test/ws/";

@implementation AppURLS

+ (NSURL *)getGlobalURL{
    return [NSURL URLWithString:[NSString stringWithFormat:@"%@",kServerURLDevelopment]];
}

@end
