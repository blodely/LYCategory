//
//  NSDate+Random.m
//  LYCategory
//
//  Created by Luo Yu on 13/3/2023.
//

#import "NSDate+Random.h"
#import "NSString+Date.h"
#import "NSNumber+Random.h"


@implementation NSDate (Random)

+ (NSDate *)randomDateBetweenYear:(NSInteger)yearBegin toYear:(NSInteger)yearEnd {
    
    NSUInteger tinbe = [[[NSString stringWithFormat:@"%04ld-01-01", (long)yearBegin] dateWithFormat:@"yyyy-MM-dd"] timeIntervalSince1970];
    NSUInteger tinen = [[[NSString stringWithFormat:@"%04ld-01-01", (long)yearEnd] dateWithFormat:@"yyyy-MM-dd"] timeIntervalSince1970];
    
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:[NSNumber randomIntegerBetween:tinbe and:tinen]];
    
//    NSDate *date = [[NSString stringWithFormat:@"%@-%@-%@", @([NSNumber randomIntegerBetween:yearBegin and:yearEnd]), @([NSNumber randomIntegerBetween:1 and:12]), @([NSNumber randomIntegerBetween:1 and:31])] dateWithFormat:@"yyyy-MM-dd"];
    
    return date;
}

@end
