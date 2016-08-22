//
//  DailyDiary+CoreDataProperties.h
//  HealthApp
//
//  Created by FarisHalteh on 21/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "DailyDiary.h"
#import "User.h"

NS_ASSUME_NONNULL_BEGIN

@interface DailyDiary (CoreDataProperties)

@property (nullable, nonatomic, retain) NSDate *date;
@property (nullable, nonatomic, retain) NSNumber *consumedCalories;
@property (nullable, nonatomic, retain) NSNumber *burntCalories;
@property (nullable, nonatomic, retain) NSSet<Food *> *foods;
@property (nullable, nonatomic, retain) NSSet<Exercise *> *exercises;
@property (nullable, nonatomic, retain) User *user;

@end

@interface DailyDiary (CoreDataGeneratedAccessors)

- (void)addFoodsObject:(Food *)value;
- (void)removeFoodsObject:(Food *)value;
- (void)addFoods:(NSSet<Food *> *)values;
- (void)removeFoods:(NSSet<Food *> *)values;

- (void)addExercisesObject:(Exercise *)value;
- (void)removeExercisesObject:(Exercise *)value;
- (void)addExercises:(NSSet<Exercise *> *)values;
- (void)removeExercises:(NSSet<Exercise *> *)values;

@end

NS_ASSUME_NONNULL_END
