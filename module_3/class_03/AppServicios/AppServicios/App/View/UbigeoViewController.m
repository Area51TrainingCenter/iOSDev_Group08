//
//  UbigeoViewController.m
//  AppServicios
//
//  Created by Franti Saúl Huamán Mera on 2/8/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "UbigeoViewController.h"
#import "AppServiciosRequest.h"

@interface UbigeoViewController ()
@property (nonatomic, strong) UIPickerView *miPicker;
@end

@implementation UbigeoViewController

#pragma mark 
#pragma mark LifeCycle Methods
- (id)initWithStyle:(UITableViewStyle)style{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad{
    [super viewDidLoad];
    
    /*
    [AppServiciosRequest solicitarListaDeDepartamentosConBloque:^(id listaDepartmentos, NSError *error) {
        
    }];*/
    
    [AppServiciosRequest traerListaDePronvicia:@"" bloque:^(id listaProvincias, NSError *error) {
        
    }];

}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark Picker View Data Source Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 10;
}

#pragma mark -
#pragma mark Picker View Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return @"Area51";
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    self.departamento.text = @"Lima";
}

#pragma mark -
#pragma mark TextField Delegate Methods
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    self.miPicker = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 0, 320, 162)];
    self.miPicker.delegate = self;
    self.miPicker.dataSource = self;
    [textField setInputView:self.miPicker];
    return YES;
}

@end
