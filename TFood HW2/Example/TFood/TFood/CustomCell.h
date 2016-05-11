//
//  CustomCell.h
//  TFood
//
//  Created by Tin Blanc on 5/10/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageViewThumbnail;
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblCategory;
@property (weak, nonatomic) IBOutlet UILabel *lblSale;
@property (weak, nonatomic) IBOutlet UILabel *lblPrice;

@end
