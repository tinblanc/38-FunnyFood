//
//  DetailFoodScreen.m
//  TFood
//
//  Created by Tin Blanc on 5/10/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "DetailFoodScreen.h"
#import "CustomCell.h"
#import "Food.h"
#import "UIColor+Extend.h"
#import "ShowDetailScreen.h"

@implementation DetailFoodScreen{
    NSMutableArray* arrayData;
}


-(void) viewWillAppear:(BOOL)animated { // không gọi trong viewDidLoad vì chỉ gọi 1 lần
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.barTintColor = [[UIColor alloc] initWithHex:@"ce3740" alpha:1.0];
    [self ChooseCategory];
    
    [self.tableView reloadData];
}

-(void) viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil] forCellReuseIdentifier:@"Cell"]; // vì sử dụng CustomCell nên phải khai báo
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back"]
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:self
                                                                            action:@selector(goBack)];
    
    
    
    
}

-(void) goBack{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void) ChooseCategory {
    if ([self.category isEqualToString:@"Vegan Food"]) {
        [self createDataVeganFood];
        
    } else if ([self.category isEqualToString:@"Non Vegan Food"]){
        [self createDataNonVeganFood];
    } else if ([self.category isEqualToString:@"Fast Food"]){
        [self createDataFastFood];
    } else if ([self.category isEqualToString:@"Drink"]){
        [self createDataDrink];
    }
    self.title = self.category;
}



#pragma mark - Create data

-(void) createDataVeganFood {
    Food* veganFood1 = [[Food alloc] initWithName:@"Reunion with baes" andPrice:@"$23,00" withImage:@"vegan1.png" andSaleOff:@""];
    Food* veganFood2 = [[Food alloc] initWithName:@"Limburg pie" andPrice:@"$44,00" withImage:@"vegan2.png" andSaleOff:@"-20%"];
    Food* veganFood3 = [[Food alloc] initWithName:@"Carac Cake" andPrice:@"$23,00" withImage:@"vegan3.png" andSaleOff:@""];
    Food* veganFood4 = [[Food alloc] initWithName:@"Macaron Cake" andPrice:@"$25,00" withImage:@"vegan4.png" andSaleOff:@"-30%"];
    Food* veganFood5 = [[Food alloc] initWithName:@"Black Forest" andPrice:@"$46,00" withImage:@"vegan5.png" andSaleOff:@"-10%"];
    Food* veganFood6 = [[Food alloc] initWithName:@"Sachertorte" andPrice:@"$41,00" withImage:@"vegan6.png" andSaleOff:@"-10%"];
    Food* veganFood7 = [[Food alloc] initWithName:@"Masala Dosa" andPrice:@"$53,00" withImage:@"vegan7.png" andSaleOff:@""];

    
    arrayData = [[NSMutableArray alloc] initWithObjects:veganFood1,veganFood2,veganFood3,veganFood4,veganFood5,veganFood6,veganFood7, nil];
    
}

-(void) createDataNonVeganFood {
    Food* nonVeganFood1 = [[Food alloc] initWithName:@"Crudos" andPrice:@"$53,00" withImage:@"nonvegan1.png" andSaleOff:@"-10%"];
    Food* nonVeganFood2 = [[Food alloc] initWithName:@"Gored gored" andPrice:@"$41,00" withImage:@"nonvegan2.png" andSaleOff:@""];
    Food* nonVeganFood3 = [[Food alloc] initWithName:@"Yookhwe" andPrice:@"$23,00" withImage:@"nonvegan3.png" andSaleOff:@"-20%"];
    Food* nonVeganFood4 = [[Food alloc] initWithName:@"Kitfo Ethiopia" andPrice:@"$44,00" withImage:@"nonvegan4.png" andSaleOff:@"-15%"];
    Food* nonVeganFood5 = [[Food alloc] initWithName:@"Kibbeh Nayyeh" andPrice:@"$25,00" withImage:@"nonvegan5.png" andSaleOff:@""];
    Food* nonVeganFood6 = [[Food alloc] initWithName:@"Carne Apache" andPrice:@"$23,00" withImage:@"nonvegan6.png" andSaleOff:@"-10%"];
    Food* nonVeganFood7 = [[Food alloc] initWithName:@"Steak tarta" andPrice:@"$41,00" withImage:@"nonvegan7.png" andSaleOff:@""];
    
    arrayData = [[NSMutableArray alloc] initWithObjects:nonVeganFood1,nonVeganFood2,nonVeganFood3,nonVeganFood4,nonVeganFood5,nonVeganFood6,nonVeganFood7, nil];
    
}

-(void) createDataFastFood {
    Food* fastFood1 = [[Food alloc] initWithName:@"Subway" andPrice:@"$23,00" withImage:@"fastfood1.png" andSaleOff:@"-15%"];
    Food* fastFood2 = [[Food alloc] initWithName:@"Mc Donald’s" andPrice:@"$41,00" withImage:@"fastfood2.png" andSaleOff:@""];
    Food* fastFood3 = [[Food alloc] initWithName:@"Starbucks" andPrice:@"$53,00" withImage:@"fastfood3.png" andSaleOff:@"-10%"];
    Food* fastFood4 = [[Food alloc] initWithName:@"Burger King" andPrice:@"$44,00" withImage:@"fastfood4.png" andSaleOff:@"-20%"];
    Food* fastFood5 = [[Food alloc] initWithName:@"Bocadillo" andPrice:@"$46,00" withImage:@"fastfood5.png" andSaleOff:@""];
    Food* fastFood6 = [[Food alloc] initWithName:@"Vada Pav" andPrice:@"$23,00" withImage:@"fastfood6.png" andSaleOff:@"-10%"];
    
    arrayData = [[NSMutableArray alloc] initWithObjects:fastFood1,fastFood2,fastFood3,fastFood4,fastFood5,fastFood6, nil];
    
}

-(void) createDataDrink {
    Food* drink1 = [[Food alloc] initWithName:@"Caipirinha" andPrice:@"$41,00" withImage:@"drink1.png" andSaleOff:@"-20%"];
    Food* drink2 = [[Food alloc] initWithName:@"Yerba Mate" andPrice:@"$46,00" withImage:@"drink2.png" andSaleOff:@"-10%"];
    Food* drink3 = [[Food alloc] initWithName:@"Lemon & Paeroa" andPrice:@"$23,00" withImage:@"drink3.png" andSaleOff:@""];
    Food* drink4 = [[Food alloc] initWithName:@"Jigarthanda" andPrice:@"$25,00" withImage:@"drink4.png" andSaleOff:@"-15%"];
    Food* drink5 = [[Food alloc] initWithName:@"Cendol" andPrice:@"$53,00" withImage:@"drink5.png" andSaleOff:@"-10%"];
    Food* drink6 = [[Food alloc] initWithName:@"Sujeonggwa" andPrice:@"$23,00" withImage:@"drink6.png" andSaleOff:@""];
    
    arrayData = [[NSMutableArray alloc] initWithObjects:drink1,drink2,drink3,drink4,drink5,drink6, nil];
}


#pragma mark - Table View

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrayData.count;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell* cell = (CustomCell*)[tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    Food* food = [[Food alloc] init];
    food = arrayData[indexPath.row];
    
    cell.imageViewThumbnail.image = food.image;
    cell.lblName.text = food.name;
    cell.lblCategory.text = self.category;
    cell.lblPrice.text = food.price;
    cell.lblSale.text = food.saleOff;
    
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Food* food = [[Food alloc] init];
    food = arrayData[indexPath.row];
    
    ShowDetailScreen* showDetailScreen = [[ShowDetailScreen alloc] init];
    showDetailScreen.imgFood = food.image;
    showDetailScreen.strName = food.name;
    showDetailScreen.strPrice = food.price;
    showDetailScreen.strSaleOff = food.saleOff;
    
    [self.navigationController pushViewController:showDetailScreen animated:YES];
}



-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}


@end
