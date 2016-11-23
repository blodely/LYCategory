
Pod::Spec.new do |s|
  s.name             = 'LYCategory'
  s.version          = '1.2.4'
  s.summary          = 'The categories.'

  s.description      = <<-DESC
The categories for Objective-C.
                       DESC

  s.homepage         = 'https://github.com/blodely/LYCategory'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Luo Yu' => 'indie.luo@gmail.com' }
  s.source           = { :git => 'https://github.com/blodely/LYCategory.git', :tag => s.version.to_s }
  s.social_media_url = 'https://weibo.com/blodely'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LYCategory/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LYCategory' => ['LYCategory/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.frameworks = 'UIKit'

  # s.dependency 'AFNetworking', '~> 2.3'
end
