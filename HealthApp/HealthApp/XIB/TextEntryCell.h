//
//  TextEntryCell.h
//  TeamSync
//
//  Created by FarisHalteh on 30/06/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TextEntryCell : UITableViewCell
@property(weak, nonatomic) IBOutlet UITextField *textField;

+ (NSString *)identifier;
- (void)configureWithDelegate:(id)delegate
                          tag:(NSInteger)tag
                        title:(NSString *)title
                  placeholder:(NSString *)placeHolder
              secureTextEntry:(BOOL)secureTextEntry
                returnKeyType:(UIReturnKeyType)returnKeyType;

- (void)configureWithDelegate:(id)delegate
                          tag:(NSInteger)tag
                        title:(NSString *)title
                         text:(NSString *)text;

@end
