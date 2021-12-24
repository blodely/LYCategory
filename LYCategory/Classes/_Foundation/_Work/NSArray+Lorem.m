//
//	NSArray+Lorem.m
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

#import "NSArray+Lorem.h"
#import <LYCategory/LYCategory.h>


@implementation NSArray (Lorem)

+ (instancetype)loremipsum {
	return @[
		@"Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
		@"Suspendisse at ligula aliquet, scelerisque augue dictum, pharetra turpis.",
		@"Nunc sollicitudin elit id lobortis dapibus.",
		@"Donec semper augue in scelerisque egestas.",
		@"Morbi eget justo cursus, viverra ipsum quis, ullamcorper libero.",
		@"Integer feugiat eros nec dolor tincidunt, et tempus nunc accumsan.",
		@"Sed quis ante non dui lobortis accumsan.",
	];
}

+ (instancetype)loremipsumMore {
	return @[
		@"Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
		@"Suspendisse at ligula aliquet, scelerisque augue dictum, pharetra turpis.",
		@"Nunc sollicitudin elit id lobortis dapibus.",
		@"Donec semper augue in scelerisque egestas.",
		@"Morbi eget justo cursus, viverra ipsum quis, ullamcorper libero.",
		@"Integer feugiat eros nec dolor tincidunt, et tempus nunc accumsan.",
		@"Sed quis ante non dui lobortis accumsan.",
		@"Vivamus quis felis iaculis, sodales massa ut, porta urna.",
		@"In faucibus quam nec auctor molestie.",
		@"Nulla id ligula nec tortor porta rhoncus vel sed magna.",
		
		@"Nulla sit amet mauris a felis tincidunt placerat.",
		@"Integer egestas mi ut nulla consequat sollicitudin nec ac odio.",
		@"Cras aliquam elit ut suscipit faucibus.",
		@"Proin euismod sapien eu tortor ornare suscipit.",
		@"Pellentesque in arcu condimentum, pretium nisl vel, tincidunt felis.",
		@"Integer mattis erat sit amet ultrices lacinia.",
		@"Proin ut risus vel orci faucibus aliquet a ut ligula.",
		@"Pellentesque nec est pharetra ligula efficitur commodo viverra ac lacus.",
		@"Proin elementum eros ut neque feugiat, vitae convallis mauris blandit.",
		@"Phasellus maximus magna vulputate ante eleifend, non egestas massa vehicula.",
		
		@"In molestie purus lacinia tincidunt egestas.",
		@"Sed efficitur massa in enim posuere gravida.",
		@"Quisque at ligula venenatis neque rutrum congue.",
		@"Fusce aliquet lacus ut purus ornare, eget vestibulum metus rutrum.",
		@"Phasellus at orci pulvinar, tincidunt nibh ac, vestibulum leo.",
		@"Nunc sed augue tristique, pellentesque quam eu, ornare ex.",
		@"Curabitur iaculis erat et lectus eleifend, in ultricies est sollicitudin.",
		@"Sed eu orci eget nisi lacinia tincidunt sit amet ut dui.",
		@"Vestibulum quis elit at arcu suscipit consectetur faucibus et est.",
		@"Cras imperdiet elit non ante imperdiet, at finibus nisi maximus.",
		
		@"In congue erat ac purus bibendum interdum.",
		@"Integer ut erat condimentum, suscipit leo tempus, rhoncus eros.",
		@"Nunc malesuada elit ac congue scelerisque.",
		@"Donec eget diam id magna pharetra venenatis.",
		@"Maecenas in lacus a nisl finibus volutpat eu ut ex.",
		@"Etiam vulputate enim eu urna faucibus interdum.",
	];
}

@end
