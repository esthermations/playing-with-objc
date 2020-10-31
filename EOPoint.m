#import <math.h>

#import "EOPoint.h"

@implementation EOPoint

- (float)magnitude {
   return sqrt( _x * _x + _y * _y );
}

@end