Pod::Spec.new do |s|
  s.name             = 'sonr_plugin'
  s.version          = '0.5.14'
  s.summary          = 'Plugin that creates bindings for Sonr-Core'
  s.description      = 'Plugin that creates bindings for Sonr-Core'
  s.homepage         = 'http://sonr.io'
  s.author           = { 'Sonr.io' => 'prad@sonr.io' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.vendored_frameworks = 'Frameworks/Core.xcframework'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'
  s.swift_version = '5.0'
end
