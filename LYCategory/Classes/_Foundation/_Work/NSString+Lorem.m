//
//	NSString+Lorem.m
//	LYCategory
//
//	Created by 骆昱 on 2021-12-24.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2013~2021 骆昱(Luo Yu). All rights reserved.
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

#import "NSString+Lorem.h"
#import <LYCategory/LYCategory.h>


@implementation NSString (Lorem)

+ (instancetype)loremipsum {
	return @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sodales ligula mauris, vel placerat tortor molestie nec. Nam efficitur, leo sit amet blandit egestas, diam erat volutpat metus, nec tempor orci lorem id leo. Nunc quis faucibus odio. Nullam rutrum pretium urna, at dignissim dui pretium eget. Nunc in neque in ligula cursus fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In vehicula nulla in laoreet congue. Sed pretium cursus elit, eu commodo nisl scelerisque sit amet. Praesent dictum vulputate rutrum. Suspendisse vitae est ut elit imperdiet elementum. Maecenas finibus aliquet est, a tempus orci mattis vitae. Vestibulum sit amet faucibus nisl. Nullam id odio nisl. Praesent congue auctor felis, feugiat vestibulum turpis tempor aliquet.";
}

+ (instancetype)loremipsumLong {
	return [NSString stringWithFormat:@"\
 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sodales ligula mauris, vel placerat tortor molestie nec. Nam efficitur, leo sit amet blandit egestas, diam erat volutpat metus, nec tempor orci lorem id leo. Nunc quis faucibus odio. Nullam rutrum pretium urna, at dignissim dui pretium eget. Nunc in neque in ligula cursus fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In vehicula nulla in laoreet congue. Sed pretium cursus elit, eu commodo nisl scelerisque sit amet. Praesent dictum vulputate rutrum. Suspendisse vitae est ut elit imperdiet elementum. Maecenas finibus aliquet est, a tempus orci mattis vitae. Vestibulum sit amet faucibus nisl. Nullam id odio nisl. Praesent congue auctor felis, feugiat vestibulum turpis tempor aliquet.\n\
Nam sagittis justo sed sodales facilisis. Pellentesque maximus risus in turpis fermentum imperdiet. Ut vitae arcu magna. In lobortis, metus at dictum convallis, magna diam mollis turpis, a pretium nunc magna vitae metus. Proin cursus lectus mi, sollicitudin ornare tellus tincidunt ut. Sed cursus neque tristique, ultrices elit a, porta quam. Nam facilisis laoreet augue sit amet ultrices. Nunc iaculis ut velit sit amet pretium. Aliquam erat volutpat. Aenean pharetra nibh non lectus rutrum, in tempus erat posuere.\n\
Morbi tristique justo eros, in tempor erat sollicitudin vel. Curabitur eget auctor neque, eu dignissim lorem. Nunc pretium magna vel magna cursus sodales. Donec sed elit non elit porttitor dictum vel nec leo. Morbi accumsan vitae ante quis suscipit. Mauris lacinia tortor non aliquam gravida. Aenean venenatis nisl dolor, ac rhoncus mauris ornare quis. Nulla at lacus nisl. Vivamus sed nisl justo.\n\
Pellentesque at purus augue. Sed elementum aliquam est, non mollis ante egestas ac. Praesent id nisl aliquet, euismod diam eu, facilisis turpis. Quisque consequat magna congue quam fringilla sodales. Proin hendrerit odio et tellus molestie, nec luctus tellus tempus. Nunc tempor augue iaculis magna interdum aliquet. Donec dignissim varius lacus sed fringilla. Nullam sit amet consequat lectus, a lobortis erat. Vivamus suscipit lorem ac urna ultrices, in malesuada ex dignissim. Sed ornare ligula et ligula lobortis, in venenatis libero elementum. Vestibulum ac tellus vulputate, viverra enim id, interdum sem. Proin pharetra purus consectetur ornare condimentum. Fusce non leo id est convallis posuere.\n\
Proin pulvinar congue lacus, quis laoreet ligula laoreet sit amet. Quisque at nisl non risus vehicula mollis. In hac habitasse platea dictumst. Ut eget placerat nibh, vitae viverra massa. Nunc tristique sollicitudin ex, semper bibendum erat consectetur sed. Aenean vel rutrum nunc, in porttitor eros. Sed id ornare purus, ut placerat purus.\n\
Vivamus molestie et erat et cursus. Nullam vel neque vel metus pellentesque dignissim ac in dui. Proin pharetra ligula ac dui elementum condimentum. Nullam hendrerit ante sed neque sagittis ornare. Vivamus ut magna ligula. Nulla lobortis nec nisi nec molestie. Nam vitae nunc ante. Nullam vitae nisi a est semper accumsan. Ut feugiat tempus magna, vitae pharetra erat malesuada vitae. Nam et ex id ex dapibus venenatis. Cras ornare ac ligula quis dictum. Etiam ultricies risus sapien, quis cursus ligula luctus a. In aliquam auctor laoreet.\n\
Cras egestas, metus tempor imperdiet consequat, urna magna ultricies metus, quis porta nulla enim id ligula. Duis vulputate scelerisque justo vestibulum consequat. Donec commodo accumsan erat, nec eleifend metus egestas at. Ut sodales sodales neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus iaculis tortor at est consequat congue. Sed at lacus et sapien tristique dapibus. Pellentesque eros est, placerat ac vestibulum eget, ultricies quis ligula. Pellentesque tempus augue odio, at pharetra leo ullamcorper in. Aliquam erat volutpat. Ut sed placerat nibh. Phasellus vehicula cursus nulla, id rhoncus nunc commodo non. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris molestie mattis lacus sed ullamcorper."];
}

@end
