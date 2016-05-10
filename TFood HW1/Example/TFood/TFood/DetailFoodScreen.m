//
//  DetailFoodScreen.m
//  TFood
//
//  Created by Tin Blanc on 5/10/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "DetailFoodScreen.h"

@implementation DetailFoodScreen

-(void) viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back"]
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:self
                                                                            action:@selector(goBack)];
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
}

-(void) goBack{
    [self.navigationController popViewControllerAnimated:YES];
}


@end
