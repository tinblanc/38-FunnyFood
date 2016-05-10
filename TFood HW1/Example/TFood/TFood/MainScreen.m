//
//  MainScreen.m
//  TFood
//
//  Created by Tin Blanc on 5/9/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "MainScreen.h"
#import "DetailFoodScreen.h"

@interface MainScreen ()
@property(nonatomic, strong) DetailFoodScreen* detailScreen;

@end

@implementation MainScreen

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
}




- (IBAction)btnVeganFood:(id)sender {
    
    if (!self.detailScreen) { // Kiểm tra detailScreen đã khởi tạo chưa
        self.detailScreen = [[DetailFoodScreen alloc] init];
    }
    
    [self.navigationController pushViewController:self.detailScreen animated:YES];
    
}

- (IBAction)btnNonVeganFood:(id)sender {
    if (!self.detailScreen) { // Kiểm tra detailScreen đã khởi tạo chưa
        self.detailScreen = [[DetailFoodScreen alloc] init];
    }
    
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}

- (IBAction)btnFastFood:(id)sender {
    if (!self.detailScreen) { // Kiểm tra detailScreen đã khởi tạo chưa
        self.detailScreen = [[DetailFoodScreen alloc] init];
    }
    
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}

- (IBAction)btnDrink:(id)sender {
    if (!self.detailScreen) { // Kiểm tra detailScreen đã khởi tạo chưa
        self.detailScreen = [[DetailFoodScreen alloc] init];
    }
    
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}



@end
