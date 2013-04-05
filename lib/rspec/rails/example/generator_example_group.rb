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

      include ::Rails::Generators::Testing::Assertions
      include FileUtils

      include RSpec::Rails::GeneratorMatchers

      ::Rails::Generators.no_color!

      included do
        include ::Rails::Generators::Testing::Behaviour

        metadata[:type] = :generator

        tests described_class

        prepend_before do
          destination_root_is_set?
          ensure_current_path
        end

        append_after do
          ensure_current_path
        end
      end

    end
  end
end
