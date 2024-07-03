Pod::Spec.new do |s|
  s.name         = "react-native-live-activity"
  s.version      = "0.0.1"
  s.summary      = "React Native module for Apple's Live Activity"
  s.description  = <<-DESC
                    A React Native module that allows interaction with Apple's Live Activity feature.
                    DESC
  s.homepage     = "https://your-homepage-here"
  s.license      = "MIT"
  s.author       = { "Your Name" => "your-email@example.com" }
  s.platform     = :ios, "13.4"
  s.source       = { :path => "." }
  s.source_files  = "ios/**/*.{swift,h,m}"
  s.dependency   "React"
  s.swift_version = "5.0"
end
