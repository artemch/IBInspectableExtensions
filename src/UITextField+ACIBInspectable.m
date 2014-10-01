//
//  UITextField+ACIBInspectable.m
//  Test
//
//  Created by ArtemMac on 01.10.14.
//  Copyright (c) 2014 Artem Chabannyi. All rights reserved.
//

#import "UITextField+ACIBInspectable.h"

@implementation UITextField (ACIBInspectable)

@dynamic placeholderColor;

- (void)setPlaceholderColor:(UIColor *)placeholderColor {
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:self.placeholder.length > 0 ? self.placeholder : @"" attributes:@{NSForegroundColorAttributeName: placeholderColor}];
    self.attributedPlaceholder = attributedString;
}

@end
