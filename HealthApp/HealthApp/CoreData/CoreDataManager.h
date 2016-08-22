//
//  CoreDataManager.h
//  HealthApp
//
//  Created by FarisHalteh on 18/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DailyDiary, User, FoodCategory, Food, Exercise;

@interface CoreDataManager : NSObject

+ (CoreDataManager *)instance;

- (void)addCategoryDictionary:(NSDictionary *)categoryDictionary;
- (void)addFoodDictionary:(NSDictionary *)foodDictionary;
- (void)addExerciseDictionary:(NSDictionary *)exercise;
- (void)addUserToDatabaseWithBirthDate:(NSDate *)birthDate gender:(NSString *)gender height:(NSNumber *)height weight:(NSNumber *)weight bmr:(NSNumber *)bmr;
- (DailyDiary *)getDailyDiaryForCurrentDay;
- (NSNumber *)getBMROfCurrentUser;
- (User *)getCurrentUser;
- (NSArray *)getFoodCategories;
-(NSArray *)getFoodInCategory:(FoodCategory *)foodCategory;
- (NSArray *)getExercises;
- (void)addFood:(Food *)food toDailyDiary:(DailyDiary *)dailyDiary;
- (void)addExercise:(Exercise *)exercise toDailyDiary:(DailyDiary *)dailyDiary;

@end
