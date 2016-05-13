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
#import "ArrayFood.h"

@implementation DetailFoodScreen{
    NSMutableArray* arrayData;
    NSMutableArray* arrayDataFilter;
}


-(void) viewWillAppear:(BOOL)animated { // không gọi trong viewDidLoad vì chỉ gọi 1 lần
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.barTintColor = [[UIColor alloc] initWithHex:@"ce3740" alpha:1.0];
    arrayDataFilter = [[NSMutableArray alloc] init];
    [self ChooseCategory];
    
    
    [self.tableView reloadData];
}

-(void) viewDidLoad {
    [super viewDidLoad];
    [self createData];
    
    
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
    
    for (Food* food in arrayData) {
        if ([food.category isEqualToString:self.category]) {
            [arrayDataFilter addObject:food];
        }
        
    }
    self.title = self.category;
}



#pragma mark - Create data
-(void) createData {
    arrayData = [[ArrayFood sharedFood] arrayFood];
}



#pragma mark - Table View

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrayDataFilter.count;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell* cell = (CustomCell*)[tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    Food* food = [[Food alloc] init];
    food = arrayDataFilter[indexPath.row];
    
    cell.imageViewThumbnail.image = food.image;
    cell.lblName.text = food.name;
    cell.lblCategory.text = self.category;
    cell.lblPrice.text = food.price;
    cell.lblSale.text = food.saleOff;
    
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Food* food = [[Food alloc] init];
    food = arrayDataFilter[indexPath.row];
    
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
