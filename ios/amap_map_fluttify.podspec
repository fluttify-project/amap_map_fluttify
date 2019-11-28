#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'amap_map_fluttify'
  s.version          = '0.0.1'
  s.summary          = 'An `Amap` Map Component, Powered By `Fluttify` Engine.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'https://github.com/fluttify-project/amap_map_fluttify'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'yohom' => '382146139@qq.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'foundation_fluttify'
  # flutter plugin dependency
  s.dependency 'amap_core_fluttify'
  s.dependency 'url_launcher'

  s.ios.deployment_target = '8.0'
  # include project framework
  s.vendored_frameworks = '**/*.framework'
  # include project .a
  s.vendored_libraries = '**/*.a'
  # ios system framework
  s.frameworks = [
        "QuartzCore", "CoreLocation", "SystemConfiguration", "CoreTelephony", "Security", "OpenGLES", "CoreText", "CoreGraphics", "GLKit"
  ]
  # ios system library
  s.libraries = [
        "z", "c++"
  ]
  # resources
  s.resources = '*.framework/*.bundle'
  # s.resource_bundles = {
  #   'amap_map_fluttify' => ['*.framework/*.bundle']
  # }
end

