class Money
  module Comparator
    def ==(money)
      money.inspect == inspect
    end
  end
end
