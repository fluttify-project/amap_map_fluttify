#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'amap_map_fluttify'
  s.version          = '0.0.1'
  s.summary          = '{{description}}'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'

  s.ios.deployment_target = '8.0'
  # 包含工程下的framework
  s.vendored_frameworks = '*.framework'
  # 默认使用静态framework
  s.static_framework = true
  # 系统framework
  s.frameworks = [
        "QuartzCore", "CoreLocation", "SystemConfiguration", "CoreTelephony", "Security", "OpenGLES", "CoreText", "CoreGraphics", "GLKit"
  ]
  # 系统library
  s.libraries = [
        "z", "c++"
  ]
  # 需要添加的资源文件
  s.resources = [
        "MAMapKit.framework/AMap.bundle"
  ]
end

