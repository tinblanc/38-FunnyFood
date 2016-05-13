//
//  SaleOffScreen.m
//  TFood
//
//  Created by Tin Blanc on 5/9/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "SaleOffScreen.h"
#import "SaleCustomCell.h"
#import "Food.h"
#import "ShowSaleDetailScreen.h"
#import "ArrayFood.h"

@interface SaleOffScreen ()

@end

@implementation SaleOffScreen
{
    NSMutableArray* arrayDataSale;
    NSMutableArray* arrayDataSaleFilter;
}

-(void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self createFoodData];
    arrayDataSaleFilter = [[NSMutableArray alloc] init];
    [self filterDataSale];
    
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"SaleCustomCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
 
}


-(void) filterDataSale{
    for (Food* food in arrayDataSale) {
        if(![food.saleOff isEqualToString:@""]){
            [arrayDataSaleFilter addObject:food];
        }
    }
}

#pragma mark - Create Data

-(void) createFoodData{
    arrayDataSale = [[ArrayFood sharedFood] arrayFood];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return arrayDataSaleFilter.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SaleCustomCell *cell = (SaleCustomCell*)[tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    Food* food = [[Food alloc] init];
    food = arrayDataSaleFilter[indexPath.row];
    
    cell.imgFood.image = food.image;
    cell.lblName.text = food.name;
    cell.lblPrice.text = food.price;
    cell.lblSale.text = food.saleOff;
    
    

    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Food* food = [[Food alloc] init];
    food = arrayDataSaleFilter[indexPath.row];
    
    ShowSaleDetailScreen* showSaleDetailScreen = [[ShowSaleDetailScreen alloc] init];
    showSaleDetailScreen.imageFood = food.image;
    showSaleDetailScreen.strName = food.name;
    showSaleDetailScreen.strPrice = food.price;
    showSaleDetailScreen.strSale = food.saleOff;
    
    [self.navigationController pushViewController:showSaleDetailScreen animated:YES];
    
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
