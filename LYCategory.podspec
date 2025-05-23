
Pod::Spec.new do |s|
	s.name             = 'LYCategory'
	s.version          = '1.15.0'
	s.summary          = 'The categories.'

	s.description      = <<-DESC
The categories for Objective-C.
1.2.19 update mobile validation
1.2.20 extract gender from id number string
1.2.21 fix : deprecated encrption method
1.2.22 refactoring
1.2.23 deployment target version iOS 7.x
1.2.24 distance
1.2.25 bring back object getter
1.2.26 color
1.2.34 image api
1.2.42 top view controller getter
1.12.0 support Xcode 12, set lowest deployment target to 9.0
1.13.0 set lowest deployment target to 11.0
1.14.0 set lowest deployment target 12.0
1.15.0 set lowest deployment target 15.0. remove md5 related methods.
					   DESC

	s.homepage         = 'https://github.com/blodely/LYCategory'

	s.license          = { :type => 'MIT', :file => 'LICENSE' }
	s.author           = { 'Luo Yu' => 'indie.luo@gmail.com' }
	s.source           = { :git => 'https://github.com/blodely/LYCategory.git', :tag => s.version.to_s }
	s.social_media_url = 'https://weibo.com/blodely'

	s.ios.deployment_target = '15.0'

	s.source_files = 'LYCategory/Classes/_Foundation/*', 'LYCategory/Classes/_Const/*', 'LYCategory/Classes/_CoreLocation/*', 'LYCategory/Classes/**/*'
	s.ios.source_files = 'LYCategory/Classes/_UIKit/*'

	# s.resource_bundles = {
	#   'LYCategory' => ['LYCategory/Assets/*.png']
	# }

	# s.public_header_files = 'Pod/Classes/**/*.h'
	# s.frameworks = 'UIKit', 'MapKit'
	s.ios.frameworks = 'UIKit'
	s.frameworks = 'CoreLocation'

	# s.dependency 'AFNetworking', '~> 2.3'
end
