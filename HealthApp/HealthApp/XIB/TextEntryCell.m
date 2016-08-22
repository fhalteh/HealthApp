//
//  TextEntryCell.m
//  TeamSync
//
//  Created by FarisHalteh on 30/06/16.
//  Copyright © 2016 FarisHalteh. All rights reserved.
//

#import "TextEntryCell.h"

@implementation TextEntryCell

- (void)awakeFromNib {
  // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
  [super setSelected:selected animated:animated];

  // Configure the view for the selected state
}

+ (NSString *)identifier {
  return @"TextEntryCell";
}

- (void)configureWithDelegate:(id)delegate
                          tag:(NSInteger)tag
                        title:(NSString *)title
                         text:(NSString *)text {
  self.textField.delegate = delegate;
  self.textField.tag = tag;
  self.textField.text = text;
}

- (void)configureWithDelegate:(id)delegate
                          tag:(NSInteger)tag
                        title:(NSString *)title
                  placeholder:(NSString *)placeHolder
              secureTextEntry:(BOOL)secureTextEntry
                returnKeyType:(UIReturnKeyType)returnKeyType {
  self.textField.delegate = delegate;
  self.textField.tag = tag;
  self.textField.placeholder = placeHolder;
  self.textField.returnKeyType = returnKeyType;
  self.textField.secureTextEntry = secureTextEntry;
}

@end
