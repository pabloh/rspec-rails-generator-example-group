require 'rspec/rails/example/generator_example_group'
require 'rspec/core'

RSpec::configure do |c|
  c.include RSpec::Rails::GeneratorExampleGroup, :type => :generator, :example_group => {
    :file_path => %r{spec[/\\]generators[/\\]}
  }
end
