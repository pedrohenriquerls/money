RSpec.describe Money do
  it 'has a version number' do
    expect(Money::VERSION).not_to be nil
  end

  describe '.inspect' do
    it { expect(Money.new(50.00, 'EUR').inspect).to eq('50.00 EUR') }
    it { expect(Money.new(50.10, 'EUR').inspect).to eq('50.10 EUR') }
    it { expect(Money.new(50.5524, 'EUR').inspect).to eq('50.55 EUR') }
  end
end
