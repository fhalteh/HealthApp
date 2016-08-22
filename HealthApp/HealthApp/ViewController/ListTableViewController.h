//
//  ListTableViewController.h
//  HealthApp
//
//  Created by FarisHalteh on 21/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import "DailyDiaryDelegate.h"
#import "Exercise.h"
#import "Food.h"
#import <UIKit/UIKit.h>

@interface ListTableViewController : UITableViewController

@property (nonatomic, weak) id<DailyDiaryDelegate> delegate;

@end
