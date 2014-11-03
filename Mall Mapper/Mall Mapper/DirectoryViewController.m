//
//  DirectoryViewController.m
//  Mall Mapper
//
//  Created by Alec on 11/3/14.
//  Copyright (c) 2014 Alec. All rights reserved.
//

#import "DirectoryViewController.h"

@interface DirectoryViewController ()
{
    NSMutableArray *stores;
    NSMutableArray *categories;
    BOOL isCategories;
}
@end

@implementation DirectoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    stores = [[NSMutableArray alloc] init];
    categories = [[NSMutableArray alloc] init];
    isCategories = YES;
    [self buildArrays];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) buildArrays {
    //categories
    [categories addObject:@"Women's Apparel"];
    [categories addObject:@"Men's Apparel"];
    [categories addObject:@"Children's Apparel"];
    [categories addObject:@"Women's Shoes"];
    [categories addObject:@"Men's Shoes"];
    [categories addObject:@"Food"];
    [categories addObject:@"Home"];
    [categories addObject:@"Electronics"];
    [categories addObject:@"Other"];
    
    //stores
    [stores addObject:@"Apple"];
    [stores addObject:@"Chipotle"];
    [stores addObject:@"GAP"];
    [stores addObject:@"Godiva"];
    [stores addObject:@"Dillards"];
    [stores addObject:@"J Crew"];
    [stores addObject:@"Macy's"];
    [stores addObject:@"Nordstrom"];
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section

{
    return isCategories == YES ? categories.count : stores.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DirectoryCell"];
    NSString *item;
    if (isCategories == YES)
    {
        item = categories[indexPath.row];
    }
    else
    {
        item = stores[indexPath.row];
    }
    cell.textLabel.text = item;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (isCategories == YES)
    {
        [self performSegueWithIdentifier:@"directoryToSubDir" sender:self];
    }
    else
    {
        [self performSegueWithIdentifier:@"directoryToDetails" sender:self];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)viewChanged:(id)sender {
    if (_viewSwitcher.selectedSegmentIndex == 1)
    {
        isCategories = NO;
        [self.tableView reloadData];
    }
    else
    {
        isCategories = YES;
        [self.tableView reloadData];
    }
}
@end
