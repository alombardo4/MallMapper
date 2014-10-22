//
//  MainMenuViewController.h
//  Mall Mapper
//
//  Created by Alec on 10/22/14.
//  Copyright (c) 2014 Alec. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Store.h"
@interface MainMenuViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate, UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *quickLinksCollectionView;
@property (weak, nonatomic) IBOutlet UITableView *nearbyDealsTableView;

@end
