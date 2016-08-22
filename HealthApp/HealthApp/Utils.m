//
//  Utils.m
//  HealthApp
//
//  Created by FarisHalteh on 18/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import "Utils.h"

@implementation Utils

+ (NSDictionary *)getDictionaryForJSONResource:(NSString *)name {
    NSString *pathName =
    [[NSBundle mainBundle] pathForResource:name
                                    ofType:@"json"];
    NSData *data = [[NSData alloc] initWithContentsOfFile:pathName];
    NSError *error;
    NSDictionary *dictionary =
    [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    
    if (error) {
        NSLog(@"Error: %@", error.localizedDescription);
        return nil;
    } else {
        return dictionary;
    }
}


@end
