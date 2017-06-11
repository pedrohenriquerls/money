lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'money/version'

Gem::Specification.new do |spec|
  spec.name          = 'money'
  spec.version       = Money::VERSION
  spec.authors       = ['Pedro Henrique Rodrigues']
  spec.email         = ['pedrohenriquerls@gmail.com']

  spec.summary       = 'A simple ruby gem to help you with currency conversions and simple money operations'
  spec.description   = 'A simple ruby gem to help you with currency conversions and simple money operations'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
end
