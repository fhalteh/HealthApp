//
//  ViewController.m
//  HealthApp
//
//  Created by FarisHalteh on 18/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import "AppDelegate.h"
#import "CoreDataManager.h"
#import "NSDate+Utils.h"
#import "NSString+Utils.h"
#import "ViewController.h"

typedef NS_ENUM(NSInteger, Gender) {
    GenderMale,
    GenderFemale
};

@interface ViewController ()

@end

@implementation ViewController {
    __weak IBOutlet UITextField* birthDate;
    NSDateFormatter* dateFormatter;

    NSDate* dob;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy-MM-dd";
}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];

    [super viewWillAppear:animated];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField*)textField
{
    [textField resignFirstResponder];
    return YES;
}
- (void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event
{
    [self.view endEditing:YES];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField*)textField
{
    if (textField.tag == 1) {
        [textField resignFirstResponder];
        UIDatePicker* datePicker = [[UIDatePicker alloc] initWithFrame:CGRectZero];
        datePicker.datePickerMode = UIDatePickerModeDate;
        datePicker.backgroundColor = [UIColor whiteColor];
        [datePicker addTarget:self action:@selector(onDatePickerValueChanged:) forControlEvents:UIControlEventValueChanged];
        [textField setInputView:datePicker];
        return YES;
    }

    return YES;
}

- (void)onDatePickerValueChanged:(UIDatePicker*)datePicker
{
    birthDate.text = [dateFormatter stringFromDate:datePicker.date];
    dob = datePicker.date;
}

- (IBAction)onContinuePressed:(id)sender
{
    if (!self.heightTextField.text || self.heightTextField.text.length == 0 || ![self.heightTextField.text isNumeric] || !self.weightTextField.text || self.weightTextField.text.length == 0 || ![self.weightTextField.text isNumeric] || !dob) {
        UIAlertAction* okButton = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Error" message:@"Make sure that you entered valid data" preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:okButton];
        [self presentViewController:alert animated:YES completion:nil];
        return;
    }

    NSString* genderString = self.genderSegmentedControl.selectedSegmentIndex == 0 ? @"Male" : @"Female";
    Gender gender = [self genderFromText:genderString];
    NSNumber* height = [self.heightTextField.text numericValue];
    NSNumber* weight = [self.weightTextField.text numericValue];

    NSInteger bmr = [self calculateBMRWithGender:gender Weight:weight height:height age:[dob getAge]];

    [[CoreDataManager instance] addUserToDatabaseWithBirthDate:dob gender:genderString height:height weight:weight bmr:[NSNumber numberWithInteger:bmr]];
    [APP_DELEGATE saveContext];
}

#pragma mark - Helper methods

- (Gender)genderFromText:(NSString*)text
{
    return [text isEqualToString:@"Male"] ? GenderMale : GenderFemale;
}

- (NSInteger)calculateBMRWithGender:(Gender)gender Weight:(NSNumber*)weight height:(NSNumber*)height age:(NSInteger)age
{
    NSInteger bmr;
    switch (gender) {
    case GenderMale:
        bmr = (655 + (9.6 * weight.doubleValue) + (1.8 * height.doubleValue) - (4.7 * age));
        break;
    case GenderFemale:
        bmr = (66 + (13.7 * weight.doubleValue) + (5 * height.doubleValue) - (6.8 * age));
        break;
    default:
        bmr = 0;
        break;
    }
    return bmr;
}

@end
