Pod::Spec.new do |s|
  s.name     = 'sndfile-Framework'
  s.version  = '1.0.25'
  s.license  = 'LPGL'
  s.summary  = 'Libsndfile is a C library for reading and writing files containing sampled sound'
  s.homepage = 'https://github.com/PRX/sndfile-Framework'
  s.social_media_url = 'https://twitter.com/prx'
  s.authors  = { 'Chris Kalafarski' => 'chris.kalafarski@prx.org' }
  s.source   = { :git => 'https://github.com/PRX/sndfile-Framework.git', :tag => "#{s.version}", :submodules => true }
  s.requires_arc = false

  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.7'

  s.source_files = 'sndfile.framework/Headers/sndfile.h'
  s.preserve_paths = 'sndfile.framework/*'
  s.frameworks   = 'sndfile'
  s.xcconfig     = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/sndfile"' }
end
