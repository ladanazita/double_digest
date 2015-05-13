source 'https://rubygems.org'
ruby '2.2.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'

# Use postgresql as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster
gem 'turbolinks'
# Build JSON APIs with ease
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# background worker
gem 'redis'
gem 'sidekiq'
gem 'sidetiq'

# our styling
gem 'materialize-sass'

# for login
gem 'omniauth'
gem 'omniauth-twitter'

# gems to help consume twitter API
gem 'twitter'
gem 'httparty', '0.11.0'

# Use ActiveModel has_secure_password, to encrypt our keys
gem 'bcrypt', '~> 3.1.7'
gem 'figaro'

group :production do
     gem 'rails_12factor'
     gem 'thin'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # for pretty errors
  gem 'better_errors'
  # includes RSpec, makes it play nicely with rails
  gem 'rspec-rails'
  # replaces Rails' default fixtures for feeding test data to the test suite
  gem 'factory_girl_rails', "~> 4.0"
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # generates names, emails and placeholder for factory
  gem 'faker'
  # makes it easy to programatically simulate your user's interactions with app
  gem 'capybara'
  # watches application and test and runs specs for us automatically when it detects changes
  gem 'guard'
  gem 'guard-rspec'
  # opens default web browser upon failed integration specs to show what app is rendering
  gem 'launchy'
end

