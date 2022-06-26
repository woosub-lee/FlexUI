
Pod::Spec.new do |s|
  s.name             = 'FlexUI'
  s.version          = '0.1.0'
  s.summary          = 'A short description of FlexUI.'
  s.description      = ''

  s.homepage         = 'https://github.com/woosub-lee/FlexUI'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'woosub-lee' => 'woosub.dev@gmail.com' }
  s.source           = { :git => 'https://github.com/woosub-lee/FlexUI.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'

  s.source_files = 'FlexUI/Classes/**/*'
  
  s.resource_bundles = {
    'FlexUI' => ['FlexUI/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.dependency 'FlexLayout', '~> 1.3'
  s.dependency 'PinLayout', '~> 1.10.0'
end
