# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_pay_what_you_want'
  s.version     = '1.3.2'
  s.summary     = 'Spree extension to let the customer choose the price.'
  s.description = 'Spree extension to let the customer choose the price.'
  s.required_ruby_version = '>= 1.8.7'

  s.authors   = ['Andrew Orr', 'Ben Bergman']
  s.email     = ['andrew@andreworr.ca', 'ben@benbergman.ca']
  # s.homepage  = 'http://www.spreecommerce.com'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.3.0'

  s.add_development_dependency 'capybara', '~> 1.1.2'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'factory_girl', '~> 2.6.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.9'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'sqlite3'
end
