Pod::Spec.new do |s|
         s.name         = "common"
         s.version      = "0.0.1"
         s.summary      = "all kinds of categoried for ios develop"
         s.homepage     = "https://github.com/xiaobadao/common"
         s.author       = { "CommonUtility" => "https://www.CommonUtility.com"}
         s.platform     = :iOS,"9.0" 
         s.swift-version = "2.3"
         s.license      = "MIT"
         s.source = { :git => "https://github.com/xiaobadao/common.git",:tag => "0.0.1" }
         s.source_files  = "common/Classes/**/*.{h,m}"
         s.framework = "UIKit"
         s.requires_arc = true
end
