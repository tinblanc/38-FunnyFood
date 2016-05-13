//
//  DetailAddress.m
//  TFood
//
//  Created by Tin Blanc on 5/11/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "DetailAddress.h"

@interface DetailAddress () <UIScrollViewDelegate, UIGestureRecognizerDelegate>

@end

@implementation DetailAddress

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    self.scrollView.delegate = self;
    self.scrollView.clipsToBounds = YES;
    self.scrollView.zoomScale = 1.0;
    self.scrollView.layer.cornerRadius = 3.0;
    
    
    

}



@end
