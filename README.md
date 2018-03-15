# Devhua私有库

## 简介

集成方法：

~~~ruby
platform :ios, '8.0'

source 'https://github.com/CocoaPods/Specs.git'  ## 公有源
source 'https://github.com/Devhua/HRC_MySpecs.git' ## Devhua私有源

target 'TestPod' do
   pod 'HRC_MySpecs','~> 0.0.1'
end
~~~