//
//  NSString+Utils.m
//  HealthApp
//
//  Created by FarisHalteh on 20/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import "NSString+Utils.h"

@implementation NSString (Utils)

- (NSNumber *)numericValue {
    return [NSNumber numberWithInteger: [self integerValue]];
}

- (BOOL)isNumeric {
    NSCharacterSet* notDigits = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    if ([self rangeOfCharacterFromSet:notDigits].location == NSNotFound)
    {
        return YES;
    }
    return NO;
}

@end
