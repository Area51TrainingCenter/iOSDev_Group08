//
//  AppViewController.m
//  MiniProyecto
//
//  Created by Franti Saúl Huamán Mera on 2/1/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "AppViewController.h"

@interface AppViewController ()

@end

@implementation AppViewController

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
	// Do any additional setup after loading the view.
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)awakeFromNib{
    [self setLeftPanel:[self.storyboard instantiateViewControllerWithIdentifier:@"menuIzquierdo"]];
    [self setRightPanel:[self.storyboard instantiateViewControllerWithIdentifier:@"menuDerecho"]];
    [self setCenterPanel:[self.storyboard instantiateViewControllerWithIdentifier:@"unoScene"]];
}

@end
