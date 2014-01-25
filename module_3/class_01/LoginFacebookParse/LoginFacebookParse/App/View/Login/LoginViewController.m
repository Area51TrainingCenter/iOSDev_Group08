//
//  LoginViewController.m
//  LoginFacebookParse
//
//  Created by Franti Saúl Huamán Mera on 1/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "LoginViewController.h"
#import "AppDelegate.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

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

- (IBAction)loginWithFacebookButton:(id)sender {
    
    if (FBSession.activeSession.state == FBSessionStateOpen|| FBSession.activeSession.state == FBSessionStateOpenTokenExtended ) {
        [FBSession.activeSession closeAndClearTokenInformation];
    }else{
        [FBSession openActiveSessionWithReadPermissions:@[@"basic_info",@"email"] allowLoginUI:YES completionHandler:^(FBSession *session, FBSessionState status, NSError *error) {
            AppDelegate *ap = [[UIApplication sharedApplication] delegate];
            [ap sessionStateChanged:session state:status error:error];
        }];
    }
}
@end
