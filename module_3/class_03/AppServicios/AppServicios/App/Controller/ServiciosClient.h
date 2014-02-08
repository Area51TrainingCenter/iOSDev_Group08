//
//  ServiciosClient.h
//  AppServicios
//
//  Created by Franti Saúl Huamán Mera on 2/8/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "AFHTTPSessionManager.h"

@interface ServiciosClient : AFHTTPSessionManager
+ (instancetype)sharedClient;
@end
