Pod::Spec.new do |s|

 s.name = 'SectionedSlider'
 s.version = '0.0.3'
 s.license = { :type => "MIT", :file => "LICENSE" }
 s.summary = 'Control Center Slider'
 s.homepage = 'https://github.com/LeonardoCardoso/SectionedSlider'
 s.social_media_url = 'https://twitter.com/leocardz'
 s.authors = { "Leonardo Cardoso" => "contact@leocardz.com" }
 s.source = { :git => "https://github.com/LeonardoCardoso/SectionedSlider.git", :tag => s.version.to_s }
 s.platforms     = { :ios => "8.0" }
 s.requires_arc = true
 s.source_files  = "Sources/**/*.swift"
 s.framework  = "Foundation"

end
