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
#import "CDTool.h"

@implementation AppServiciosRequest

+ (void)solicitarListaDeDepartamentosConBloque:(void(^)(id listaDepartmentos, NSError *error))bloque{
    
    [[ServiciosClient sharedClient] POST:[AppURLs obtenerDepartamentos] parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        
        if ([[CDTool sharedInstance] guardaDepartamentos:responseObject]) {
            bloque([[CDTool sharedInstance] obtenerDepartamentos], nil);
        }else{
            
        }

        //NSLog(@"%@\n%@",task.response,responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        //NSLog(@"%@\n%@",task.response,error.localizedDescription);
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

+ (void)traerDistritoDe:(NSString *)idDepartamento yPrivincia:(NSString *)idProvincia bloque:(void(^)(id listaDistritos, NSError *error))bloque{
    
    NSDictionary *parameters = [NSDictionary dictionaryWithObjectsAndKeys:idDepartamento, @"codDep", idProvincia, @"codPro", nil];
    
    [[ServiciosClient sharedClient] POST:[AppURLs obtenerDistrito] parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
        NSLog(@"%@",responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"%@",error.localizedDescription);
    }];
}
@end
