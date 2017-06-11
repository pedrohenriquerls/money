require 'money/version'
require 'money/converter'
require 'money/comparator'
require 'money/arithmetic'

class Money
  include Converter
  include Comparator
  include Arithmetic

  def self.conversion_rates(currency, rates)
    @@rates = rates
    @@default_currency = currency
  end

  attr_reader :amount, :currency
  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def inspect
    "#{format '%.2f', round_amount} #{currency}"
  end

  private

  def default_currency
    @@default_currency
  end

  def rate(currency)
    @@rates[currency]
  end

  def round_amount
    amount.round 2
  end
end
