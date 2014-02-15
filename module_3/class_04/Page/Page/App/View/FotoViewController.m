//
//  FotoViewController.m
//  Page
//
//  Created by Franti Saúl Huamán Mera on 2/15/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "FotoViewController.h"
#import "PageController.h"

@interface FotoViewController ()
@property (nonatomic, strong) NSArray *fotos;
@end

@implementation FotoViewController

#pragma mark -
#pragma mark LifeCycle Methods
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    NSString *nombreDeFoto = [[[PageController sharedInstance] obtenerFotos] objectAtIndex:self.numeroDeFotoQueDeboMostrar];
    
    self.imagenAMostrar.image = [UIImage imageNamed:nombreDeFoto];
	// Do any additional setup after loading the view.
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
