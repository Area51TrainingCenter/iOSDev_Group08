//
//  AppServiciosRequest.h
//  AppServicios
//
//  Created by Franti Saúl Huamán Mera on 2/8/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppServiciosRequest : NSObject
+ (void)solicitarListaDeDepartamentosConBloque:(void(^)(id listaDepartmentos, NSError *error))bloque;

+ (void)traerListaDePronvicia:(NSString *)idDepartamento bloque:(void(^)(id listaProvincias, NSError *error))bloque;
@end
