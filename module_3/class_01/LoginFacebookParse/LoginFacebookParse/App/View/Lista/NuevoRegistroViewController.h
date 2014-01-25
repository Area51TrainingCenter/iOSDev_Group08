//
//  NuevoRegistroViewController.h
//  LoginFacebookParse
//
//  Created by Franti Saúl Huamán Mera on 1/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NuevoRegistroViewControllerDelegate <NSObject>
- (void)guardarRegistro:(NSDictionary *)bean;
@end

@interface NuevoRegistroViewController : UITableViewController
@property (nonatomic, weak) id<NuevoRegistroViewControllerDelegate>delegate;
- (IBAction)cerrarButton:(id)sender;
- (IBAction)guardarNuevoRegistroButton:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *nombre;
@property (weak, nonatomic) IBOutlet UITextField *anio;
@property (weak, nonatomic) IBOutlet UITextField *color;
@property (weak, nonatomic) IBOutlet UITextField *marca;
@property (weak, nonatomic) IBOutlet UITextField *tipo;

@end
