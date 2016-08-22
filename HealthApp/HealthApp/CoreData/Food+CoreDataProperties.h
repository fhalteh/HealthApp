//
//  Food+CoreDataProperties.h
//  HealthApp
//
//  Created by FarisHalteh on 20/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Food.h"

NS_ASSUME_NONNULL_BEGIN

@interface Food (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *addedbyuser;
@property (nullable, nonatomic, retain) NSString *brand;
@property (nullable, nonatomic, retain) NSNumber *calories;
@property (nullable, nonatomic, retain) NSNumber *carbohydrates;
@property (nullable, nonatomic, retain) NSNumber *categoryid;
@property (nullable, nonatomic, retain) NSNumber *cholesterol;
@property (nullable, nonatomic, retain) NSNumber *custom;
@property (nullable, nonatomic, retain) NSNumber *defaultsize;
@property (nullable, nonatomic, retain) NSNumber *deleted;
@property (nullable, nonatomic, retain) NSNumber *downloaded;
@property (nullable, nonatomic, retain) NSNumber *fat;
@property (nullable, nonatomic, retain) NSNumber *fiber;
@property (nullable, nonatomic, retain) NSNumber *gramsperserving;
@property (nullable, nonatomic, retain) NSNumber *hidden;
@property (nullable, nonatomic, retain) NSString *language;
@property (nullable, nonatomic, retain) NSDate *lastupdated;
@property (nullable, nonatomic, retain) NSNumber *mlingram;
@property (nullable, nonatomic, retain) NSNumber *ocategoryid;
@property (nullable, nonatomic, retain) NSNumber *oid;
@property (nullable, nonatomic, retain) NSNumber *pcsingram;
@property (nullable, nonatomic, retain) NSString *pcstext;
@property (nullable, nonatomic, retain) NSNumber *potassium;
@property (nullable, nonatomic, retain) NSNumber *protein;
@property (nullable, nonatomic, retain) NSNumber *saturatedfat;
@property (nullable, nonatomic, retain) NSNumber *servingcategory;
@property (nullable, nonatomic, retain) NSNumber *showmeasurement;
@property (nullable, nonatomic, retain) NSNumber *showonlysametype;
@property (nullable, nonatomic, retain) NSNumber *sodium;
@property (nullable, nonatomic, retain) NSNumber *source_id;
@property (nullable, nonatomic, retain) NSNumber *sugar;
@property (nullable, nonatomic, retain) NSString *title;
@property (nullable, nonatomic, retain) NSNumber *typeofmeasurement;
@property (nullable, nonatomic, retain) NSNumber *unsaturatedfat;
@property (nullable, nonatomic, retain) FoodCategory *category;

@end

NS_ASSUME_NONNULL_END
