//
//  MainScreen.m
//  TFood
//
//  Created by Tin Blanc on 5/9/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "MainScreen.h"
#import "DetailFoodScreen.h"
#import "UIColor+Extend.h"

@interface MainScreen ()
@property(nonatomic, strong) DetailFoodScreen* detailScreen;

@end

@implementation MainScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}


- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.barTintColor = [[UIColor alloc] initWithHex:@"c3202e" alpha:1.0]; // background navigation màu đỏ
}

- (IBAction)btnVeganFood:(id)sender {
    
    if (!self.detailScreen) { // Kiểm tra detailScreen đã khởi tạo chưa
        self.detailScreen = [[DetailFoodScreen alloc] init];
    }
    self.detailScreen.category = @"Vegan Food";
    
    [self.navigationController pushViewController:self.detailScreen animated:YES];
    
}

- (IBAction)btnNonVeganFood:(id)sender {
    if (!self.detailScreen) { // Kiểm tra detailScreen đã khởi tạo chưa
        self.detailScreen = [[DetailFoodScreen alloc] init];
    }
    self.detailScreen.category = @"Non Vegan Food";
    
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}

- (IBAction)btnFastFood:(id)sender {
    if (!self.detailScreen) { // Kiểm tra detailScreen đã khởi tạo chưa
        self.detailScreen = [[DetailFoodScreen alloc] init];
    }
    self.detailScreen.category = @"Fast Food";
    
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}

- (IBAction)btnDrink:(id)sender {
    if (!self.detailScreen) { // Kiểm tra detailScreen đã khởi tạo chưa
        self.detailScreen = [[DetailFoodScreen alloc] init];
    }
    self.detailScreen.category = @"Drink";
    
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}



@end
