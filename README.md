# Money
This is a simple gem to help you to deal with currency conversion and simple arithmetics operations at different rates.

## Using
### Installing
Add this to your gem file
>gem 'money', git: 'git@github.com:pedrohenriquerls/money.git'

and after this execute the bundle
>bundle install

After this, you can require the gem to use where you want
### Configuring
You will need to define the conversion rates before using this  awesome features
```ruby
 # Configure the currency rates with respect to a base currency (here EUR):
Money.conversion_rates('EUR', {
  'USD'     => 1.11,
  'Bitcoin' => 0.0047
})
```
## Features
### Money object
```ruby
# Instantiate money objects:
fifty_eur = Money.new(50, 'EUR')
 
# Get amount and currency:
fifty_eur.amount   # => 50
fifty_eur.currency # => "EUR"
fifty_eur.inspect  # => "50.00 EUR"

# Instantiate money objects with different currencies
twenty_dollars = Money.new(20, 'USD')
```
### Conversion
```ruby
# Convert to a different currency
fifty_eur.convert_to('USD') # => 55.50 USD (New money object)
```
### Arithmetics operations in different currencies
```ruby
fifty_eur + twenty_dollars # => 68.02 EUR
fifty_eur - twenty_dollars # => 31.98 EUR
fifty_eur / 2              # => 25 EUR
twenty_dollars * 3         # => 60 USD
```
### Comparisons in different currencies
```ruby
twenty_dollars == Money.new(20, 'USD') # => true
twenty_dollars == Money.new(30, 'USD') # => false
 
fifty_eur_in_usd = fifty_eur.convert_to('USD')
fifty_eur_in_usd == fifty_eur          # => true
 
twenty_dollars > Money.new(5, 'USD')   # => true
twenty_dollars < fifty_eur             # => true
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pedrohenriquerls/money.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
