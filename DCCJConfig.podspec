#
# Be sure to run `pod lib lint DCCJConfig.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DCCJConfig'
  s.version          = '0.1.5'
  s.summary          = 'Global config and setting are here.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Global config and setting are here used by DCCJ
                       DESC

  s.homepage         = 'https://github.com/Ghstart/DCCJConfig'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ghstart' => 'gonghuan2020@gmail.com' }
  s.source           = { :git => 'https://github.com/Ghstart/DCCJConfig.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'DCCJConfig/Classes/**/*'
  
  s.subspec 'Result' do |a|
      a.source_files = 'DCCJConfig/Classes/Result/**/*'
  end
  
  s.subspec 'DataManagerError' do |a|
      a.source_files = 'DCCJConfig/Classes/DataManagerError/**/*'
  end
  
  s.subspec 'Promise' do |a|
      a.source_files = 'DCCJConfig/Classes/Promise/**/*'
  end
  
  # s.resource_bundles = {
  #   'DCCJConfig' => ['DCCJConfig/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
