//
//  CDTool.m
//  AppServicios
//
//  Created by Franti Saúl Huamán Mera on 2/8/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "CDTool.h"
#import "AppDelegate.h"
#import "Departamento.h"
#import "Provincia.h"
#import "Distrito.h"

@implementation CDTool

- (instancetype)init{
    self = [super init];
    if (self) {
        AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
        self.context = [appDelegate managedObjectContext];
    }
    return self;
}

+ (instancetype)sharedInstance{
    static CDTool *y = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        y = [CDTool new];
    });
    return y;
}

- (BOOL)guardaDepartamentos:(id)data{
    int i=0;
    for (NSDictionary *item in data) {
        i+=1;
        NSLog(@"%i: %@",i,item);
        Departamento *current = [NSEntityDescription insertNewObjectForEntityForName:@"Departamento" inManagedObjectContext:self.context];
        current.dep_id = [NSString stringWithFormat:@"%@",[item objectForKey:@"i"]];
        current.dep_nombre = [item objectForKey:@"des"];
    }
    
    NSError *error;
    if ([self.context save:&error]) {
        return YES;
    }else{
        return NO;
    }
}
- (NSArray *)obtenerDepartamentos{
    NSFetchRequest *fetchRequest = [NSFetchRequest new];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Departamento" inManagedObjectContext:self.context];
    [fetchRequest setEntity:entity];
    NSError *er;
    //NSLog(@"%@",[self.context executeFetchRequest:fetchRequest error:&er]);
    return [self.context executeFetchRequest:fetchRequest error:&er];
}

@end
