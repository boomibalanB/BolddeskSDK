Pod::Spec.new do |s|
s.name             = 'BolddeskSDK'
s.version          = '0.0.3'
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
curl -L -o AppFramework.zip https://github.com/boomibalanB/BolddeskSDK/blob/main/BolddeskCommonUI.xcframework.zip
unzip BolddeskCommonUI.xcframework.zip
CMD
s.vendored_frameworks = ['BolddeskSDK.xcframework', 'BolddeskPlugin.xcframework', 'BolddeskCommonUI.xcframework']
s.ios.deployment_target = '12.0'
s.static_framework = true
end
