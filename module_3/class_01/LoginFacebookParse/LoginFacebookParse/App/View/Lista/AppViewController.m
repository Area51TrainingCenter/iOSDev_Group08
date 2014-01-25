//
//  AppViewController.m
//  LoginFacebookParse
//
//  Created by Franti Saúl Huamán Mera on 1/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "AppViewController.h"

@interface AppViewController ()
@property (nonatomic, strong) NSArray *miListadeAutos;
@end

@implementation AppViewController

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
    [self guardarRegistro:nil];
    

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
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"nuevoRegistroSegue"]) {
        UINavigationController *nav = segue.destinationViewController;
        NuevoRegistroViewController *y = (NuevoRegistroViewController *)nav.topViewController;
        y.delegate=self;
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.miListadeAutos count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"testCell" forIndexPath:indexPath];
    PFObject *obj = [self.miListadeAutos objectAtIndex:indexPath.row];
    cell.textLabel.text = [obj objectForKey:@"Nombre"];
    
    // Configure the cell...
    
    return cell;
}

- (void)guardarRegistro:(NSDictionary *)bean{
    PFQuery *q = [PFQuery queryWithClassName:@"Auto"];
    [q findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (error) {
            NSLog(@"%@",error.localizedDescription);
        }else{
            self.miListadeAutos = objects;
            [self.tableView reloadData];
            
            NSLog(@"%@",objects);
        }
    }];
}
@end
