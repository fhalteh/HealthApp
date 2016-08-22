//
//  Exercise+CoreDataProperties.h
//  HealthApp
//
//  Created by FarisHalteh on 20/08/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Exercise.h"

NS_ASSUME_NONNULL_BEGIN

@interface Exercise (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *addedbyuser;
@property (nullable, nonatomic, retain) NSNumber *calories;
@property (nullable, nonatomic, retain) NSNumber *custom;
@property (nullable, nonatomic, retain) NSNumber *deleted;
@property (nullable, nonatomic, retain) NSNumber *downloaded;
@property (nullable, nonatomic, retain) NSNumber *hidden;
@property (nullable, nonatomic, retain) NSDate *lastupdated;
@property (nullable, nonatomic, retain) NSString *name_da;
@property (nullable, nonatomic, retain) NSString *name_de;
@property (nullable, nonatomic, retain) NSString *name_es;
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
@property (nullable, nonatomic, retain) NSString *title;

@end

NS_ASSUME_NONNULL_END
