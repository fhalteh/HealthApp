//
//  FoodTableViewController.m
//  HealthApp
//
//  Created by FarisHalteh on 21/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import "CoreDataManager.h"
#import "Food.h"
#import "FoodTableViewController.h"

@interface FoodTableViewController ()

@end

@implementation FoodTableViewController {
    FoodCategory* foodCategory;
    NSArray* foods;
}

- (instancetype)initWithFoodCategory:(FoodCategory*)category
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        foodCategory = category;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.title = @"Food";

    foods = [[CoreDataManager instance] getFoodInCategory:foodCategory];
    if (!foods) {
        foods = [NSArray new];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView*)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return foods.count;
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

    Food* foodObject = [foods objectAtIndex:indexPath.row];
    cell.textLabel.text = foodObject.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ Kcal | %@ | %@ grams per serving", foodObject.calories, foodObject.pcstext, foodObject.gramsperserving];
    return cell;
}

- (void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{
    if (self.delegate) {
        Food* foodObject = [foods objectAtIndex:indexPath.row];
        [self.delegate addFoodToDailyDiary:foodObject];
        [self.navigationController dismissViewControllerAnimated:YES completion:nil];
    }
}

@end
