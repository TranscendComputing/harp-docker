# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'harp/docker/version'

Gem::Specification.new do |spec|
  spec.name          = "harp-docker"
  spec.version       = Harp::Docker::VERSION
  spec.authors       = ["John Gardner"]
  spec.email         = ["jgardner@transcendcomputing.com"]
  spec.description   = %q{Plugin for the harp runtime orchestration language for Docker support.}
  spec.summary       = %q{This plugin enables harp to create docker instances.}
  spec.homepage      = "https://github.com/TranscendComputing/harp-docker"
  spec.license       = "ASLV2"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
