//
//  CustomCell.m
//  Celda
//
//  Created by Franti Saúl Huamán Mera on 2/15/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 4;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *t = [collectionView dequeueReusableCellWithReuseIdentifier:@"cCell" forIndexPath:indexPath];
    return t;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    [self.delegate pasarAccion];
    NSLog(@"Item %i selecionado", indexPath.row);
}
@end
