

Pod::Spec.new do |spec|

 spec.name         = "SwiftTags"
  spec.version      = "1.0.0"
  spec.summary      = "A CocoaPods library written in Swift"

  spec.description  = <<-DESC
This CocoaPods library helps you perform calculation.
                   DESC

  spec.homepage     = "https://github.com/smoothCiph/SwiftTags"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "rohan" => "m.rohan29@gmail.com" }

  spec.ios.deployment_target = "12.1"
  spec.swift_version = "4.2"

  spec.source        = { :git => "https://github.com/smoothCiph/SwiftTags.git", :tag => "#{spec.version}" }
  spec.source_files  = "SwiftTags/**/*.{h,m,swift}"

end
