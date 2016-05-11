//
//  SaleCustomCell.h
//  TFood
//
//  Created by Tin Blanc on 5/11/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SaleCustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imgFood;
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblCategory;
@property (weak, nonatomic) IBOutlet UILabel *lblSale;
@property (weak, nonatomic) IBOutlet UILabel *lblPrice;

@end
