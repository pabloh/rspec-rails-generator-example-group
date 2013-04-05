require 'rails/version'
require 'rails/generators'
require 'rspec/rails/generator_matchers'

if Rails::VERSION::MAJOR >= 4
  require 'rails/generators/testing/behaviour'
  require 'rails/generators/testing/setup_and_teardown'
  require 'rails/generators/testing/assertions'
else
  require 'rails_generators_test_case_modules'
end


module RSpec
  module Rails
    module GeneratorExampleGroup
      extend ActiveSupport::Concern

      include ::Rails::Generators::Testing::Behaviour
      include ::Rails::Generators::Testing::SetupAndTeardown
      include ::Rails::Generators::Testing::Assertions
      include FileUtils

      include RSpec::Rails::GeneratorMatchers

      ::Rails::Generators.no_color!

    end
  end
end
