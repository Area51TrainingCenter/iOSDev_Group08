//
//  MasterViewController.m
//  Celda
//
//  Created by Franti Saúl Huamán Mera on 2/15/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "MasterViewController.h"


@interface MasterViewController ()

@end

@implementation MasterViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"testCell" forIndexPath:indexPath];
    cell.delegate = self;
    
    // Configure the cell...
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}

- (void)pasarAccion{
    [[[UIAlertView alloc] initWithTitle:@"Delegado" message:@"Presionado" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil] show];
}
@end
