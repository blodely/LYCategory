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
 coordinate converter: from Bai-du GPS to GCJ-02 GPS

 @param coordinateBd Bai-du GPS coordinate
 @return GCJ-02 coordinate
 */
+ (CLLocationCoordinate2D)convertFromBDToGCJ02:(CLLocationCoordinate2D)coordinateBd;

/**
 coodinate converter: from GCJ-02 GPS to Bai-du GPS

 @param coordinateGCJ02 GCJ-02 coordinate
 @return Bai-du GPS coordinate
 */
+ (CLLocationCoordinate2D)convertFromGCJ02ToBD:(CLLocationCoordinate2D)coordinateGCJ02;

/**
 coodinate converter: from WGS-84(real-world) GPS to GCJ-02 GPS

 @param coordinateWGS84 WGS-84(real-world) coordinate
 @return GCJ-02 coordinate
 */
+ (CLLocationCoordinate2D)convertFromWGS84ToGCJ02:(CLLocationCoordinate2D)coordinateWGS84;

/**
 distance calculator

 @param fromCoordinate start coordinate
 @param toCoordinate target coordinate
 @return distance in meter
 */
+ (CLLocationDistance)distanceFrom:(CLLocationCoordinate2D)fromCoordinate to:(CLLocationCoordinate2D)toCoordinate;

@end
