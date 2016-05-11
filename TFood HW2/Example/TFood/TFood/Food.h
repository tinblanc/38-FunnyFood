//
//  Food.h
//  TFood
//
//  Created by Tin Blanc on 5/10/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@interface Food : NSObject
@property ( nonatomic, strong) NSString* name;
@property ( nonatomic, strong) NSString* price;
@property ( nonatomic, strong) UIImage* image;
@property ( nonatomic, strong) NSString* saleOff;

-(instancetype) initWithName: (NSString*) name
                    andPrice: (NSString*) price
                   withImage: (NSString*) image
                  andSaleOff: (NSString*) saleOff;
@end
