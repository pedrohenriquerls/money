
RSpec.describe Money::Arithmetic do
  let(:twenty_dolars) { Money.new(20, 'USD') }
  let(:fifty_euros) { Money.new(50, 'EUR') }
  it { expect(twenty_dolars + fifty_euros).to eq(Money.new(68.02, 'EUR')) }
  it { expect(twenty_dolars + fifty_euros).to eq(Money.new(75.50, 'USD')) }
  it { expect(fifty_euros - twenty_dolars).to eq(Money.new(31.98, 'EUR')) }
  it { expect(fifty_euros / 2).to eq(Money.new(25, 'EUR')) }
  it { expect(fifty_euros * 2).to eq(Money.new(100, 'EUR')) }
  it { expect(twenty_dolars * 3).to eq(Money.new(60, 'USD')) }
  it { expect(twenty_dolars / 2).to eq(Money.new(10, 'USD')) }
end
