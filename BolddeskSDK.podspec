Pod::Spec.new do |s|
s.name             = 'BolddeskSDK'
s.version          = '0.0.6'
s.summary          = 'Flutter BolddeskSDK framework'
s.description      = <<-DESC
The BolddeskHome Flutter plugin provides a native framework integration for iOS using an xcframework.
DESC
s.homepage         = 'https://github.com/boomibalanB/BolddeskSDK.git'
s.license = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Boomibalan B' => 'boomibalan.b@syncfusion.com' }
s.source           = { :git => 'https://github.com/boomibalanB/BolddeskSDK.git', :tag => s.version.to_s }
# Download and extract frameworks at install time
s.prepare_command = <<-CMD
    unzip -o BolddeskCommonUI.xcframework.zip
  CMD
s.vendored_frameworks = 'Frameworks/BolddeskCommonUI.xcframework',
                        'Frameworks/BolddeskPlugin.xcframework',
                        'Frameworks/BolddeskSDKFramework.xcframework'
s.ios.deployment_target = '12.0'
s.static_framework = true
end
