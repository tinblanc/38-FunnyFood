//
//  ShowSaleDetailScreen.m
//  TFood
//
//  Created by Tin Blanc on 5/11/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "ShowSaleDetailScreen.h"

@interface ShowSaleDetailScreen ()

@end

@implementation ShowSaleDetailScreen

-(void)viewDidAppear:(BOOL)animated {
    // làm mờ navigation bar
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"testbg.png"]
                                                  forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    self.navigationController.navigationBar.translucent = YES;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];

}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.imgFood.image = self.imageFood;
    self.title = self.strName;
    self.lblPrice.text = self.strPrice;
    
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back"]
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:self
                                                                            action:@selector(goBack)];
    
}

-(void) goBack{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)viewDidLayoutSubviews{
    self.imgFood.bounds = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.width);
}

@end
