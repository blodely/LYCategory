//
//  CLLocation+Speed.m
//  LYCategory
//
//  Created by Luo Yu on 2016-03-25.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//  Email: indie.luo@gmail.com
//

#import "CLLocation+Speed.h"

@implementation CLLocation (Speed)

+ (CLLocationCoordinate2D)convertToMarsGPS:(CLLocationCoordinate2D)coordinate {
	
	// IS OUT OF CHINA
	if (coordinate.longitude < 72.004 || coordinate.longitude > 137.8347) {
		return coordinate;
	}
		
	if (coordinate.latitude < 0.8293 || coordinate.latitude > 55.8271) {
		return coordinate;
	}
	
	// IN CHINA
	
	double x = coordinate.longitude - 105.0f;
	double y = coordinate.latitude - 35.0f;
	
	double dLat = -100.0 + 2.0 * x + 3.0 * y + 0.2 * y * y + 0.1 * x * y + 0.2 * sqrt(abs(x));
	dLat += (20.0 * sin(6.0 * x * M_PI) + 20.0 * sin(2.0 * x * M_PI)) * 2.0 / 3.0;
	dLat += (20.0 * sin(y * M_PI) + 40.0 * sin(y / 3.0 * M_PI)) * 2.0 / 3.0;
	dLat += (160.0 * sin(y / 12.0 * M_PI) + 320 * sin(y * M_PI / 30.0)) * 2.0 / 3.0;
	
	double dLong = 300.0 + x + 2.0 * y + 0.1 * x * x + 0.1 * x * y + 0.1 * sqrt(abs(x));
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
	
	double radLat = coordinate.latitude / 180.0 * M_PI;
	double magic = sin(radLat);
	magic = 1 - ee * magic * magic;
	double sqrtMagic = sqrt(magic);
	dLat = (dLat * 180.0) / ((a * (1 - ee)) / (magic * sqrtMagic) * M_PI);
	dLong = (dLong * 180.0) / (a / sqrtMagic * cos(radLat) * M_PI);
	
	return CLLocationCoordinate2DMake(coordinate.latitude + dLat, coordinate.longitude + dLong);
}

@end
