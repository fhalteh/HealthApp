//
//  DailyDiary.h
//  HealthApp
//
//  Created by FarisHalteh on 21/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Exercise, Food;

NS_ASSUME_NONNULL_BEGIN

@interface DailyDiary : NSManagedObject

// Insert code here to declare functionality of your managed object subclass

@end

NS_ASSUME_NONNULL_END

#import "DailyDiary+CoreDataProperties.h"
