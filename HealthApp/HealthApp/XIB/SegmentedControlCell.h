//
//  SegmentedControlCell.h
//  HealthApp
//
//  Created by FarisHalteh on 21/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SegmentedControlCell : UITableViewCell
@property(weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

+ (NSString *)identifier;
- (void)configureWithDelegate:(id)delegate
                  firstOption:(NSString *)firstOption
                 secondOption:(NSString *)secondOption;

@end

@protocol SegmentedControlCellDelegate <NSObject>

- (void)segmentedControlValueChanged:(id)sender;

@end