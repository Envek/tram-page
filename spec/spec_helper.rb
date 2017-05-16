# frozen_string_literal: true

require "bundler/setup"
require "dry/initializer"
require "tram/page"
require "support/blank_page"
require "support/example_page"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end