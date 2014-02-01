//
//  LoginViewController_iPhone.h
//  MiniProyecto
//
//  Created by Franti Saúl Huamán Mera on 2/1/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController_iPhone : UIViewController<UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITableView *loginTableView;

@end
