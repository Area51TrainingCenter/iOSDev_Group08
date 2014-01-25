//
//  NuevoRegistroViewController.m
//  LoginFacebookParse
//
//  Created by Franti Saúl Huamán Mera on 1/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "NuevoRegistroViewController.h"

@interface NuevoRegistroViewController ()

@end

@implementation NuevoRegistroViewController

- (id)initWithStyle:(UITableViewStyle)style{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cerrarButton:(id)sender {
}
- (IBAction)guardarNuevoRegistroButton:(id)sender {
    
    PFObject *bean = [PFObject objectWithClassName:@"Auto"];
    [bean setValue:self.nombre.text forKey:@"Nombre"];
    [bean setValue:self.marca.text forKey:@"marca"];
    [bean setValue:self.anio.text forKey:@"Anio"];
    [bean setValue:self.color.text forKey:@"Color"];
    [bean setValue:self.tipo.text forKey:@"Tipo"];
    
    [bean saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (succeeded) {
            [self dismissViewControllerAnimated:YES completion:^{
                [self.delegate guardarRegistro:nil];
            }];
        }else{
            
        }
    }];
}
@end
