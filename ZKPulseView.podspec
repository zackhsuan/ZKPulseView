Pod::Spec.new do |s|

  s.name         = "ZKPulseView"
  s.version      = "0.0.4"
  s.summary      = "Simple iOS UIView Category to create a Pulse (Breathing light) Effect on your needs"
  
  s.author       = { "Zack Chung" => "zackhsuan@gmail.com" }
  
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.description  = <<-DESC
                   Display a pulse within a UIView

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/Oggerschummer/ZKPulseView"
  s.platform     = :ios
  s.source       = { :git => "https://github.com/Oggerschummer/ZKPulseView.git", :tag => "0.0.4" }
  s.source_files  = 'ZKPulseView/Class/**/*.{c,h,hh,m,mm}'
  s.frameworks  = "Foundation", "UIKit", "MessageUI"
  s.requires_arc = true

end
