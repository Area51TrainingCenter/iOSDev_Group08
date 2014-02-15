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
#import "CustomPickerViewController.h"

@interface UbigeoViewController ()
@property (nonatomic, strong) CustomPickerViewController *miPicker;
@property (nonatomic, strong) NSArray *listaDeDepartamentos;
@property (nonatomic, strong) NSArray *listaDeProvincias;
@property (nonatomic, strong) NSArray *listaDeDistritos;
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
    
    /*
     
    */

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
    if ([self.departamento isFirstResponder]) {
        return [self.listaDeDepartamentos count];
    }else if ([self.provincia isFirstResponder]){
        return [self.listaDeProvincias count];
    }else{
        return [self.listaDeDistritos count];
    }
}

#pragma mark -
#pragma mark Picker View Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    if ([self.departamento isFirstResponder]) {
        Departamento *d = [self.listaDeDepartamentos objectAtIndex:row];
        return d.dep_nombre;
    }else{
        return nil;
    }
    
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    self.currentDepartamento = [self.listaDeDepartamentos objectAtIndex:row];
    
    self.departamento.text = self.currentDepartamento.dep_nombre;
}

#pragma mark -
#pragma mark TextField Delegate Methods
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    if (textField == self.departamento) {
        [AppServiciosRequest solicitarListaDeDepartamentosConBloque:^(id listaDepartmentos, NSError *error) {
            if (!error) {
                self.listaDeDepartamentos = listaDepartmentos;
                NSLog(@"%@",listaDepartmentos);
            }
        }];
    }else if (textField == self.provincia){
        [AppServiciosRequest traerListaDePronvicia:self.currentDepartamento.dep_id bloque:^(id listaProvincias, NSError *error) {
            self.listaDeProvincias = listaProvincias;
        }];

    }else{
        [AppServiciosRequest traerDistritoDe:@"" yPrivincia:@"" bloque:^(id listaDistritos, NSError *error) {
            self.listaDeDistritos = listaDistritos;
        }];
    }
    
    self.miPicker = [self.storyboard instantiateViewControllerWithIdentifier:@"pickerScene"];
    self.miPicker.miPicker.frame = CGRectMake(self.miPicker.view.frame.origin.x, self.miPicker.view.frame.origin.y, self.miPicker.view.frame.size.width, self.miPicker.view.frame.size.height);
    self.miPicker.miPicker.delegate = self;
    self.miPicker.miPicker.dataSource = self;
    [textField setInputView:self.miPicker.view];
    return YES;
}


@end
