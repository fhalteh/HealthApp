//
//  NSDate+Utils.m
//  HealthApp
//
//  Created by FarisHalteh on 21/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import "NSDate+Utils.h"

@implementation NSDate (Utils)

- (NSInteger)getAge {
    NSDate* now = [NSDate date];
    NSDateComponents* ageComponents = [[NSCalendar currentCalendar]
                                       components:NSCalendarUnitYear
                                       fromDate:self
                                       toDate:now
                                       options:0];
    NSInteger age = [ageComponents year];
    return age;
}

@end
