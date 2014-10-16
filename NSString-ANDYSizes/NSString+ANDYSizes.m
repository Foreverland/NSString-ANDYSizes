//
//  NSString+ANDYSizes.m
//
//  Created by Elvis Nunez on 4/24/14.
//  Copyright (c) 2014 Elvis Nunez. All rights reserved.
//

#import "NSString+ANDYSizes.h"

@implementation NSString (ANDYSizes)

- (CGFloat)heightUsingFont:(UIFont *)font andWidth:(CGFloat)width
{
    NSDictionary *attributes = @{ NSFontAttributeName : font };
    CGRect rect = [self boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX)
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                  attributes:attributes
                                     context:nil];
    return CGRectGetHeight(rect);
}

- (CGFloat)heightUsingFont:(UIFont *)font
{
    NSDictionary *attributes = @{ NSFontAttributeName : font };
    CGRect rect = [self boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX)
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                  attributes:attributes
                                     context:nil];
    return CGRectGetHeight(rect);
}

- (CGFloat)widthUsingFont:(UIFont *)font
{
    NSDictionary *attributes = @{ NSFontAttributeName : font };
    CGSize size = [self sizeWithAttributes:attributes];
    return size.width;
}

@end
