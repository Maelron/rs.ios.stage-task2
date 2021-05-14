#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
   
    if ([numbersArray isEqualToArray:@[]] || !numbersArray) {
        return @"";
    }
    
    NSMutableString *tempStr = [NSMutableString new];
    NSInteger count;
    
    if (numbersArray.count < 4) {
        count = numbersArray.count;
    } else {
        count = 4;
    }
    
    for (int i = 0; i < count; i++) {
        
        if ([numbersArray[i] integerValue] < 0) {
            return @"Negative numbers are not valid for input.";
        }
        if ([numbersArray[i] integerValue] > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }
        
        [tempStr appendFormat:@"%@.", [numbersArray[i] stringValue]];
    }
    
    if (numbersArray.count < 4) {
        for (int i = 0; i < 4 - numbersArray.count; i++) {
            [tempStr appendFormat:@"%@.", @0];
        }
    }
    
    return [tempStr substringToIndex:tempStr.length - 1];
    
}

@end
