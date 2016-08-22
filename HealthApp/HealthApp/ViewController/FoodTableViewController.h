//
//  FoodTableViewController.h
//  HealthApp
//
//  Created by FarisHalteh on 21/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import "DailyDiaryDelegate.h"
#import "FoodCategory.h"
#import <UIKit/UIKit.h>

@interface FoodTableViewController : UITableViewController

@property (nonatomic, weak) id<DailyDiaryDelegate> delegate;

- (instancetype)initWithFoodCategory:(FoodCategory*)foodCategory;

@end
