RSpec.describe Money do
  it 'has a version number' do
    expect(Money::VERSION).not_to be nil
  end

  subject(:money) { Money.new(50.00, 'EUR') }

  describe '.inspect' do
    it { expect(money.amount).to eq(50) }
    it { expect(money.currency).to eq('EUR') }
    it { expect(money.inspect).to eq('50.00 EUR') }
    it { expect(Money.new(50.10, 'EUR').inspect).to eq('50.10 EUR') }
    it { expect(Money.new(50.5524, 'EUR').inspect).to eq('50.55 EUR') }
  end
end
