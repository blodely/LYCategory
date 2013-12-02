Pod::Spec.new do |s|
  s.name                 = "LYCategory"
  s.version              = "0.1.1"
  s.summary              = "Utility, Foundation categories."
  s.homepage             = "https://github.com/blodely/LYCategory"
  s.license              = { :type => "MIT" }
  s.authors              = { "Luo Yu" => "indie.luo@gmail.com" }
  s.source               = { :git => "https://github.com/blodely/LYCategory.git", :tag => s.version.to_s }
  s.platform             = :ios, "5.0"
  s.source_files         = "LYCategory/"
  s.private_header_files = "LYCategory/*Private.h"
  s.framework            = "CoreData"
  s.requires_arc         = true
end
