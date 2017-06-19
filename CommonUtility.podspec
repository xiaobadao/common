
Pod::Spec.new do |s|
         s.name         = "common"
         s.version      = "0.0.1"
         s.summary      = "all kinds of categoried for ios develop"
         s.homepage     = "https://github.com/xiaobadao/common"
         s.author       = { "CommonUtility" => "https://www.CommonUtility.com" }
         s.platform     = :iOS,"7.0"
         s.license      = "MIT"
         s.source = { :git => "https://github.com/xiaobadao/common.git",:tag =>s.version }
         s.source_files  = "common/**/*.{h,m}"
         s.public_header_files = "common/ComonUtility.h"
         s.requires_arc = true
end
