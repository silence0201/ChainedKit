Pod::Spec.new do |s|
  s.name         = "ChainedKit"
  s.version      = "1.0"
  s.summary      = "Chained Code"
  s.description  = <<-DESC
                   An Easy way to Chain Code

                   DESC

  s.homepage     = "https://github.com/silence0201/ChainedKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Silence" => "374619540@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/silence0201/ChainedKit.git", :tag => "1.0" }
  s.source_files  = "ChainedKit", "ChainedKit/**/*.{h,m}"
  s.exclude_files = "ChainedKit/Exclude"
  s.public_header_files = "ChainedKit/**/*.h"
  s.requires_arc = true
end
