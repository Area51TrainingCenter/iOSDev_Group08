//
//  AppServiciosRequest.m
//  AppServicios
//
//  Created by Franti Saúl Huamán Mera on 2/8/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "AppServiciosRequest.h"
#import "ServiciosClient.h"
#import "AppURLs.h"

@implementation AppServiciosRequest

+ (void)solicitarListaDeDepartamentosConBloque:(void(^)(id listaDepartmentos, NSError *error))bloque{
    
    [[ServiciosClient sharedClient] POST:[AppURLs obtenerDepartamentos] parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        NSLog(@"%@\n%@",task.response,responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"%@\n%@",task.response,error.localizedDescription);
    }];
}

+ (void)traerListaDePronvicia:(NSString *)idDepartamento bloque:(void (^)(id, NSError *))bloque{
    NSDictionary *parameters = [NSDictionary dictionaryWithObjectsAndKeys:idDepartamento, @"codDep", nil];
    
    [[ServiciosClient sharedClient] POST:[AppURLs obtenerProvincias] parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
        NSLog(@"%@",responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"%@",error.localizedDescription);
    }];
}
@end
