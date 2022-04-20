require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "ReactNativeReactionsFb"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  ReactNativeReactionsFb
                   DESC
  s.homepage     = "https://github.com/author/ReactNativeReactionsFb"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/ReactNativeReactionsFb.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
  #s.dependency "others"
end

