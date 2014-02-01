//
//  LoginViewController_iPhone.m
//  MiniProyecto
//
//  Created by Franti Saúl Huamán Mera on 2/1/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "LoginViewController_iPhone.h"
#import "AppDelegate.h"

//custom cells
#import "LoginFormCell.h"

@interface LoginViewController_iPhone ()

@end

@implementation LoginViewController_iPhone

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

#pragma mark -
#pragma mark Table View Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    LoginFormCell *l = [tableView dequeueReusableCellWithIdentifier:@"formCell" forIndexPath:indexPath];
    if (indexPath.row==0) {
        l.nombre.text = @"Email";
        l.valor.placeholder = @"";
    }else{
        l.nombre.text = @"Password";
        l.valor.placeholder = @"";
        l.valor.delegate=self;
    }
    return l;
}

#pragma mark
#pragma mark TextField Delegate Methods
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    AppDelegate *t = [UIApplication sharedApplication].delegate;
    [t showApp];
    return YES;
}
@end
