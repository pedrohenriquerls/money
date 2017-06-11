class Money
  module Arithmetic
    def +(money)
      dup_new_amount amount + money.convert_to(currency).amount
    end

    def -(money)
      dup_new_amount amount - money.convert_to(currency).amount
    end

    def /(divider)
      dup_new_amount amount / divider
    end

    def *(multiplier)
      dup_new_amount amount * multiplier
    end

    private

    def dup_new_amount(new_amount)
      Money.new new_amount, currency
    end
  end
end
