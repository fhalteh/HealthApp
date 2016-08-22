//
//  MainViewController.h
//  HealthApp
//
//  Created by FarisHalteh on 21/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DailyDiaryDelegate.h"

@interface MainViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, DailyDiaryDelegate>
@property (weak, nonatomic) IBOutlet UILabel *caloriesLeft;
@property (weak, nonatomic) IBOutlet UILabel *caloriesConsumed;
@property (weak, nonatomic) IBOutlet UILabel *caloriesBurnt;
@property (weak, nonatomic) IBOutlet UITableView *diaryList;
@property (weak, nonatomic) IBOutlet UIProgressView *progressBar;

@end
