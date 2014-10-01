//
//  UIView+ACIBInspectable.h
//  Test
//
//  Created by ArtemMac on 01.10.14.
//  Copyright (c) 2014 Artem Chabannyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ACIBInspectable)

@property (nonatomic, assign) IBInspectable CGFloat rotationAngle;
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic, assign) IBInspectable CGFloat borderWidth;
@property (nonatomic, strong) IBInspectable UIColor *borderColor;

@end
