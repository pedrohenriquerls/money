
RSpec.describe Money::Comparator do
  describe '.convert_to' do
    context 'compare same currency' do
      it 'should twenty USD greater than five USD' do
        expect(Money.new(20, 'USD') > Money.new(5, 'USD')).to be_truthy
        expect(Money.new(5, 'USD') < Money.new(20, 'USD')).to be_truthy
      end

      it { expect(Money.new(20, 'USD')).to_not eq(Money.new(5, 'USD')) }
      it { expect(Money.new(20, 'USD')).to eq(Money.new(20, 'USD')) }
    end

    context 'compare different currency' do
      it 'should fifty EUR greater than twenty USD' do
        expect(Money.new(20, 'USD') < Money.new(50, 'EUR')).to be_truthy
        expect(Money.new(20, 'USD') > Money.new(50, 'EUR')).to be_falsey
      end

      it 'should Bitcoin greater than EUR' do
        expect(Money.new(50, 'EUR') > Money.new(50, 'Bitcoin')).to be_falsey
        expect(Money.new(50, 'EUR') < Money.new(50, 'Bitcoin')).to be_truthy
      end

      it { expect(Money.new(50, 'EUR')).to eq(Money.new(55.5, 'USD')) }
      it { expect(Money.new(55.5, 'USD')).to eq(Money.new(50, 'EUR')) }
    end
  end
end
