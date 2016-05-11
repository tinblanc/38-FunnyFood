//
//  ShowDetailScreen.m
//  TFood
//
//  Created by Tin Blanc on 5/11/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "ShowDetailScreen.h"

@interface ShowDetailScreen ()

@end

@implementation ShowDetailScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back"]
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:self
                                                                            action:@selector(goBack)];
    
    
    self.title = self.strName;
    self.imageFood.image = self.imgFood;
    self.lblPrice.text = self.strPrice;
    
    
    
    
    
    
    
}

-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.imageFood.bounds = CGRectMake(0, -20, self.view.bounds.size.width, self.view.bounds.size.width);
}

-(void) viewWillAppear:(BOOL)animated {
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"testbg.png"]
                                                  forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    self.navigationController.navigationBar.translucent = YES;
}

-(void) goBack{
    [self.navigationController popViewControllerAnimated:YES];
}



@end
