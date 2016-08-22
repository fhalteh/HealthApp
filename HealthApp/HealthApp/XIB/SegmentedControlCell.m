//
//  SegmentedControlCell.m
//  HealthApp
//
//  Created by FarisHalteh on 21/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import "SegmentedControlCell.h"

@implementation SegmentedControlCell

- (void)awakeFromNib {
  // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
  [super setSelected:selected animated:animated];
}

- (void)configureWithDelegate:(id)delegate
                  firstOption:(NSString *)firstOption
                 secondOption:(NSString *)secondOption {
  [self.segmentedControl setTitle:firstOption forSegmentAtIndex:0];
  [self.segmentedControl setTitle:secondOption forSegmentAtIndex:1];
  [self.segmentedControl addTarget:delegate
                            action:@selector(segmentedControlValueChanged:)
                  forControlEvents:UIControlEventValueChanged];
}

+ (NSString *)identifier {
  return @"SegmentedControlCell";
}

@end
