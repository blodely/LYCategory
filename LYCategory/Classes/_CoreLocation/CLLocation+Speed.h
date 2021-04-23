//
//  CLLocation+Speed.h
//  LYCategory
//
//  Created by Luo Yu on 2016-03-25.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2016 骆昱(Luo Yu). All rights reserved.
//
//	Permission is hereby granted, free of charge, to any person obtaining a copy of
//	this software and associated documentation files (the "Software"), to deal in
//	the Software without restriction, including without limitation the rights to
//	use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//	the Software, and to permit persons to whom the Software is furnished to do so,
//	subject to the following conditions:
//
//	The above copyright notice and this permission notice shall be included in all
//	copies or substantial portions of the Software.
//
//	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//	FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//	COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//	IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//	CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
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

/**
 distance on latitudinal
 
 @param fromCoordinate start coordinate
 @param toCoordinate target coordinate
 @return distance on latitudinal in meters
 */
+ (CLLocationDistance)distanceLatitudinalMetersFrom:(CLLocationCoordinate2D)fromCoordinate to:(CLLocationCoordinate2D)toCoordinate;

/**
 distance on longitudinal in meters
 
 @param fromCoordinate start coordinate
 @param toCoordinate target coordinate
 @return distance on longitudinal in meters
 */
+ (CLLocationDistance)distanceLongitudinalMetersFrom:(CLLocationCoordinate2D)fromCoordinate to:(CLLocationCoordinate2D)toCoordinate;

@end
