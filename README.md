# LYCategory

The categories.

## Installation

#### Cocoapods
Just put this↓ in your Podfile, then run 'pod install'.

~~~ruby
# LYCategory
pod 'LYCategory', :git=>'https://github.com/blodely/LYCategory.git'
~~~

Or

Have custom pod specs installed

~~~shell
pod repo add LYSpecs https://github.com/blodely/LYSpecs.git
~~~

then, add this↓ in your Podfile, then run 'pod install'.

~~~ruby
# LYCategory
pod 'LYCategory', '~> 1.2.5'
~~~

#### Git submodule

Use command `git submodule`.

#### Files

Or you can just download and unzip the file, put them in your project.

## features

#### Foundation

#### NSString

~~~objective-c

// You can check string input

[@"" isEmpty];
// YES

[@"indie.luo@gmail.com" isEmail];
// YES

[@"13986210000" isPhoneNumber];
// YES

[@"139-8621-0000" phoneNumber];
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

-
#### UIKit

#### UITextField

Check if textField is empty string or not, use method `-isEmpty`.

#### UITextView

To check custom string as textview's placeholder, method `-isEmptyWithPlaceholder:`.

#### UIView

To take view snapshot, use `-imageShot` method.

#### UIImage

To shrink image size down, use `-resize:` method.

-
and etc.
