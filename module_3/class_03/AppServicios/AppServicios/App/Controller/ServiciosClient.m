//
//  ServiciosClient.m
//  AppServicios
//
//  Created by Franti Saúl Huamán Mera on 2/8/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "ServiciosClient.h"
#import "AppURLs.h"

@implementation ServiciosClient

#pragma mark -
#pragma mark Singleton Method Instance
+ (instancetype)sharedClient{
    static ServiciosClient *t = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        t= [[ServiciosClient alloc] initWithBaseURL:[AppURLs urlBase]];
    });
    return t;
}
@end
