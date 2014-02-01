//
//  MenuViewController.m
//  MiniProyecto
//
//  Created by Franti Saúl Huamán Mera on 2/1/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "MenuViewController.h"

#import "UIViewController+JASidePanel.h"
#import "JASidePanelController.h"

#import "UnoViewController.h"
#import "DosViewController.h"
#import "TresViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

#pragma mark -
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
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - Table View Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"testCell" forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"Opción :%i",indexPath.row];
    return cell;
}

#pragma mark -
#pragma mark Table View Delegate Methods
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row==0) {
        UnoViewController *uno = [self.storyboard instantiateViewControllerWithIdentifier:@"unoScene"];
        [self.sidePanelController setCenterPanel:uno];
    }else if (indexPath.row==1){
        DosViewController *dos = [self.storyboard instantiateViewControllerWithIdentifier:@"dosScene"];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:dos];
        [self.sidePanelController setCenterPanel:nav];
    }else{
        TresViewController *dos = [self.storyboard instantiateViewControllerWithIdentifier:@"tresScene"];
        [self.sidePanelController setCenterPanel:dos];
    }
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end
