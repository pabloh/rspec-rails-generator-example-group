# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rspec-rails-generator-example-group"

Gem::Specification.new do |s|
  s.name        = "rspec-rails-generator-example-group"
  s.version     = RSpec::Rails::GeneratorExampleGroupGem::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Pablo Herrero"]
  s.email       = ["pablodherrero@gmail.com"]
  s.homepage    = "https://github.com/stevehodgkiss/generator_spec"
  s.summary     = %q{Test Rails generators with RSpec}
  s.description = %q{Test Rails generators with RSpec}

  s.rubyforge_project =  "rspec-rails-generator-example-group"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency 'activerecord', ['>= 3.0', '< 4.0']
  s.add_dependency 'railties', ['>= 3.0', '< 4.0']
  s.add_dependency 'rspec-rails', ['>= 2.0', '< 3.0']
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'fakefs', '~> 0.4.1'
end
