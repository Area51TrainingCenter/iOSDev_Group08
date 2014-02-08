//
//  Provincia.h
//  AppServicios
//
//  Created by Franti Saúl Huamán Mera on 2/8/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Provincia : NSManagedObject

@property (nonatomic, retain) NSString * pro_id;
@property (nonatomic, retain) NSString * pro_nombre;

@end
