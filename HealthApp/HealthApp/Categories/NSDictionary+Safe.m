//
//  NSDictionary+Safe.m
//  HealthApp
//
//  Created by FarisHalteh on 21/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import "NSDictionary+Safe.h"

@implementation NSDictionary (Safe)

-(NSDictionary *)removeNullValues
{
    NSMutableDictionary *mutDictionary = [self mutableCopy];
    NSMutableArray *keysToDelete = [NSMutableArray array];
    [mutDictionary enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        if (obj == [NSNull null])
        {
            [keysToDelete addObject:key];
        }
    }];
    [mutDictionary removeObjectsForKeys:keysToDelete];
    return [mutDictionary copy];
}

@end
