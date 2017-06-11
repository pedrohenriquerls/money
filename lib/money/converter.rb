class Money
  module Converter
    def convert_to(new_currency)
      return self if new_currency == default_currency
      create_money_to new_currency
    end

    private

    def create_money_to(new_currency)
      rate = rate new_currency
      return if rate.nil?
      converted_amount = (amount * rate).round 2
      Money.new converted_amount, new_currency
    end
  end
end
