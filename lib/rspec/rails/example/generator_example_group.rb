require 'rails/version'
require 'rails/generators'
require 'rspec/rails/generator_matchers'

puts Rails::VERSION::STRING

if Rails::VERSION::MAJOR >= 4
  require 'rails/generators/testing/behaviour'
  require 'rails/generators/testing/setup_and_teardown'
  require 'rails/generators/testing/assertions'
else
  require 'backports/rails/generators/testing/behaviour'
  require 'backports/rails/generators/testing/setup_and_teardown'
  require 'backports/rails/generators/testing/assertions'
end

module RSpec::Rails
  module GeneratorExampleGroup
    extend ActiveSupport::Concern

    include Rails::Generators::Testing::Behaviour
    include Rails::Generators::Testing::SetupAndTeardown
    include Rails::Generators::Testing::Assertions
    include FileUtils

    include RSpec::Rails::GeneratorMatchers

    Rails::Generators.no_color!

  end
end
