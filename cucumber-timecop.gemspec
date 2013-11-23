# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cucumber/timecop/version'

Gem::Specification.new do |spec|
  spec.name          = "cucumber-timecop"
  spec.version       = Cucumber::Timecop::VERSION
  spec.authors       = ["zedtux"]
  spec.email         = ["zedtux@zedroot.org"]
  spec.description   = %q{Timecop steps definition for Cucumber}
  spec.summary       = %q{Add this gem to the test group of you Gemfile in order to be able to travel in time in you Cucumber scenarios.}
  spec.homepage      = "https://github.com/zedtux/cucumber-timecop"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "cucumber"
  spec.add_dependency "timecop"
  spec.add_dependency "chronic"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

end
