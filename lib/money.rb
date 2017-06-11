require 'money/version'
require 'money/converter'
require 'money/comparator'

class Money
  include Converter
  include Comparator

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
    "#{format '%.2f', amount.round(2)} #{currency}"
  end

  private

  def default_currency
    @@default_currency
  end

  def rate(currency)
    @@rates[currency]
  end
end
