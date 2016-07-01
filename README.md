# LYCategory

The categories.

## Installation

#### Cocoapods
Just put this↓ in your Podfile, then run 'pod install'.

~~~markdown
# LYCategory
pod 'LYCategory', :git=>'https://github.com/blodely/LYCategory.git'
~~~

#### Git submodule

Use command `git submodule`.

#### Files

Or you can just download and unzip the file, put them in your project.

## features

#### NSString
##### Input
~~~objective-c
[@"" isEmpty];
// YES

[@"indie.luo@gmail.com" isEmail];
// YES
~~~
##### Encrypt
~~~objective-c
-base64
-md5
-md5Lowercase16
...
~~~
##### Date
~~~objective-c
[@"2016-06-29" dateWithFormat:@"yyyy-MM-dd"];
// NSDate object
~~~
##### Size
~~~objective-c
[@"bla bla bla" widthWithFont:[UIFont systemFontOfSize:12]];
~~~
##### Speed
~~~objective-c
[@"carrot" isOneOfThem:@[@"flower", @"carrot", @"potato",]];
// YES
~~~

#### NSURL

##### Speed
~~~objective-c
NSInteger tid = 10504;
[NSURL URLWithFormat:@"http://luoyu.space/tid=%@", @(tid)];
~~~

#### NSUserDefaults

##### Speed
~~~objective-c
[NSUserDefaults setObject:@"thatMustBeTrue" forKey:@"space.luoyu.testApp.config.isThatTrue"];
~~~


##- 

and etc.
