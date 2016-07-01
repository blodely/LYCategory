Pod::Spec.new do |s|

  s.name         = "LYCategory"
  s.version      = "1.2.0"
  s.summary      = "The category."
  s.description  = <<-DESC
  THE category.
                   DESC

  s.homepage     = "http://luoyu.space/hub/lib-lycategory"

  s.license      = "MIT"

  s.author             = { "Luo Yu" => "indie.luo@gmail.com" }
  s.social_media_url   = "http://weibo.com/blodely"

  s.platform     = :ios
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/blodely/LYCategory.git", :tag => "#{s.version}" }

  s.source_files  = "LYCategory", "LYCategory/**/*.{h,m}"
  s.exclude_files = "LYCategory.xcodeproj", "LYCategoryLib", "LYCategorySample"
  
  s.requires_arc = true

end
