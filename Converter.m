//
//  Converter.m
//  Converter_CFT
//
//  Created by Student on 29.10.16.
//  Copyright © 2016 CFT. All rights reserved.
//

#import "Converter.h"

@interface Converter ()

@end

@implementation Converter

+(float)convertCurrency:(float)CountOfCurrency{
    float Rate = 62.5;
    return CountOfCurrency * Rate;
}
@end
