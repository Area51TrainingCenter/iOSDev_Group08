//
//  CDTool.h
//  AppServicios
//
//  Created by Franti Saúl Huamán Mera on 2/8/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CDTool : NSObject
@property (nonatomic, strong) NSManagedObjectContext *context;

+ (instancetype)sharedInstance;

- (BOOL)guardaDepartamentos:(id)data;
- (NSArray *)obtenerDepartamentos;

@end
