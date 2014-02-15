//
//  UbigeoViewController.h
//  AppServicios
//
//  Created by Franti Saúl Huamán Mera on 2/8/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UbigeoViewController : UITableViewController<UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *departamento;
@property (weak, nonatomic) IBOutlet UITextField *provincia;
@property (weak, nonatomic) IBOutlet UITextField *distrito;

@end
