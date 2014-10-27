//
//  StoreDetailViewController.m
//  Mall Mapper
//
//  Created by Alec on 10/26/14.
//  Copyright (c) 2014 Alec. All rights reserved.
//

#import "StoreDetailViewController.h"

@interface StoreDetailViewController ()
{
    NSMutableArray *deals;
}
@end

@implementation StoreDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    deals = [[NSMutableArray alloc] init];
    [self buildDeals];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) buildDeals {
    [deals addObject:@"Save with a Macy's card"];
    [deals addObject:@"10% off everything with new Macy's card"];
    [deals addObject:@"Save on Nike apparel"];
    [deals addObject:@"Men's pants 15% off"];
}


#pragma - markup TableView Delegate Methods
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section

{
    
    return deals.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"QuickDealsText"];
    NSString *deal = deals[indexPath.row];
    cell.textLabel.text = deal;
    
    return cell;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
