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

@interface SaleOffScreen ()

@end

@implementation SaleOffScreen
{
    NSMutableArray* arraySale;
}

-(void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self createFoodData];
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"SaleCustomCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
 
}

#pragma mark - Create Data

-(void) createFoodData{
    Food* veganFood2 = [[Food alloc] initWithName:@"Limburg pie" andPrice:@"$44,00" withImage:@"vegan2.png" andSaleOff:@"-20%"];
    Food* veganFood4 = [[Food alloc] initWithName:@"Macaron Cake" andPrice:@"$25,00" withImage:@"vegan4.png" andSaleOff:@"-30%"];
    Food* veganFood5 = [[Food alloc] initWithName:@"Black Forest" andPrice:@"$46,00" withImage:@"vegan5.png" andSaleOff:@"-10%"];
    Food* veganFood6 = [[Food alloc] initWithName:@"Sachertorte" andPrice:@"$41,00" withImage:@"vegan6.png" andSaleOff:@"-10%"];
    
    Food* nonVeganFood1 = [[Food alloc] initWithName:@"Crudos" andPrice:@"$53,00" withImage:@"nonvegan1.png" andSaleOff:@"-10%"];
    Food* nonVeganFood3 = [[Food alloc] initWithName:@"Yookhwe" andPrice:@"$23,00" withImage:@"nonvegan3.png" andSaleOff:@"-20%"];
    Food* nonVeganFood4 = [[Food alloc] initWithName:@"Kitfo Ethiopia" andPrice:@"$44,00" withImage:@"nonvegan4.png" andSaleOff:@"-15%"];
    Food* nonVeganFood6 = [[Food alloc] initWithName:@"Carne Apache" andPrice:@"$23,00" withImage:@"nonvegan6.png" andSaleOff:@"-10%"];
    
    Food* fastFood1 = [[Food alloc] initWithName:@"Subway" andPrice:@"$23,00" withImage:@"fastfood1.png" andSaleOff:@"-15%"];
    Food* fastFood3 = [[Food alloc] initWithName:@"Starbucks" andPrice:@"$53,00" withImage:@"fastfood3.png" andSaleOff:@"-10%"];
    Food* fastFood4 = [[Food alloc] initWithName:@"Burger King" andPrice:@"$44,00" withImage:@"fastfood4.png" andSaleOff:@"-20%"];
    Food* fastFood6 = [[Food alloc] initWithName:@"Vada Pav" andPrice:@"$23,00" withImage:@"fastfood6.png" andSaleOff:@"-10%"];
    
    Food* drink1 = [[Food alloc] initWithName:@"Caipirinha" andPrice:@"$41,00" withImage:@"drink1.png" andSaleOff:@"-20%"];
    Food* drink2 = [[Food alloc] initWithName:@"Yerba Mate" andPrice:@"$46,00" withImage:@"drink2.png" andSaleOff:@"-10%"];
    Food* drink4 = [[Food alloc] initWithName:@"Jigarthanda" andPrice:@"$25,00" withImage:@"drink4.png" andSaleOff:@"-15%"];
    Food* drink5 = [[Food alloc] initWithName:@"Cendol" andPrice:@"$53,00" withImage:@"drink5.png" andSaleOff:@"-10%"];
    
    arraySale = [[NSMutableArray alloc] initWithObjects:veganFood2,veganFood4,veganFood5,veganFood6,nonVeganFood1,nonVeganFood3,nonVeganFood4,nonVeganFood6,fastFood1,fastFood3,fastFood4,fastFood6,drink1,drink2,drink4,drink5, nil];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return arraySale.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SaleCustomCell *cell = (SaleCustomCell*)[tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    Food* food = [[Food alloc] init];
    food = arraySale[indexPath.row];
    
    cell.imgFood.image = food.image;
    cell.lblName.text = food.name;
    cell.lblPrice.text = food.price;
    cell.lblSale.text = food.saleOff;
    
    

    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Food* food = [[Food alloc] init];
    food = arraySale[indexPath.row];
    
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
