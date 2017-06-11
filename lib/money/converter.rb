class Money
  module Converter
    def convert_to(new_currency)
      case new_currency
      when currency
        self
      when default_currency
        create_money_to_default_currency
      else
        create_money_to new_currency
      end
    end

    def convert_to_default_currency
      convert_to default_currency
    end

    private

    def create_money_to(new_currency)
      rate = rate new_currency
      return if rate.nil?
      converted_amount = amount * rate
      Money.new converted_amount, new_currency
    end

    def create_money_to_default_currency
      Money.new amount / rate(currency), default_currency
    end
  end
end
