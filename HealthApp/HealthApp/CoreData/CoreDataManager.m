//
//  CoreDataManager.m
//  HealthApp
//
//  Created by FarisHalteh on 18/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import "CoreDataManager.h"
#import "Food.h"
#import "FoodCategory.h"
#import "Food+CoreDataProperties.h"
#import "AppDelegate.h"
#import "NSString+Utils.h"
#import "Exercise.h"
#import "Exercise+CoreDataProperties.h"
#import "NSDictionary+Safe.h"
#import "User+CoreDataProperties.h"
#import "DailyDiary+CoreDataProperties.h"
#import "User.h"

@implementation CoreDataManager

static CoreDataManager *coreDataManager;

+ (CoreDataManager *)instance {
    @synchronized(self) {
        if (!coreDataManager) {
            coreDataManager = [[CoreDataManager alloc] init];
        }
    }
    return coreDataManager;
}


- (void)addCategoryDictionary:(NSDictionary *)categoryDictionary {
    categoryDictionary = [categoryDictionary removeNullValues];
    NSString *category = [categoryDictionary objectForKey:@"category"];
    NSNumber *headcategoryid = [categoryDictionary objectForKey:@"headcategoryid"];
    NSString *name_fi = [categoryDictionary objectForKey:@"name_fi"];
    NSString *name_it = [categoryDictionary objectForKey:@"name_it"];
    NSString *name_pt = [categoryDictionary objectForKey:@"name_pt"];
    NSString *name_no = [categoryDictionary objectForKey:@"name_no"];
    NSNumber *servingscategory = [categoryDictionary objectForKey:@"servingscategory"];
    NSString *name_pl = [categoryDictionary objectForKey:@"name_pl"];
    NSString *name_da = [categoryDictionary objectForKey:@"name_da"];
    NSNumber *oid = [categoryDictionary objectForKey:@"oid"];
    NSNumber *photo_version = [categoryDictionary objectForKey:@"photo_version"];
    NSString *lastupdated = [categoryDictionary objectForKey:@"lastupdated"];
    NSString *name_nl = [categoryDictionary objectForKey:@"name_nl"];
    NSString *name_fr = [categoryDictionary objectForKey:@"name_fr"];
    NSString *name_ru = [categoryDictionary objectForKey:@"name_ru"];
    NSString *name_sv = [categoryDictionary objectForKey:@"name_sv"];
    NSString *name_es = [categoryDictionary objectForKey:@"name_es"];
    NSString *name_de = [categoryDictionary objectForKey:@"name_de"];
    
    FoodCategory *categoryObject = [NSEntityDescription insertNewObjectForEntityForName:@"FoodCategory"
                                                                 inManagedObjectContext:APP_DELEGATE.managedObjectContext];
    categoryObject.category = category;
    categoryObject.headcategoryid = headcategoryid;
    categoryObject.name_fi = name_fi;
    categoryObject.name_it = name_it;
    categoryObject.name_pt = name_pt;
    categoryObject.name_no = name_no;
    categoryObject.servingscategory = servingscategory;
    categoryObject.name_pl = name_pl;
    categoryObject.name_da = name_da;
    categoryObject.oid = oid;
    categoryObject.photo_version = photo_version;
    categoryObject.lastupdated = [NSDate dateWithTimeIntervalSince1970:(lastupdated.integerValue)];
    categoryObject.name_nl = name_nl;
    categoryObject.name_fr = name_fr;
    categoryObject.name_ru = name_ru;
    categoryObject.name_sv = name_sv;
    categoryObject.name_es = name_es;
    categoryObject.name_de = name_de;
    
}

- (void)addFoodDictionary:(NSDictionary *)foodDictionary {
    foodDictionary = [foodDictionary removeNullValues];
    NSNumber *downloaded = [foodDictionary objectForKey:@"downloaded"];
    NSNumber *pcsingram = [foodDictionary objectForKey:@"pcsingram"];
    NSString *language = [foodDictionary objectForKey:@"language"];
    NSNumber *source_id = [foodDictionary objectForKey:@"source_id"];
    NSNumber *showmeasurement = [foodDictionary objectForKey:@"showmeasurement"];
    NSNumber *cholesterol = [foodDictionary objectForKey:@"cholesterol"];
    NSNumber *gramsperserving = [foodDictionary objectForKey:@"gramsperserving"];
    NSNumber *categoryid = [foodDictionary objectForKey:@"categoryid"];
    NSNumber *sugar = [foodDictionary objectForKey:@"sugar"];
    NSNumber *fiber = [foodDictionary objectForKey:@"fiber"];
    NSNumber *mlingram = [foodDictionary objectForKey:@"mlingram"];
    NSString *pcstext = [foodDictionary objectForKey:@"pcstext"];
    NSNumber *lastupdated = [foodDictionary objectForKey:@"lastupdated"];
    NSNumber *addedbyuser = [foodDictionary objectForKey:@"addedbyuser"];
    NSNumber *fat = [foodDictionary objectForKey:@"fat"];
    NSNumber *sodium = [foodDictionary objectForKey:@"sodium"];
    NSNumber *deleted = [foodDictionary objectForKey:@"deleted"];
    NSNumber *ocategoryid = [foodDictionary objectForKey:@"ocategoryid"];
    NSNumber *hidden = [foodDictionary objectForKey:@"hidden"];
    NSNumber *custom = [foodDictionary objectForKey:@"custom"];
    NSNumber *calories = [foodDictionary objectForKey:@"calories"];
    NSNumber *oid = [foodDictionary objectForKey:@"oid"];
    NSNumber *servingcategory = [foodDictionary objectForKey:@"servingcategory"];
    NSNumber *saturatedfat = [foodDictionary objectForKey:@"saturatedfat"];
    NSNumber *potassium = [foodDictionary objectForKey:@"potassium"];
    NSString *brand = [foodDictionary objectForKey:@"brand"];
    NSNumber *carbohydrates = [foodDictionary objectForKey:@"carbohydrates"];
    NSNumber *typeofmeasurement = [foodDictionary objectForKey:@"typeofmeasurement"];
    NSString *title = [foodDictionary objectForKey:@"title"];
    NSNumber *protein = [foodDictionary objectForKey:@"protein"];
    NSNumber *defaultsize = [foodDictionary objectForKey:@"defaultsize"];
    NSNumber *showonlysametype = [foodDictionary objectForKey:@"showonlysametype"];
    NSNumber *unsaturatedfat = [foodDictionary objectForKey:@"unsaturatedfat"];
    
    Food *foodObject = [NSEntityDescription insertNewObjectForEntityForName:@"Food"
                                                     inManagedObjectContext:APP_DELEGATE.managedObjectContext];
    
    foodObject.downloaded = downloaded;
    foodObject.pcsingram = pcsingram;
    foodObject.language = language;
    foodObject.source_id = source_id;
    foodObject.showmeasurement = showmeasurement;
    foodObject.cholesterol = cholesterol;
    foodObject.gramsperserving = gramsperserving;
    foodObject.categoryid = categoryid;
    foodObject.sugar = sugar;
    foodObject.fiber = fiber;
    foodObject.mlingram = mlingram;
    foodObject.pcstext = pcstext;
    foodObject.lastupdated = [NSDate dateWithTimeIntervalSince1970:(lastupdated.integerValue)];
    foodObject.addedbyuser = addedbyuser;
    foodObject.fat = fat;
    foodObject.sodium = sodium;
    foodObject.deleted = deleted;
    foodObject.ocategoryid = ocategoryid;
    foodObject.hidden = hidden;
    foodObject.custom = custom;
    foodObject.calories = calories;
    foodObject.oid = oid;
    foodObject.servingcategory = servingcategory;
    foodObject.saturatedfat = saturatedfat;
    foodObject.potassium = potassium;
    foodObject.brand = brand;
    foodObject.carbohydrates = carbohydrates;
    foodObject.typeofmeasurement = typeofmeasurement;
    foodObject.title = title;
    foodObject.protein = protein;
    foodObject.defaultsize = defaultsize;
    foodObject.showonlysametype = showonlysametype;
    foodObject.unsaturatedfat = unsaturatedfat;
    
    // Set the category
    FoodCategory *category = [self getCategoryWithId:categoryid];
    foodObject.category = category;
}

- (FoodCategory *)getCategoryWithId:(NSNumber *)oid {
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity =
    [NSEntityDescription entityForName:@"FoodCategory" inManagedObjectContext:[APP_DELEGATE managedObjectContext]];
    [request setEntity:entity];
    
    NSPredicate *predicate =
    [NSPredicate predicateWithFormat:@"oid=%@", oid];
    [request setPredicate:predicate];
    
    NSError *error = nil;
    NSMutableArray *mutableFetchResults = [[[APP_DELEGATE managedObjectContext] executeFetchRequest:request error:&error] mutableCopy];
    if (mutableFetchResults == nil || mutableFetchResults.count < 1) {
        NSLog(@"Error fetching Category object: %@\n%@", [error localizedDescription], [error userInfo]);
        return nil;
    } else {
        return [mutableFetchResults objectAtIndex:0];
    }
}

-(void)addExerciseDictionary:(NSDictionary *)exerciseDictionary {
    exerciseDictionary = [exerciseDictionary removeNullValues];
    NSString *name_pl = [exerciseDictionary objectForKey:@"name_pl"];
    NSNumber *hidden = [exerciseDictionary objectForKey:@"hidden"];
    NSNumber *deleted = [exerciseDictionary objectForKey:@"deleted"];
    NSNumber *downloaded = [exerciseDictionary objectForKey:@"downloaded"];
    NSString *name_da = [exerciseDictionary objectForKey:@"name_da"];
    NSNumber *photo_version = [exerciseDictionary objectForKey:@"photo_version"];
    NSNumber *custom = [exerciseDictionary objectForKey:@"custom"];
    NSString *name_pt = [exerciseDictionary objectForKey:@"name_pt"];
    NSNumber *oid = [exerciseDictionary objectForKey:@"oid"];
    NSString *name_no = [exerciseDictionary objectForKey:@"name_no"];
    NSString *name_sv = [exerciseDictionary objectForKey:@"name_sv"];
    NSString *name_es = [exerciseDictionary objectForKey:@"name_es"];
    NSString *lastupdated = [exerciseDictionary objectForKey:@"lastupdated"];
    NSString *name_ru = [exerciseDictionary objectForKey:@"name_ru"];
    NSNumber *addedbyuser = [exerciseDictionary objectForKey:@"addedbyuser"];
    NSString *name_de = [exerciseDictionary objectForKey:@"name_de"];
    NSString *title = [exerciseDictionary objectForKey:@"title"];
    NSString *name_fr = [exerciseDictionary objectForKey:@"name_fr"];
    NSString *name_nl = [exerciseDictionary objectForKey:@"name_nl"];
    NSNumber *calories = [exerciseDictionary objectForKey:@"calories"];
    NSString *name_it = [exerciseDictionary objectForKey:@"name_it"];
    
    Exercise *exerciseObject = [NSEntityDescription insertNewObjectForEntityForName:@"Exercise"
                                                             inManagedObjectContext:APP_DELEGATE.managedObjectContext];
    
    exerciseObject.name_pl = name_pl;
    exerciseObject.hidden = hidden;
    exerciseObject.deleted = deleted;
    exerciseObject.downloaded = downloaded;
    exerciseObject.name_da = name_da;
    exerciseObject.photo_version = photo_version;
    exerciseObject.custom = custom;
    exerciseObject.name_pt = name_pt;
    exerciseObject.oid = oid;
    exerciseObject.name_no = name_no;
    exerciseObject.name_sv = name_sv;
    exerciseObject.name_es = name_es;
    exerciseObject.lastupdated = [NSDate dateWithTimeIntervalSince1970:(lastupdated.integerValue)];
    exerciseObject.name_ru = name_ru;
    exerciseObject.addedbyuser = addedbyuser;
    exerciseObject.name_de = name_de;
    exerciseObject.title = title;
    exerciseObject.name_fr = name_fr;
    exerciseObject.name_nl = name_nl;
    exerciseObject.calories = calories;
    exerciseObject.name_it = name_it;
}

- (void)addUserToDatabaseWithBirthDate:(NSDate *)birthDate gender:(NSString *)gender height:(NSNumber *)height weight:(NSNumber *)weight bmr:(NSNumber *)bmr {
    User *userObject = [NSEntityDescription insertNewObjectForEntityForName:@"User"
                                                             inManagedObjectContext:APP_DELEGATE.managedObjectContext];
    userObject.birthDate = birthDate;
    userObject.gender = gender;
    userObject.height = height;
    userObject.weight = weight;
    userObject.basalMetabolicRate = bmr;
}

- (NSNumber *)getBMROfCurrentUser {
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity =
    [NSEntityDescription entityForName:@"User" inManagedObjectContext:APP_DELEGATE.managedObjectContext];
    
    [request setEntity:entity];
    
    NSError *error = nil;
    NSArray *fetchResults = [APP_DELEGATE.managedObjectContext executeFetchRequest:request error:&error];
    if (fetchResults == nil || fetchResults.count < 1) {
        NSLog(@"No User found in persistant store");
        return nil;
    }
    User *foundUser = [fetchResults firstObject];
    return foundUser.basalMetabolicRate;
}

- (User *)getCurrentUser {
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity =
    [NSEntityDescription entityForName:@"User" inManagedObjectContext:APP_DELEGATE.managedObjectContext];
    
    [request setEntity:entity];
    
    NSError *error = nil;
    NSArray *fetchResults = [APP_DELEGATE.managedObjectContext executeFetchRequest:request error:&error];
    if (fetchResults == nil || fetchResults.count < 1) {
        NSLog(@"No User found in persistant store");
        return nil;
    }
    return [fetchResults firstObject];
}

- (NSArray *)getFoodCategories {
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity =
    [NSEntityDescription entityForName:@"FoodCategory" inManagedObjectContext:APP_DELEGATE.managedObjectContext];
    
    [request setEntity:entity];
    
    NSError *error = nil;
    NSArray *fetchResults = [APP_DELEGATE.managedObjectContext executeFetchRequest:request error:&error];
    if (fetchResults == nil || fetchResults.count < 1) {
        NSLog(@"No food categories found in persistant store");
        return nil;
    }
    return fetchResults;
}

-(NSArray *)getFoodInCategory:(FoodCategory *)foodCategory {
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity =
    [NSEntityDescription entityForName:@"Food" inManagedObjectContext:APP_DELEGATE.managedObjectContext];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"category = %@", foodCategory];

    [request setEntity:entity];
    [request setPredicate:predicate];
    
    NSError *error = nil;
    NSArray *fetchResults = [APP_DELEGATE.managedObjectContext executeFetchRequest:request error:&error];
    if (fetchResults == nil || fetchResults.count < 1) {
        NSLog(@"No foods in this category found in persistant store");
        return nil;
    }
    return fetchResults;
}

- (DailyDiary *)getDailyDiaryForCurrentDay {
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity =
    [NSEntityDescription entityForName:@"DailyDiary" inManagedObjectContext:APP_DELEGATE.managedObjectContext];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *now = [NSDate date];
    NSDate *startDate = [calendar dateBySettingHour:0  minute:0  second:0  ofDate:now options:0];
    NSDate *endDate   = [calendar dateBySettingHour:23 minute:59 second:59 ofDate:now options:0];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(date >= %@) AND (date <= %@)", startDate, endDate];

    [request setEntity:entity];
    [request setPredicate:predicate];
    
    NSError *error = nil;
    NSArray *fetchResults = [APP_DELEGATE.managedObjectContext executeFetchRequest:request error:&error];
    if (fetchResults == nil || fetchResults.count < 1) {
        NSLog(@"No DailyDiary found in persistant store");
        DailyDiary *dailyDiary = [NSEntityDescription insertNewObjectForEntityForName:@"DailyDiary" inManagedObjectContext:APP_DELEGATE.managedObjectContext];
        dailyDiary.date = [NSDate date];
        dailyDiary.consumedCalories = [NSNumber numberWithInt:0];
        dailyDiary.burntCalories = [NSNumber numberWithInt:0];
        dailyDiary.user = [self getCurrentUser];
        return dailyDiary;
    }
    return [fetchResults firstObject];
}

- (NSArray *)getExercises {
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity =
    [NSEntityDescription entityForName:@"Exercise" inManagedObjectContext:APP_DELEGATE.managedObjectContext];
    
    [request setEntity:entity];
    
    NSError *error = nil;
    NSArray *fetchResults = [APP_DELEGATE.managedObjectContext executeFetchRequest:request error:&error];
    if (fetchResults == nil || fetchResults.count < 1) {
        NSLog(@"No Exercises found in persistant store");
        return nil;
    }
    return fetchResults;
}

- (void)addFood:(Food *)food toDailyDiary:(DailyDiary *)dailyDiary{
    Food *foodInContext = (Food *)[APP_DELEGATE.managedObjectContext objectWithID:food.objectID];
    DailyDiary *dailyDiaryInContext = (DailyDiary *)[APP_DELEGATE.managedObjectContext objectWithID:dailyDiary.objectID];
    NSInteger caloriesConsumed = dailyDiaryInContext.consumedCalories ? dailyDiaryInContext.consumedCalories.doubleValue + foodInContext.calories.doubleValue : foodInContext.calories.doubleValue;
    dailyDiaryInContext.consumedCalories = [NSNumber numberWithInteger:caloriesConsumed];
    [dailyDiaryInContext addFoodsObject:foodInContext];
}

- (void)addExercise:(Exercise *)exercise toDailyDiary:(DailyDiary *)dailyDiary{
    Exercise *exerciseInContext = (Exercise *)[APP_DELEGATE.managedObjectContext objectWithID:exercise.objectID];
    DailyDiary *dailyDiaryInContext = (DailyDiary *)[APP_DELEGATE.managedObjectContext objectWithID:dailyDiary.objectID];
    NSInteger caloriesBurnt = dailyDiaryInContext.burntCalories ? dailyDiaryInContext.burntCalories.doubleValue + (exerciseInContext.calories.doubleValue * 30) : (exerciseInContext.calories.doubleValue * 30);
    dailyDiaryInContext.burntCalories = [NSNumber numberWithInteger:caloriesBurnt];
    [dailyDiaryInContext addExercisesObject:exerciseInContext];
}

@end
