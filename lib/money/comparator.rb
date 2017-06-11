class Money
  module Comparator
    def ==(money)
      convert_to(money.currency).inspect == money.inspect
    end

    def <(money)
      convert_to_default_currency.amount < money.convert_to_default_currency.amount
    end

    def >(money)
      convert_to_default_currency.amount > money.convert_to_default_currency.amount
    end
  end
end
