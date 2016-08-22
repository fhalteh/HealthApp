//
//  FoodCategoriesTableViewController.m
//  HealthApp
//
//  Created by FarisHalteh on 21/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import "CoreDataManager.h"
#import "FoodCategoriesTableViewController.h"
#import "FoodCategory+CoreDataProperties.h"
#import "FoodTableViewController.h"

@interface FoodCategoriesTableViewController ()

@end

@implementation FoodCategoriesTableViewController {
    NSArray* foodCategories;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    foodCategories = [[CoreDataManager instance] getFoodCategories];
    if (!foodCategories) {
        foodCategories = [NSArray array];
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView*)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return foodCategories.count;
}

- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"DefaultCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DefaultCell"];
    }

    FoodCategory* category = [foodCategories objectAtIndex:indexPath.row];
    cell.textLabel.text = category.category;
    return cell;
}

- (void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{
    FoodCategory* category = [foodCategories objectAtIndex:indexPath.row];
    FoodTableViewController* tableViewController = [[FoodTableViewController alloc] initWithFoodCategory:category];
    tableViewController.delegate = self.delegate;
    [self.navigationController pushViewController:tableViewController animated:YES];
}

- (CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath
{
    return 55;
}

@end
