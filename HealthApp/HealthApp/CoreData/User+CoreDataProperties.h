//
//  User+CoreDataProperties.h
//  HealthApp
//
//  Created by FarisHalteh on 21/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "User.h"

NS_ASSUME_NONNULL_BEGIN

@interface User (CoreDataProperties)

@property (nullable, nonatomic, retain) NSDate *birthDate;
@property (nullable, nonatomic, retain) NSString *gender;
@property (nullable, nonatomic, retain) NSNumber *height;
@property (nullable, nonatomic, retain) NSNumber *weight;
@property (nullable, nonatomic, retain) NSNumber *basalMetabolicRate;
@property (nullable, nonatomic, retain) NSSet<DailyDiary *> *dailyIntake;

@end

@interface User (CoreDataGeneratedAccessors)

- (void)addDailyIntakeObject:(DailyDiary *)value;
- (void)removeDailyIntakeObject:(DailyDiary *)value;
- (void)addDailyIntake:(NSSet<DailyDiary *> *)values;
- (void)removeDailyIntake:(NSSet<DailyDiary *> *)values;

@end

NS_ASSUME_NONNULL_END
