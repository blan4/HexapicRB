# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hexapic/version'

Gem::Specification.new do |spec|
  spec.name          = 'hexapic'
  spec.version       = Hexapic::VERSION
  spec.authors       = ['Ilya Siganov']
  spec.email         = ['ilya.blan4@gmail.com']
  spec.summary       = 'Set desktop wallpaper from social networks'
  spec.description   = "Pick a 6 latest pics from flickr, instagram or twitter, make collage of its and set it as Linux's background."
  spec.homepage      = 'https://github.com/blan4/HexapicRB'
  spec.metadata      = { 'issue_tracker' => 'https://github.com/blan4/HexapicRB/issues' }
  spec.post_install_message = 'Just call hexapic -t cat'
  spec.required_ruby_version = '>= 1.9.3' 
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.requirements << 'imagemagick'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.4'
  spec.add_runtime_dependency 'choice', '~> 0.1'
  spec.add_runtime_dependency 'flickr.rb', '~> 1.2' 
  spec.add_runtime_dependency 'faraday', '~> 0.9'
  spec.add_runtime_dependency 'mini_magick', '~> 4.0'
end
