//
//  CLLocation+Speed.h
//  LYCategory
//
//  Created by Luo Yu on 2016-03-25.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//  Email: indie.luo@gmail.com
//

#import <CoreLocation/CoreLocation.h>

@interface CLLocation (Speed)

/**
 coordinate converter: from b-a-i-d-u GPS to GCJ-02 GPS

 @param coordinateBd Bai-du GPS coordinate
 @return GCJ-02 coordinate
 */
+ (CLLocationCoordinate2D)convertFromBDToGCJ02:(CLLocationCoordinate2D)coordinateBd;

+ (CLLocationCoordinate2D)convertFromGCJ02ToBD:(CLLocationCoordinate2D)coordinateGCJ02;

+ (CLLocationCoordinate2D)convertFromWGS84ToGCJ02:(CLLocationCoordinate2D)coordinateWGS84;

@end
