#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    if (![array.firstObject isKindOfClass:[NSArray class]]) {
        NSLog(@"first element is not an array");
        return @[];
    }
    
    NSMutableArray *arrOfNums = [NSMutableArray new];
    NSMutableArray *arrOfStrs = [NSMutableArray new];
    
    for (NSArray *subArray in array) {
        for (id item in subArray) {
            if ([subArray.firstObject isKindOfClass:[NSNumber class]]) {
                [arrOfNums addObject:item];
            } else {
                [arrOfStrs addObject:item];
            }
        }
    }
    
    if ([arrOfStrs isEqualToArray:@[]]) {
        return [[NSArray arrayWithArray:arrOfNums] sortedArrayUsingSelector:@selector(compare:)];
    }
    
    if ([arrOfNums isEqualToArray:@[]]) {
        return [[NSArray arrayWithArray:arrOfStrs] sortedArrayUsingSelector:@selector(compare:)];
    }
    
    NSArray *sortedNumArr = [arrOfNums sortedArrayUsingSelector:@selector(compare:)];
    NSEnumerator *enumer = [[[NSArray arrayWithArray:arrOfStrs] sortedArrayUsingSelector:@selector(compare:)] reverseObjectEnumerator];
    
    NSMutableArray *combiningArr = [NSMutableArray new];
    [combiningArr addObject:sortedNumArr];
    [combiningArr addObject:[enumer allObjects]];
    
    return combiningArr;
//    return [NSArray arrayWithArray:combiningArr];
}

@end
