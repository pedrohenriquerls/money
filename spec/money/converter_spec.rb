RSpec.describe Money::Converter do
  describe '.convert_to' do
    before :all do
      Money.conversion_rates('EUR', { 'USD'     => 1.11,
                                      'Bitcoin' => 0.0047 })
    end
    subject(:money) { Money.new(50, 'EUR') }

    context 'when receive the same currency' do
      it 'should return the current amount' do
        expect(money.convert_to('EUR')).to eq(money)
      end
    end

    context 'when receive a different currency' do
      it 'should return nil' do
        expect(money.convert_to('invalid currency')).to be_nil
      end

      it 'should convert EUR currency to USD' do
        expect(money.convert_to('USD')).to eq(Money.new(55.5, 'USD'))
      end

      it 'should convert EUR currency to Bitcoin' do
        expect(money.convert_to('Bitcoin')).to eq(Money.new(0.235, 'Bitcoin'))
      end
    end
  end
end
