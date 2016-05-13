//
//  ArrayFood.h
//  TFood
//
//  Created by Tin Blanc on 5/13/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArrayFood : NSObject
@property ( nonatomic, strong) NSMutableArray* arrayFood;
+ (id)sharedFood;
@end
