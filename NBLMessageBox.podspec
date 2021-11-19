#
# Be sure to run `pod lib lint NBLMessageBox.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NBLMessageBox'
  s.version          = '0.1.7'
  s.summary          = '给用户提示信息窗口。Show box to tell user message.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
给用户提示信息的窗口，包括Loading框和UIAlertController。Show box to tell user message.
                       DESC

  s.homepage         = 'https://gitee.com/yjh4866/NBLMessageBox'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '杨建红' => 'yjh4866@163.com' }
  s.source           = { :git => 'https://gitee.com/yjh4866/NBLMessageBox.git', :tag => s.version.to_s }
  s.social_media_url = 'https://blog.csdn.net/yjh4866'

  s.ios.deployment_target = '9.0'

  s.source_files = 'NBLMessageBox/Classes/**/*'
  
  s.resource_bundles = {
   'NBLMessageBox' => ['NBLMessageBox/Assets/*.{xib}']
  }

  s.public_header_files = 'NBLMessageBox/Classes/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
