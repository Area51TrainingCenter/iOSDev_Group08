//
//  ViewController.m
//  CalculadoraIBActionIBOutlet
//
//  Created by Franti Saúl Huamán Mera on 1/28/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sumar:(id)sender {
    self.resultado.text = [NSString stringWithFormat:@"%i",[self.cajaUno.text intValue]+[self.cajaDos.text intValue]];
}
- (IBAction)dividir:(id)sender {
    self.resultado.text = [NSString stringWithFormat:@"%i",[self.cajaUno.text intValue]/[self.cajaDos.text intValue]];
}

- (IBAction)restar:(id)sender {
    self.resultado.text = [NSString stringWithFormat:@"%i",[self.cajaUno.text intValue]-[self.cajaDos.text intValue]];
}

- (IBAction)multiplicar:(id)sender {
    self.resultado.text = [NSString stringWithFormat:@"%i",[self.cajaUno.text intValue]*[self.cajaDos.text intValue]];
}
@end
