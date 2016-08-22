//
//  ListTableViewController.m
//  HealthApp
//
//  Created by FarisHalteh on 21/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import "ExercisesTableViewController.h"
#import "FoodCategoriesTableViewController.h"
#import "ListTableViewController.h"

@implementation ListTableViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO];

    if (self.delegate) {
        UIBarButtonItem* backButton =
            [[UIBarButtonItem alloc] initWithTitle:@"Cancel"
                                             style:UIBarButtonItemStylePlain
                                            target:self
                                            action:@selector(cancel)];

        self.navigationItem.leftBarButtonItem = backButton;
    }
}

- (void)cancel
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView*)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"DefaultCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DefaultCell"];
    }

    switch (indexPath.row) {
    case 0:
        cell.textLabel.text = @"Food categories";
        break;
    case 1:
        cell.textLabel.text = @"Exercises";
        break;
    default:
        break;
    }

    return cell;
}

- (void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{
    switch (indexPath.row) {
    case 0: {
        FoodCategoriesTableViewController* viewController = [[FoodCategoriesTableViewController alloc] initWithStyle:UITableViewStylePlain];
        viewController.delegate = self.delegate;
        [self.navigationController pushViewController:viewController animated:YES];
    } break;
    case 1: {
        ExercisesTableViewController* viewController = [[ExercisesTableViewController alloc] initWithStyle:UITableViewStylePlain];
        viewController.delegate = self.delegate;
        [self.navigationController pushViewController:viewController animated:YES];

    } break;

    default:
        break;
    }
}

@end
