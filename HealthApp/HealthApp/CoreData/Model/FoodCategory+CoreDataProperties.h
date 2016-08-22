//
//  Category+CoreDataProperties.h
//  HealthApp
//
//  Created by FarisHalteh on 20/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FoodCategory.h"

NS_ASSUME_NONNULL_BEGIN

@interface FoodCategory (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *category;
@property (nullable, nonatomic, retain) NSNumber *headcategoryid;
@property (nullable, nonatomic, retain) NSDate *lastupdated;
@property (nullable, nonatomic, retain) NSString *name_da;
@property (nullable, nonatomic, retain) NSString *name_de;
@property (nullable, nonatomic, retain) NSString *name_es;
@property (nullable, nonatomic, retain) NSString *name_fi;
@property (nullable, nonatomic, retain) NSString *name_fr;
@property (nullable, nonatomic, retain) NSString *name_it;
@property (nullable, nonatomic, retain) NSString *name_nl;
@property (nullable, nonatomic, retain) NSString *name_no;
@property (nullable, nonatomic, retain) NSString *name_pl;
@property (nullable, nonatomic, retain) NSString *name_pt;
@property (nullable, nonatomic, retain) NSString *name_ru;
@property (nullable, nonatomic, retain) NSString *name_sv;
@property (nullable, nonatomic, retain) NSNumber *oid;
@property (nullable, nonatomic, retain) NSNumber *photo_version;
@property (nullable, nonatomic, retain) NSNumber *servingscategory;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *food;

@end

@interface FoodCategory (CoreDataGeneratedAccessors)

- (void)addFoodObject:(NSManagedObject *)value;
- (void)removeFoodObject:(NSManagedObject *)value;
- (void)addFood:(NSSet<NSManagedObject *> *)values;
- (void)removeFood:(NSSet<NSManagedObject *> *)values;

@end

NS_ASSUME_NONNULL_END
