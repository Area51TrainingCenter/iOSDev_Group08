//
//  UbigeoViewController.m
//  AppServicios
//
//  Created by Franti Saúl Huamán Mera on 2/8/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "UbigeoViewController.h"
#import "AppServiciosRequest.h"
#import "Departamento.h"

@interface UbigeoViewController ()
@property (nonatomic, strong) UIPickerView *miPicker;
@property (nonatomic, strong) NSArray *listaDeDepartamentos;
@property (nonatomic, strong) Departamento *currentDepartamento;
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
    
    
    [AppServiciosRequest solicitarListaDeDepartamentosConBloque:^(id listaDepartmentos, NSError *error) {
        if (!error) {
            self.listaDeDepartamentos = listaDepartmentos;
            //NSLog(@"%@",listaDepartmentos);
        }
    }];
    /*
    [AppServiciosRequest traerListaDePronvicia:@"" bloque:^(id listaProvincias, NSError *error) {
        
    }];
    
    [AppServiciosRequest traerDistritoDe:@"" yPrivincia:@"" bloque:^(id listaDistritos, NSError *error) {
        
    }];*/

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
    return [self.listaDeDepartamentos count];
}

#pragma mark -
#pragma mark Picker View Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    Departamento *d = [self.listaDeDepartamentos objectAtIndex:row];
    return d.dep_nombre;
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    self.currentDepartamento = [self.listaDeDepartamentos objectAtIndex:row];
    
    self.departamento.text = self.currentDepartamento.dep_nombre;
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
