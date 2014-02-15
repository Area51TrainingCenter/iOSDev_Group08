//
//  AppURLs.m
//  AppServicios
//
//  Created by Franti Saúl Huamán Mera on 2/8/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "AppURLs.h"

static const NSString *kDevelopmentURL = @"http://23.23.181.216";

static const NSString *kDepartamentoListURL = @"/Talleres/Ipad/BuscaDepartamentoIpad.aspx";
static const NSString *kProvinciaListURL = @"/Talleres/Ipad/BuscaProvinciaIpad.aspx";
static const NSString *kDistritosListURL = @"/Talleres/Ipad/BuscaDistritoIpad.aspx";

@implementation AppURLs

+ (NSURL *)urlBase{
    NSString *t = [NSString stringWithFormat:@"%@",kDevelopmentURL];
    return [NSURL URLWithString:t];
}
+ (NSString *)obtenerDepartamentos{
    return [NSString stringWithFormat:@"%@",kDepartamentoListURL];
}
+ (NSString *)obtenerProvincias{
    return [NSString stringWithFormat:@"%@",kProvinciaListURL];
}
+ (NSString *)obtenerDistrito{
    return [NSString stringWithFormat:@"%@",kDistritosListURL];
}
@end
