# LYCategory

The categories for iOS app dev.

### Support 996.ICU.

[![996.icu](https://img.shields.io/badge/link-996.icu-red.svg)](https://996.icu)

### 1. Installation

#### Cocoapods

use it from official trunk:

```sh
pod 'LYCategory'
```

#### Alternative

Just put this↓ in your Podfile, then run 'pod install'.

~~~ruby
# LYCategory
pod 'LYCategory', :git => 'https://github.com/blodely/LYCategory.git'
# ↑ BLEEDING EDGE VERSION
~~~

#### Files

Or you can just download and unzip the file, put them in your project.

### 2. features

#### ① Foundation

#### NSString

~~~objective-c

// You can check string input

[@"" isEmpty];
// YES

[@"indie.luo@gmail.com" isEmail];
// YES

[@"13986210000" isPhoneNumber];
// YES

[@"139-8621-3146" phoneNumber];
// @"13986213146"

// Or you can trim space charactor:
[@"lalala this is a string" trimSpace];

// Or just..
[@"   lalala try this." trimStartSpace];

// Search string
-caseInsensitive:
-caseSensitive:

// compare
-isEqualWithFormat:

// Find out if it's in a array of strings.
[@"carrot" isOneOfThem:@[@"flower", @"carrot", @"potato",]];
// YES

// Calculate displaying size
[@"bla bla bla" widthWithFont:[UIFont systemFontOfSize:12]];

// Encryption
-base64
-md5
-md5Lowercase16
// ..etc

// Convert to NSDate object
[@"2016-06-29" dateWithFormat:@"yyyy-MM-dd"];
// return NSDate object

-dateWithFormat:andTimezone:
-dateWithFormat:dateStyle:

// Convert Arabic number to Chinese localized string
[NSString numberToChinese:11];
// 十一

~~~

#### NSArray

~~~objective-c

// Reverse array
NSArray *things = @[@"log", @"grass", @"coal",];
[things reversed];

~~~


#### NSURL

~~~objective-c
// Creation
NSInteger tid = 10504;
[NSURL URLWithFormat:@"http://luoyu.space/tid=%@", @(tid)];

~~~

#### NSUserDefaults

##### Speed
~~~objective-c
[NSUserDefaults setObject:@"thatMustBeTrue" forKey:@"space.luoyu.testApp.config.isThatTrue"];
~~~

<br>

#### ② UIKit

#### UITextField

Check if textField is empty string or not, use method `-isEmpty`.

#### UITextView

To check custom string as textview's placeholder, method `-isEmptyWithPlaceholder:`.

#### UIView

To take view snapshot, use `-imageShot` method.

#### UIImage

To shrink image size down, use `-resize:` method.

<br>
and etc.

### 3. License (MIT)

> 
> The MIT License (MIT)
> 
> Copyright (c) 2013~2018 骆昱(Luo Yu). All rights reserved.
> 
> Permission is hereby granted, free of charge, to any person obtaining a copy of
> this software and associated documentation files (the "Software"), to deal in
> the Software without restriction, including without limitation the rights to
> use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
> the Software, and to permit persons to whom the Software is furnished to do so,
> subject to the following conditions:
> 
> The above copyright notice and this permission notice shall be included in all
> copies or substantial portions of the Software.
> 
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
> FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
> COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
> IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
> CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
> 

Please READ THE LICENSE above!


blodely/LYCategory is licensed under the<br>MIT License|Permissions|Limitations|Conditions
:---|:---|:---|:---
A short and simple permissive license <br>with conditions <br>only requiring preservation <br>of copyright and license notices. <br>Licensed works, modifications, <br>and larger works may be distributed <br>under different terms <br>and without source code.|✅Commercial use<br>✅Modification<br>✅Distribution<br>✅Private use|❎Liability<br>❎Warranty|License and <br>copyright notice
This is not legal advice.|


### 4. Author

骆昱 ([Luo Yu](http://luoyu.space))

Email: [indie.luo@gmail.com](mailto:indie.luo@gmail.com)

<br><br><br>
