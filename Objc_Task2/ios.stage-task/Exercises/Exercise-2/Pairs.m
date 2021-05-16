#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger counter = 0;
    for (NSInteger i = array.count - 1; i > 0; i--) {
        for (NSInteger j = i-1; j >= 0; j--) {
            if (array[i].integerValue - array[j].integerValue == number.integerValue) {
                counter++;
            }
        }
    }
    
    return counter;
}

@end
