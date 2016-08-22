//
//  FoodCategoriesTableViewController.h
//  HealthApp
//
//  Created by FarisHalteh on 21/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import "DailyDiaryDelegate.h"
#import <UIKit/UIKit.h>

@interface FoodCategoriesTableViewController : UITableViewController

@property (nonatomic, weak) id<DailyDiaryDelegate> delegate;

@end
