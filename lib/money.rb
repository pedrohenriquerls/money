require 'money/version'

class Money
  attr_reader :amount, :currency
  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def inspect
    "#{format '%.2f', amount.round(2)} #{currency}"
  end
end
