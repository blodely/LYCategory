//
//  CLLocation+Speed.m
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

#import "CLLocation+Speed.h"

@implementation CLLocation (Speed)

+ (CLLocationCoordinate2D)convertFromBDToGCJ02:(CLLocationCoordinate2D)coordinateBd {
	
	double xPi = M_PI  * 3000.0 / 180.0;
	
	double x = coordinateBd.longitude - 0.0065, y = coordinateBd.latitude - 0.006;
	double z = sqrt(x * x + y * y) - 0.00002 * sin(y * xPi);
	double theta = atan2(y, x) - 0.000003 * cos(x * xPi);

	return CLLocationCoordinate2DMake(z * sin(theta), z * cos(theta));
}

+ (CLLocationCoordinate2D)convertFromGCJ02ToBD:(CLLocationCoordinate2D)coordinateGCJ02 {
	
	double pi = 3.14159265358979324;
	
	long double z = sqrt(coordinateGCJ02.longitude * coordinateGCJ02.longitude + coordinateGCJ02.latitude * coordinateGCJ02.latitude) + 0.00002 * sqrt(coordinateGCJ02.latitude * pi);
	long double theta = atan2(coordinateGCJ02.latitude, coordinateGCJ02.longitude) + 0.000003 * cos(coordinateGCJ02.longitude * pi);

	return CLLocationCoordinate2DMake((z * sin(theta) + 0.006), (z * cos(theta) + 0.0065));
}

+ (CLLocationCoordinate2D)convertFromWGS84ToGCJ02:(CLLocationCoordinate2D)coordinateWGS84 {
	
	// IS OUT OF CHINA
	if (coordinateWGS84.longitude < 72.004 || coordinateWGS84.longitude > 137.8347 || coordinateWGS84.latitude < 0.8293 || coordinateWGS84.latitude > 55.8271) {
		return coordinateWGS84;
	}
	
	// IN CHINA
	
	double x = coordinateWGS84.longitude - 105.0;
	double y = coordinateWGS84.latitude - 35.0;
	
	double dLat = -100.0 + 2.0 * x + 3.0 * y + 0.2 * y * y + 0.1 * x * y + 0.2 * sqrt(fabs(x));
	dLat += (20.0 * sin(6.0 * x * M_PI) + 20.0 * sin(2.0 * x * M_PI)) * 2.0 / 3.0;
	dLat += (20.0 * sin(y * M_PI) + 40.0 * sin(y / 3.0 * M_PI)) * 2.0 / 3.0;
	dLat += (160.0 * sin(y / 12.0 * M_PI) + 320 * sin(y * M_PI / 30.0)) * 2.0 / 3.0;
	
	double dLong = 300.0 + x + 2.0 * y + 0.1 * x * x + 0.1 * x * y + 0.1 * sqrt(fabs(x));
	dLong += (20.0 * sin(6.0 * x * M_PI) + 20.0 * sin(2.0 * x * M_PI)) * 2.0 / 3.0;
	dLong += (20.0 * sin(x * M_PI) + 40.0 * sin(x / 3.0 * M_PI)) * 2.0 / 3.0;
	dLong += (150.0 * sin(x / 12.0 * M_PI) + 300.0 * sin(x / 30.0 * M_PI)) * 2.0 / 3.0;
	
	//
	// Krasovsky 1940
	//
	// a = 6378245.0, 1/f = 298.3
	// b = a * (1 - f)
	// ee = (a^2 - b^2) / a^2;
	double a = 6378245.0;
	double ee = 0.00669342162296594323;
	double pi = 3.14159265358979324;
	
	long double radLat = coordinateWGS84.latitude / 180.0 * pi;
	long double magic = sin(radLat);
	magic = 1 - ee * magic * magic;
	long double sqrtMagic = sqrt(magic);
	dLat = (dLat * 180.0) / ((a * (1 - ee)) / (magic * sqrtMagic) * M_PI);
	dLong = (dLong * 180.0) / (a / sqrtMagic * cos(radLat) * M_PI);
	
	return CLLocationCoordinate2DMake(coordinateWGS84.latitude + dLat, coordinateWGS84.longitude + dLong);
	
}

+ (CLLocationDistance)distanceFrom:(CLLocationCoordinate2D)fromCoordinate to:(CLLocationCoordinate2D)toCoordinate {
	
	CLLocation *fromLoc = [[CLLocation alloc] initWithLatitude:fromCoordinate.latitude longitude:fromCoordinate.longitude];
	CLLocation *toLoc = [[CLLocation alloc] initWithLatitude:toCoordinate.latitude longitude:toCoordinate.longitude];
	
	return [fromLoc distanceFromLocation:toLoc];
}

+ (CLLocationDistance)distanceLatitudinalMetersFrom:(CLLocationCoordinate2D)fromCoordinate to:(CLLocationCoordinate2D)toCoordinate {
	
	CLLocationDegrees sameLongitude = fromCoordinate.longitude;
	CLLocation *fromLoc = [[CLLocation alloc] initWithLatitude:fromCoordinate.latitude longitude:sameLongitude];
	CLLocation *toLoc = [[CLLocation alloc] initWithLatitude:toCoordinate.latitude longitude:sameLongitude];
	
	return [fromLoc distanceFromLocation:toLoc];
}

+ (CLLocationDistance)distanceLongitudinalMetersFrom:(CLLocationCoordinate2D)fromCoordinate to:(CLLocationCoordinate2D)toCoordinate {
	
	CLLocationDegrees sameLatitude = MIN(fromCoordinate.latitude, toCoordinate.latitude);
	
	CLLocation *fromLoc = [[CLLocation alloc] initWithLatitude:sameLatitude longitude:fromCoordinate.longitude];
	CLLocation *toLoc = [[CLLocation alloc] initWithLatitude:sameLatitude longitude:toCoordinate.longitude];
	
	return [fromLoc distanceFromLocation:toLoc];
}

@end
