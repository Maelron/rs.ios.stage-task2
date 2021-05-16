#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
    UInt8 reversedRes = 0;

    for (int i = 0; i < 8; i++) {
        reversedRes = reversedRes | (n&1) << (7 - i);
        n = n >> 1;
    }
    
    return reversedRes;
}
