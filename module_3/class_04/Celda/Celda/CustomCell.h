//
//  CustomCell.h
//  Celda
//
//  Created by Franti Saúl Huamán Mera on 2/15/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomCellDelegate <NSObject>
- (void)pasarAccion;
@end

@interface CustomCell : UITableViewCell<UICollectionViewDataSource, UICollectionViewDelegate>
@property (nonatomic, weak) id<CustomCellDelegate>delegate;

@end
