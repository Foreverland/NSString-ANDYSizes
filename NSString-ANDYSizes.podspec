Pod::Spec.new do |s|
  s.name = "NSString-ANDYSizes"
  s.version = "2.0"
  s.summary = "Calculates the size of your strings"
  s.description = <<-DESC
                   * Calculates the size of your strings
                   DESC
  s.homepage = "https://github.com/NSElvis/NSString-ANDYSizes"
  s.license = {
    :type => 'MIT',
    :file => 'LICENSE.md'
  }
  s.author = { "Elvis Nunez" => "elvisnunez@me.com" }
  s.social_media_url = "http://twitter.com/NSElvis"
  s.platform = :ios, '6.0'
  s.source = {
    :git => 'https://github.com/NSElvis/NSString-ANDYSizes.git',
    :tag => s.version.to_s
  }
  s.source_files = 'NSString-ANDYSizes/'
  s.frameworks = 'UIKit', 'Foundation'
  s.requires_arc = true
end
