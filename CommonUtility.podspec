
d::Spec.new do |s|
         s.name         = "iOS_Category"
         s.version      = "0.0.1"
         s.summary      = "all kinds of categoried for ios develop"
         s.homepage     = 'https://githum.com/xiaobadao/common'
         s.author       = { 'CommonUtility' => 'https://www.CommonUtility.com' }
         s.platform     = :ios
         s.license      = { :type =>"MIT",file =>"LICENSE" }
         s.source = { :git => "https://github.com/xiaobadao/common/iOS_Category",:tag =>"0.0.1" }
         s.source_files  = "Classes"， "iOS_Category/Classes/**/*.{h，m}"
         s.exclude_files = "Classes/Exclude"
         s.public_header_files = "iOS_Category/CommonUtility.h"，"iOS_Category/Classes/Foundation/Foundation_Category.h"，"iOS_Category/Classes/**/*.h"
         s.requires_arc = true
end
