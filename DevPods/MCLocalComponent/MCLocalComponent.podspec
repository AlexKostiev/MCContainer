#
# Be sure to run `pod lib lint MCLocalComponent.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MCLocalComponent'
  s.version          = '0.1.0'
  s.summary          = 'Reusable local component for demo purposes'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Reusable Local Component for demo purposes
                       DESC

  s.homepage         = 'https://github.com/AlexKostiev/MCComponent'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AlexKostiev' => 'akostiev@griddynamics.com' }
  s.source           = { :git => 'https://github.com/AlexKostiev/MCComponent.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'Classes/**/*'
  s.resources = 'MCComponent/Classes/ReusableButtonView.xib'

  s.frameworks = 'UIKit'
  s.swift_version = '4.0'
end
