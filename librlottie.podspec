#
# Be sure to run `pod lib lint TestLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'librlottie'
  s.version          = '0.2.1'
  s.summary          = 'A platform independent standalone library that plays Lottie Animation.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
rlottie is a platform independent standalone c++ library for rendering vector based animations and art in realtime.
                       DESC

  s.homepage         = 'https://github.com/Samsung/rlottie'
  s.license          = { :type => 'LGPL' }
  s.author           = { 'Subhransu Mohanty' => 'sub.mohanty@samsung.co' }
  s.source           = { :git => 'https://github.com/SDWebImage/librlottie-Xcode.git', :tag => s.version.to_s, :submodules => true }

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'rlottie/src/**/*.{h,c,cpp}', 'generate/**/*.{h,c,cpp}', 'include/**/*.h', 'Xcode/librlottie.h'
  s.public_header_files = 'include/rlottie/rlottie_capi.h', 'include/rlottie/rlottiecommon.h', 'Xcode/librlottie.h'
  s.exclude_files = 'rlottie/src/wasm', 'rlottie/src/lottie/rapidjson/msinttypes', 'rlottie/src/vector/pixman', 'rlottie/src/vector/vdrawhelper_neon.cpp'

  s.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '$(inherited) ${PODS_TARGET_SRCROOT}/generate'
  }
  s.preserve_paths = 'rlottie', 'include', 'generate'
  s.libraries = 'c++'
end
