//
//  ShowSaleDetailScreen.h
//  TFood
//
//  Created by Tin Blanc on 5/11/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShowSaleDetailScreen : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imgFood;
@property (weak, nonatomic) IBOutlet UILabel *lblPrice;

@property (nonatomic, strong) UIImage* imageFood;
@property (nonatomic, strong) NSString* strName;
@property (nonatomic, strong) NSString* strPrice;
@property (nonatomic, strong) NSString* strSale;

@end
