//
//  ExercisesTableViewController.m
//  HealthApp
//
//  Created by FarisHalteh on 21/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import "CoreDataManager.h"
#import "Exercise.h"
#import "ExercisesTableViewController.h"

@interface ExercisesTableViewController ()

@end

@implementation ExercisesTableViewController {
    NSArray* exercises;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    exercises = [[CoreDataManager instance] getExercises];
    if (!exercises) {
        exercises = [NSArray array];
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

- (CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath
{
    return 55;
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return exercises.count;
}

- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"DefaultCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"DefaultCell"];
    }

    Exercise* exercise = [exercises objectAtIndex:indexPath.row];
    cell.textLabel.text = exercise.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d Kcal per 30 minutes", (exercise.calories.intValue * 30)];
    return cell;
}

- (void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{
    if (self.delegate) {
        Exercise* exercise = [exercises objectAtIndex:indexPath.row];
        [self.delegate addExerciseToDailyDiary:exercise];
        [self.navigationController dismissViewControllerAnimated:YES completion:nil];
    }
}

@end
