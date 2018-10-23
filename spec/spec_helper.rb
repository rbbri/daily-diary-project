ENV['ENVIRONMENT'] = 'test'
ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')
require_relative './setup_test_database'
require 'capybara'
require 'capybara/rspec'
require 'rspec'

Capybara.app = DailyDiary

RSpec.configure do |config|
  config.before(:each) do
    setup_test_database
  end
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.default_formatter = 'doc' if config.files_to_run.one?
end
