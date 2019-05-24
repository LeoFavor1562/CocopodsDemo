#详细说明见：https://guides.cocoapods.org/syntax/podspec.html

Pod::Spec.new do |spec|

  # 基本信息
  spec.name         = "LJ_CocopodsDemo" # 库的名字，pod search 时的名字，需要与该文件名相同，否则报错
  # 每次向CocoaPod官方库提交podsec都需要增加tag，版本库如果不存在这个tag则无法提交
  spec.version      = "0.0.5"
  spec.summary      = "这是一个摘要"

 # 描述，需要写在两个DESC中间
  spec.description  = <<-DESC
  描述要比摘要长，否则会收到一个警告
                   DESC

  # github主页
  spec.homepage     = "https://github.com/LeoFavor1562/CocopodsDemo"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  # 开源协议
  #spec.license      = "MIT"
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  # 作者信息
  spec.author             = { "18610011562@163.com" => "LeoFavor" }
  # Or just: spec.author    = ""
  # spec.authors            = { "" => "" }
  # spec.social_media_url   = "https://twitter.com/"

  # 平台信息
  # spec.platform     = :ios
  spec.platform     = :ios, "8.0"

  # 多平台时使用
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"

  # 版本库源，是库地址不是主页地址
  spec.source       = { :git => "https://github.com/LeoFavor1562/CocopodsDemo.git", :tag => "#{spec.version}" }

  # 需要包含的文件路径，多个用","隔开（是远端库里源文件的路径）
  # 具体路径规则如以下几个文件位置
  # "CocopodsDemo"：CocopodsDemo文件夹下的所有文件
  # "CocopodsDemo/**/*.{h,m}"：CocopodsDemo文件夹下的所有文件夹下的所有.h和.m文件
  # cocopods暂时只能添加文件，不能添加文件夹，若存在多层结构，所有文件最后都会混在一起，不过可以subspec来划分功能模块，每个subspec最终会变成xcode中的gruop，这样虽然文件都混在一起，但从xcode的文件列表看，模块是被group分开了的，如果指定了subspec，这里就不要包含subspec里的文件了，否则会重复包含
  spec.source_files  = "CocopodsDemo", "CocopodsDemo/**/*.{h,m}", "CocopodsDemo/**/**/*.{h,m}"
  #spec.source_files  = "CocopodsDemo/**"
  # 包含路径中，不要包含的文件
  spec.exclude_files = "CocopodsDemo/**/FileD.{h,m}"

# 这些头文件将公开给用户的项目，并从中生成文档。构建库时，这些头将出现在build目录中。如果没有指定公共标头，则source_files中的所有标头都被认为是公共的。
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


  # 需要引用的framwork和lib
  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # 是否是arc环境
  spec.requires_arc = true

  # 对应target-build settings中的配置，具体的KEY到project.pbxproj中可以找到
  spec.xcconfig = { "CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF" => "NO" }

  # 依赖的其他库
  spec.dependency "Masonry", "~> 1.1.0"

  # 添加子规范，
  spec.subspec 'LJTagView' do |sp|
        sp.source_files = 'CocopodsDemo/LJTagView/*.{h,m}'
        #sp.public_header_files = ''
  end

end
