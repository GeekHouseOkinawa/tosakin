source 'https://rubygems.org'

ruby '2.1.1'

gem 'rails', '4.0.4'
gem 'pg'
gem 'sass-rails', '~> 4.0.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem 'tosakin_message',   path: './components/tosakin_message'
gem 'tosakin_circle_ci', path: './components/tosakin_circle_ci'
gem 'tosakin_travis_ci', path: './components/tosakin_travis_ci'

group :development, :test do
  gem 'rspec-rails', '~> 3.0.0.beta'
end

group :test do
  gem 'coveralls', require: false
end
