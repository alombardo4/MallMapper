//
//  DirectoryViewController.h
//  Mall Mapper
//
//  Created by Alec on 11/3/14.
//  Copyright (c) 2014 Alec. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DirectoryViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
- (IBAction)viewChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *viewSwitcher;

@end
