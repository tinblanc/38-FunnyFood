//
//  ArrayFood.m
//  TFood
//
//  Created by Tin Blanc on 5/13/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "ArrayFood.h"
#import "Food.h"

@implementation ArrayFood

+ (id)sharedFood {
    static ArrayFood *sharedMyFood = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyFood = [[self alloc] init];
        
        
    });
    return sharedMyFood;
}
- (id)init {
    if (self = [super init]) {
        Food* veganFood1 = [[Food alloc] initWithName:@"Reunion with baes" andPrice:@"$23,00" withImage:@"vegan1.png" andSaleOff:@"" withCategory:@"Vegan Food"];
        Food* veganFood2 = [[Food alloc] initWithName:@"Limburg pie" andPrice:@"$44,00" withImage:@"vegan2.png" andSaleOff:@"-20%" withCategory:@"Vegan Food"];
        Food* veganFood3 = [[Food alloc] initWithName:@"Carac Cake" andPrice:@"$23,00" withImage:@"vegan3.png" andSaleOff:@"" withCategory:@"Vegan Food"];
        Food* veganFood4 = [[Food alloc] initWithName:@"Macaron Cake" andPrice:@"$25,00" withImage:@"vegan4.png" andSaleOff:@"-30%" withCategory:@"Vegan Food"];
        Food* veganFood5 = [[Food alloc] initWithName:@"Black Forest" andPrice:@"$46,00" withImage:@"vegan5.png" andSaleOff:@"-10%" withCategory:@"Vegan Food"];
        Food* veganFood6 = [[Food alloc] initWithName:@"Sachertorte" andPrice:@"$41,00" withImage:@"vegan6.png" andSaleOff:@"-10%" withCategory:@"Vegan Food"];
        Food* veganFood7 = [[Food alloc] initWithName:@"Masala Dosa" andPrice:@"$53,00" withImage:@"vegan7.png" andSaleOff:@"" withCategory:@"Vegan Food"];
        
        
        Food* nonVeganFood1 = [[Food alloc] initWithName:@"Crudos" andPrice:@"$53,00" withImage:@"nonvegan1.png" andSaleOff:@"-10%" withCategory:@"Non Vegan Food"];
        Food* nonVeganFood2 = [[Food alloc] initWithName:@"Gored gored" andPrice:@"$41,00" withImage:@"nonvegan2.png" andSaleOff:@"" withCategory:@"Non Vegan Food"];
        Food* nonVeganFood3 = [[Food alloc] initWithName:@"Yookhwe" andPrice:@"$23,00" withImage:@"nonvegan3.png" andSaleOff:@"-20%" withCategory:@"Non Vegan Food"];
        Food* nonVeganFood4 = [[Food alloc] initWithName:@"Kitfo Ethiopia" andPrice:@"$44,00" withImage:@"nonvegan4.png" andSaleOff:@"-15%" withCategory:@"Non Vegan Food"];
        Food* nonVeganFood5 = [[Food alloc] initWithName:@"Kibbeh Nayyeh" andPrice:@"$25,00" withImage:@"nonvegan5.png" andSaleOff:@"" withCategory:@"Non Vegan Food"];
        Food* nonVeganFood6 = [[Food alloc] initWithName:@"Carne Apache" andPrice:@"$23,00" withImage:@"nonvegan6.png" andSaleOff:@"-10%" withCategory:@"Non Vegan Food"];
        Food* nonVeganFood7 = [[Food alloc] initWithName:@"Steak tarta" andPrice:@"$41,00" withImage:@"nonvegan7.png" andSaleOff:@"" withCategory:@"Non Vegan Food"];
        
        Food* fastFood1 = [[Food alloc] initWithName:@"Subway" andPrice:@"$23,00" withImage:@"fastfood1.png" andSaleOff:@"-15%" withCategory:@"Fast Food"];
        Food* fastFood2 = [[Food alloc] initWithName:@"Mc Donald’s" andPrice:@"$41,00" withImage:@"fastfood2.png" andSaleOff:@"" withCategory:@"Fast Food"];
        Food* fastFood3 = [[Food alloc] initWithName:@"Starbucks" andPrice:@"$53,00" withImage:@"fastfood3.png" andSaleOff:@"-10%" withCategory:@"Fast Food"];
        Food* fastFood4 = [[Food alloc] initWithName:@"Burger King" andPrice:@"$44,00" withImage:@"fastfood4.png" andSaleOff:@"-20%" withCategory:@"Fast Food"];
        Food* fastFood5 = [[Food alloc] initWithName:@"Bocadillo" andPrice:@"$46,00" withImage:@"fastfood5.png" andSaleOff:@"" withCategory:@"Fast Food"];
        Food* fastFood6 = [[Food alloc] initWithName:@"Vada Pav" andPrice:@"$23,00" withImage:@"fastfood6.png" andSaleOff:@"-10%" withCategory:@"Fast Food"];
        
        Food* drink1 = [[Food alloc] initWithName:@"Caipirinha" andPrice:@"$41,00" withImage:@"drink1.png" andSaleOff:@"-20%" withCategory:@"Drink"];
        Food* drink2 = [[Food alloc] initWithName:@"Yerba Mate" andPrice:@"$46,00" withImage:@"drink2.png" andSaleOff:@"-10%" withCategory:@"Drink"];
        Food* drink3 = [[Food alloc] initWithName:@"Lemon & Paeroa" andPrice:@"$23,00" withImage:@"drink3.png" andSaleOff:@"" withCategory:@"Drink"];
        Food* drink4 = [[Food alloc] initWithName:@"Jigarthanda" andPrice:@"$25,00" withImage:@"drink4.png" andSaleOff:@"-15%" withCategory:@"Drink"];
        Food* drink5 = [[Food alloc] initWithName:@"Cendol" andPrice:@"$53,00" withImage:@"drink5.png" andSaleOff:@"-10%" withCategory:@"Drink"];
        Food* drink6 = [[Food alloc] initWithName:@"Sujeonggwa" andPrice:@"$23,00" withImage:@"drink6.png" andSaleOff:@"" withCategory:@"Drink"];
        
        self.arrayFood = [[NSMutableArray alloc] initWithObjects:veganFood1,veganFood2,veganFood3,veganFood4,veganFood5,veganFood6,veganFood7,nonVeganFood1,nonVeganFood2,nonVeganFood3,nonVeganFood4,nonVeganFood5,nonVeganFood6,nonVeganFood7,fastFood1,fastFood2,fastFood3,fastFood4,fastFood5,fastFood6,drink1,drink2,drink3,drink4,drink5,drink6, nil];
    }
    return self;
}

@end
