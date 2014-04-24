//
//  NSString+ANDYSizes.m
//
//  Created by Elvis Nunez on 4/24/14.
//  Copyright (c) 2014 Elvis Nunez. All rights reserved.
//

#import "NSString+ANDYSizes.h"

@implementation NSString (ANDYSizes)

+ (CGFloat)heightForString:(NSString *)string width:(CGFloat)width font:(UIFont *)font
{
    CGSize size = [string sizeWithFont:font
                     constrainedToSize:CGSizeMake(width, 1000.0f) lineBreakMode:NSLineBreakByWordWrapping];
    return size.height;
}

+ (CGFloat)heightForString:(NSString *)string font:(UIFont *)font
{
    CGSize size = [string sizeWithFont:font
                     constrainedToSize:CGSizeMake(1000.0f, 1000.0f) lineBreakMode:NSLineBreakByWordWrapping];
    return size.height;
}

+ (CGFloat)widthForString:(NSString *)string font:(UIFont *)font
{
    CGSize size = [string sizeWithFont:font
                     constrainedToSize:CGSizeMake(1000.0f, 1000.0f) lineBreakMode:NSLineBreakByWordWrapping];
    return size.width;
}

@end
