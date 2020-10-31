#import <objc/Object.h>

#import <stdio.h>
#import <stdlib.h>

#import "EOPoint.h"

int main( int argc, char *argv[] ) {

   if ( argc != 2 ) {
      puts( "Provide a number of Points to spawn." );
      return 1;
   }

   EOPoint **points     = nil;
   size_t    num_points = 0;

   sscanf( argv[1], "%zu", &num_points );
   printf( "num_points = %zu\n", num_points );

   points = calloc( num_points, sizeof( EOPoint * ) );

   for ( int i = 0; i < num_points; ++i ) {
      points[i] = [EOPoint new];
      [points[i] setX:(float) i];
      [points[i] setY:(float) i];
   }

   for ( int i = 0; i < num_points; ++i ) {
      printf( "points[%d] = {\n\tx = %f\n\ty = %f\n\t magnitude = %f\n}\n", i,
              [points[i] x], [points[i] y], [points[i] magnitude] );
   }

   return 0;
}