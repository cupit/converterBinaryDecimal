//
//  convert.h
//  converter
//
//  Created by Maciej Cupial on 3/31/13.
//  Copyright (c) 2013 Maciej Cupial. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface convert : NSObject


-(long long)binaryToDecimal:(NSString *)binaryString;
-(NSString *)decimalToBinary:(long long)decimalNumber;


@end
