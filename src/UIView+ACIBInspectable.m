//
//  UIView+ACIBInspectable.m
//  Test
//
//  Created by ArtemMac on 01.10.14.
//  Copyright (c) 2014 Artem Chabannyi. All rights reserved.
//

#import "UIView+ACIBInspectable.h"

#define RADIANS_TO_DEGREES(radians) ((radians) * (180.0 / M_PI))
#define DEGREES_TO_RADIANS(degrees) ((degrees) * (M_PI / 180))

@implementation UIView (ACIBInspectable)

- (void)setRotationAngle:(CGFloat)rotationAngle {
    CGAffineTransform transform = self.transform;
    transform = CGAffineTransformRotate(transform, DEGREES_TO_RADIANS(rotationAngle));
    self.transform = transform;
}

- (CGFloat)rotationAngle {
    CGFloat radians = atan2f(self.transform.b, self.transform.a);
    CGFloat degrees = RADIANS_TO_DEGREES(radians);
    return degrees;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    self.layer.cornerRadius = cornerRadius;
}

- (CGFloat)cornerRadius {
    return self.layer.cornerRadius;
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)borderWidth {
    return self.layer.borderWidth;
}

- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}

- (UIColor *)borderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

@end
