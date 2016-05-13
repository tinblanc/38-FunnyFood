//
//  AddressScreen.m
//  TFood
//
//  Created by Tin Blanc on 5/9/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "AddressScreen.h"
#import "AddressCustomCell.h"

@interface AddressScreen () <UITableViewDataSource,UITableViewDelegate>

@end

@implementation AddressScreen
{
    NSArray* arrayShop ;
    NSArray* arrayLocation;
    NSArray* arrayLogo;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    arrayShop = @[@"Starbucks", @"MC Donald's" , @"TGI Fridays"];
    arrayLocation = @[@"United States", @"Hong Kong", @"Burgers, Western"];
    arrayLogo = @[@"starbucks.png", @"mcdonalds.jpg",@"tgifridays.png"];
    
    
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    
    
    [self.tableView registerNib:[UINib nibWithNibName:@"AddressCustomCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return arrayShop.count;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    AddressCustomCell* cell = (AddressCustomCell*)[tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    cell.lblName.text = arrayShop[indexPath.row];
    cell.lblLocation.text = arrayLocation[indexPath.row];
    cell.imgLogo.image = [UIImage imageNamed:arrayLogo[indexPath.row]];
    
    

    
    return cell;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}


@end
