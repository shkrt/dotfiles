# require "codeclimate-test-reporter"
# CodeClimate::TestReporter.start
require 'capybara/rspec'
require 'factory_girl_rails'
require "webmock/rspec"
require "capybara/poltergeist"
require "support/database_cleaner"

Capybara.javascript_driver = :poltergeist
options = { js_errors: false }
Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, options)
end

WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.before(:each) do
    if Capybara.current_driver == :poltergeist
      page.driver.headers = { "ACCEPT-LANGUAGE" => "en" }
    end
  end
end
