Pod::Spec.new do |s|
  s.name             = 'AnimatedGradientView'
  s.version          = '2.0.0'
  s.swift_version    = '5.0'
  s.summary          = 'Powerful gradient animations made simple for iOS.'
  s.description      = <<-DESC
AnimatedGradientView makes it simple to create animated or static gradiented views with support for axial, radial and conic gradients.
                       DESC
  s.homepage         = 'https://github.com/rwbutler/AnimatedGradientView'
  s.screenshots     = 'https://github.com/rwbutler/AnimatedGradientView/raw/master/docs/images/example.gif'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ross Butler' => 'github@rwbutler.com' }
  s.source           = { :git => 'https://github.com/rwbutler/AnimatedGradientView.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ross_w_butler'
  s.ios.deployment_target = '8.0'
  s.source_files = 'AnimatedGradientView/Classes/**/*'
end
