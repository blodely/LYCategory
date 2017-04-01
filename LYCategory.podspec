
Pod::Spec.new do |s|
	s.name             = 'LYCategory'
	s.version          = '1.2.21'
	s.summary          = 'The categories.'

	s.description      = <<-DESC
The categories for Objective-C.
1.2.19
update mobile validation
1.2.20
extract gender from id number string
1.2.21
fix : deprecated encrption method
					   DESC

	s.homepage         = 'https://github.com/blodely/LYCategory'

	s.license          = { :type => 'MIT', :file => 'LICENSE' }
	s.author           = { 'Luo Yu' => 'indie.luo@gmail.com' }
	s.source           = { :git => 'https://github.com/blodely/LYCategory.git', :tag => s.version.to_s }
	s.social_media_url = 'https://weibo.com/blodely'

	s.ios.deployment_target = '8.0'

	s.source_files = 'LYCategory/Classes/_Foundation/*', 'LYCategory/Classes/_CoreLocation/*', 'LYCategory/Classes/**/*'
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
