#详细说明见：https://guides.cocoapods.org/syntax/podspec.html

Pod::Spec.new do |spec|

  #基本信息
  spec.name         = "CocopodsDemo"
  spec.version      = "0.0.1"
  spec.summary      = "这是一个摘要"

 #描述，需要写在两个DESC中间
  spec.description  = <<-DESC
  描述要比摘要长，否则会收到一个警告
                   DESC

#github主页
  spec.homepage     = "https://github.com/LeoFavor1562/CocopodsDemo"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  #开源协议
  #spec.license      = "MIT"
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  #作者信息
  spec.author             = { "18610011562@163.com" => "LeoFavor" }
  # Or just: spec.author    = ""
  # spec.authors            = { "" => "" }
  # spec.social_media_url   = "https://twitter.com/"

  #平台信息
  # spec.platform     = :ios
  spec.platform     = :ios, "8.0"

  #多平台时使用
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"

  #文件源，是库地址不是主页地址
  spec.source       = { :git => "https://github.com/LeoFavor1562/CocopodsDemo.git", :tag => "#{spec.version}" }

  #需要包含的文件路径，多个用","隔开（是远端库里源文件的路径）
  #具体路径规则如以下几个文件位置
  spec.source_files  = "CocopodsDemo", "CocopodsDemo/**/*.{h,m}", "CocopodsDemo/**/**/*.{h,m}"
  #包含路径中，不要包含的文件
  spec.exclude_files = "CocopodsDemo/**/FileD.{h,m}"

#这些头文件将公开给用户的项目，并从中生成文档。构建库时，这些头将出现在build目录中。如果没有指定公共标头，则source_files中的所有标头都被认为是公共的。
  # spec.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  #需要引用的framwork和lib
  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  #是否是arc环境
  spec.requires_arc = true

  #对应xcode-target-build settings中的HEADER_SEARCH_PATHS
  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

  #依赖的其他库
  # spec.dependency "JSONKit", "~> 1.4"

end
