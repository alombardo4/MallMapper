//
//  MainMenuViewController.m
//  Mall Mapper
//
//  Created by Alec on 10/22/14.
//  Copyright (c) 2014 Alec. All rights reserved.
//

#import "MainMenuViewController.h"

@interface MainMenuViewController ()
{
    NSMutableArray *stores;
    NSMutableArray *deals;
}
@end

@implementation MainMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    stores = [[NSMutableArray alloc] init];
    deals = [[NSMutableArray alloc] init];
    [self.quickLinksCollectionView setScrollEnabled:NO];
    [self buildStores];
    [self buildDeals];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) buildDeals {
    [deals addObject:@"20% off all men's clothing at Gap"];
    [deals addObject:@"Save with a Macy's card"];
    [deals addObject:@"Free guacamole at Chipotle"];
    [deals addObject:@"Men's pants 15% off at J Crew"];
    [deals addObject:@"Buy one get one free at Godiva"];
    [deals addObject:@"10% off womens shoes at Dillards"];

}

- (void) buildStores {
    Store *macys = [[Store alloc] init];
    macys.name = @"Macy's";
    macys.description = @"A department store";
    macys.logo = [UIImage imageNamed:@"macys.png"];
    [stores addObject:macys];
    Store *chipotle = [[Store alloc] init];
    chipotle.name = @"Chipotle";
    chipotle.description = @"A mexican restaraunt";
    chipotle.logo = [UIImage imageNamed:@"chipotle.png"];
    [stores addObject:chipotle];
    Store *apple = [[Store alloc] init];
    apple.name = @"Apple";
    apple.description = @"Consumer electronics";
    apple.logo = [UIImage imageNamed:@"apple.png"];
    [stores addObject:apple];
    Store *gap = [[Store alloc] init];
    gap.name = @"Gap";
    gap.description = @"Men and women's clothing";
    gap.logo = [UIImage imageNamed:@"gap.png"];
    [stores addObject:gap];
    Store *godiva = [[Store alloc] init];
    godiva.name = @"Godiva";
    godiva.description = @"Chocolate store";
    godiva.logo = [UIImage imageNamed:@"godiva.png"];
    [stores addObject:godiva];
    Store *jcrew = [[Store alloc] init];
    jcrew.name = @"J Crew";
    jcrew.description = @"Men and women's clothing";
    jcrew.logo = [UIImage imageNamed:@"jcrew.png"];
    [stores addObject:jcrew];
}


#pragma mark - UICollectionView Datasource
// 1
- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
    return stores.count;
}
// 2
- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView {
    return 1;
}
// 3
- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"QuickLinkStore" forIndexPath:indexPath];
    UIImageView *image = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 80, 80)];
    Store *store = stores[indexPath.row];
    image.image = store.logo;
    [cell.contentView addSubview:image];
    return cell;
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
