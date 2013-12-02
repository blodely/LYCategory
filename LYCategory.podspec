Pod::Spec.new do |s|

  s.name                 = ‘LYCategory’
  s.version              = ‘0.1.1’
  s.summary              = ‘Utility, Foundation categories.’

  s.homepage             = ‘https://github.com/blodely/LYCategory'
  s.license              = { :type => "MIT" }
  s.author              = { ‘Luo Yu’ => ‘indie.luo@gmail.com’ }

  s.source               = { :git => "https://github.com/blodely/LYCategory.git", :tag => “#{s.version}” }
  s.source_files         = ‘LYCategory/**’

  s.platform             = :ios, ‘5.0’
  s.requires_arc         = true

end
