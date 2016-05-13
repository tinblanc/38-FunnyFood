//
//  Food.m
//  TFood
//
//  Created by Tin Blanc on 5/10/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "Food.h"

@implementation Food

-(instancetype) initWithName: (NSString*) name
                    andPrice: (NSString*) price
                   withImage: (NSString*) image
                  andSaleOff: (NSString*) saleOff
                withCategory: (NSString*) category{
    if (self = [super init]) {
        self.name = name;
        self.price = price;
        self.image = [UIImage imageNamed:image];
        self.saleOff = saleOff;
        self.category = category;
    }
    return self;
    
}

@end
