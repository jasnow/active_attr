# -*- encoding: utf-8 -*-
require File.expand_path("../lib/active_attr/version", __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chris Griego", "Ben Poweski"]
  gem.email         = ["cgriego@gmail.com", "bpoweski@gmail.com"]
  gem.description   = %q{Create plain old ruby models without reinventing the wheel.}
  gem.summary       = %q{What ActiveModel left out}
  gem.homepage      = "https://github.com/cgriego/active_attr"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "active_attr"
  gem.require_paths = ["lib"]
  gem.version       = ActiveAttr::VERSION

  gem.add_runtime_dependency "activemodel",   ">= 3.0.2", "< 6.1"
  gem.add_runtime_dependency "activesupport", ">= 3.0.2", "< 6.1"

  gem.add_development_dependency "bundler"
  gem.add_development_dependency "factory_bot", ">= 2.2", "< 5.1"
  gem.add_development_dependency "minitest"
  gem.add_development_dependency "rake",         ">= 0.9.0", "< 13"
  gem.add_development_dependency "rspec",        "~> 3.0"
  gem.add_development_dependency "tzinfo",       "< 2.0"
end
