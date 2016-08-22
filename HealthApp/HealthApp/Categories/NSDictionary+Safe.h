//
//  NSDictionary+Safe.h
//  HealthApp
//
//  Created by FarisHalteh on 21/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Safe)

-(NSDictionary *)removeNullValues;

@end
