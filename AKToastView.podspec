Pod::Spec.new do |s|
  s.name         = “AKToastView”
  s.version      = “0.0.1”
  s.summary      = “iOS toast view (Swift).”
  s.homepage     = "https://github.com/need70/AKToastView.git"
  s.license      = "MIT"
  s.author    	 = “Andrew Kramar”
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/need70/AKToastView.git", :tag => s.version.to_s, :branch => "master"}
  s.framework    = "UIKit"
  s.requires_arc = true
end