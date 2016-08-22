//
//  ViewController.h
//  HealthApp
//
//  Created by FarisHalteh on 18/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UISegmentedControl* genderSegmentedControl;
@property (weak, nonatomic) IBOutlet UITextField* heightTextField;
@property (weak, nonatomic) IBOutlet UITextField* weightTextField;

@end
