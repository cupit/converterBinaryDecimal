//
//  convert.m
//  converter
//
//  Created by Maciej Cupial on 3/31/13.
//  Copyright (c) 2013 Maciej Cupial. All rights reserved.
//

#import "convert.h"

@implementation convert

-(long long)binaryToDecimal:(NSString *)binaryString
{
    int indexChar; //badamy czy 0 czy 1
    long long value = 0;
    
    for (long long index = 0; index<[binaryString length]; index++) {
        indexChar = [binaryString characterAtIndex:index];
        
        if (indexChar == '1')
            {
            value += 1;
            }
        
        if (index+1 < [binaryString length])
            {
            value = value<<1;
            }
    }
    
    return value;
    
}
-(NSString *)decimalToBinary:(long long)decimalNumber
{
    long long logBinVal = log(decimalNumber)/log(2);
    NSString *value = @"";
    
    for (long long k = logBinVal; k>=0; k--) {
        
        long long power = powl(2, k);
        
        
        if (power <= decimalNumber) {
            decimalNumber-= power;
            
            value = [value stringByAppendingString:@"1"];
            
        } else {
            value = [value stringByAppendingString:@"0"];
        }
    }
    
    return value;
    
}

@end
