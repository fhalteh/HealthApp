//
//  MainViewController.m
//  HealthApp
//
//  Created by FarisHalteh on 21/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import "AppDelegate.h"
#import "CoreDataManager.h"
#import "DailyDiary+CoreDataProperties.h"
#import "DailyDiary.h"
#import "Exercise.h"
#import "Food.h"
#import "ListTableViewController.h"
#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController {
    DailyDiary* currentDailyDiary;
    NSNumber* bmr;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.navigationController setNavigationBarHidden:YES];
    self.diaryList.delegate = self;
    self.diaryList.dataSource = self;
    self.diaryList.allowsSelection = NO;

    [self loadData];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleDefault;
}

- (void)loadData
{
    if (!bmr) {
        bmr = [[CoreDataManager instance] getBMROfCurrentUser];
    }

    if (!currentDailyDiary) {
        currentDailyDiary = [[CoreDataManager instance] getDailyDiaryForCurrentDay];
        [APP_DELEGATE saveContext];
    }

    self.caloriesConsumed.text = [NSString stringWithFormat:@"%@", currentDailyDiary.consumedCalories];
    self.caloriesBurnt.text = [NSString stringWithFormat:@"%@", currentDailyDiary.burntCalories];
    NSInteger caloriesLeft = [self calculateCaloriesLeft];
    float progress = 1;
    if (caloriesLeft > 0) {
        progress = (float)(bmr.integerValue - caloriesLeft) / bmr.integerValue;
    }

    [self.progressBar setProgress:progress animated:YES];
    self.caloriesLeft.text = [NSString stringWithFormat:@"%ld", caloriesLeft];
}

- (NSInteger)calculateCaloriesLeft
{
    NSNumber* consumedCalories = currentDailyDiary.consumedCalories;
    NSNumber* burntCalories = currentDailyDiary.burntCalories;
    return bmr.doubleValue + burntCalories.doubleValue - consumedCalories.doubleValue;
}

#pragma mark - UITableViewDelegate and Datasource

- (NSInteger)numberOfSectionsInTableView:(UITableView*)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (section) {
    case 0:
        return currentDailyDiary.foods.count;
        break;
    case 1:
        return currentDailyDiary.exercises.count;
        break;

    default:
        break;
    }
    return 0;
}

- (NSString*)tableView:(UITableView*)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section) {
    case 0:
        return @"Food intake";
        break;
    case 1:
        return @"Exerises";
    default:
        return nil;
        break;
    }
}

- (CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath
{
    return 55;
}

- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"DefaultCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"DefaultCell"];
    }

    switch (indexPath.section) {
    case 0: {
        // foods?
        Food* foodObject = [currentDailyDiary.foods.allObjects objectAtIndex:indexPath.row];
        cell.textLabel.text = foodObject.title;
        cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ Kcal | %@ | %@ grams per serving", foodObject.calories, foodObject.pcstext, foodObject.gramsperserving];
    } break;
    case 1: {
        Exercise* exercise = [currentDailyDiary.exercises.allObjects objectAtIndex:indexPath.row];
        cell.textLabel.text = exercise.title;
        cell.detailTextLabel.text = [NSString stringWithFormat:@"%d Kcal per 30 minutes", (exercise.calories.intValue * 30)];
    } break;

    default:
        break;
    }

    return cell;
}

- (IBAction)addItem:(id)sender
{
    ListTableViewController* viewController = [[ListTableViewController alloc] initWithStyle:UITableViewStylePlain];
    viewController.delegate = self;
    UINavigationController* navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    navigationController.navigationBar.topItem.title = @"Add item";
    [self.navigationController presentViewController:navigationController animated:YES completion:nil];
}

#pragma mark - DailyDiaryDelegate methods

- (void)addFoodToDailyDiary:(Food*)food
{
    [[CoreDataManager instance] addFood:food toDailyDiary:currentDailyDiary];
    [APP_DELEGATE saveContext];
    [self.diaryList reloadData];
    [self loadData];
}

- (void)addExerciseToDailyDiary:(Exercise*)exercise
{
    [[CoreDataManager instance] addExercise:exercise toDailyDiary:currentDailyDiary];
    [APP_DELEGATE saveContext];
    [self.diaryList reloadData];
    [self loadData];
}

@end
