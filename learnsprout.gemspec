# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "learnsprout/version"

Gem::Specification.new do |s|
  s.name        = "learnsprout"
  s.version     = LearnSprout::VERSION
  s.authors     = ["Francis Kam"]
  s.email       = ["kabuko@gmail.com"]
  s.homepage    = "https://github.com/kabuko/learnsprout"
  s.summary     = %q{A Ruby wrapper for the LearnSprout API.}
  s.description = %q{A Ruby wrapper for the LearnSprout API.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'faraday', '>= 0.7.6'
  s.add_dependency 'multi_json', '~> 1.0'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'simplecov'
end
