$LOAD_PATH.unshift File.dirname(__FILE__)
require 'bundler/setup'
require 'rspec'
require 'money'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before :suite do
    Money.conversion_rates('EUR', { 'USD'     => 1.11,
                                    'Bitcoin' => 0.0047 })
  end
end
