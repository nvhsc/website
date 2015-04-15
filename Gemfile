source 'https://rubygems.org'
ruby '2.2.1'

gem 'autoprefixer-rails'
gem 'coffee-rails', '~> 4.1.0'
gem 'coveralls', require: false
gem 'delayed_job_active_record'
gem 'devise'
gem 'flutie'
gem 'i18n-tasks'
gem 'jbuilder', '~> 2.0'
gem 'jquery-rails'
gem 'newrelic_rpm', '>= 3.9.8'
gem 'normalize-rails', '~> 3.0.0'
gem 'omniauth'
gem 'paperclip'
gem 'pg'
gem 'rails', '4.2.1'
gem 'rack-timeout'
gem 'recipient_interceptor'
gem 'sass-rails', '~> 5.0'
gem 'simple_form'
gem 'title'
gem 'uglifier'
gem 'unicorn'

group :development do
  gem 'guard-rspec'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'web-console'
end

group :development, :test do
  gem 'awesome_print'
  gem 'bundler-audit', require: false
  gem 'byebug'
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 3.1.0'
end

group :test do
  gem 'capybara-webkit', '>= 1.2.0'
  gem 'database_cleaner'
  gem 'formulaic'
  gem 'shoulda-matchers', require: false
  gem 'simplecov', require: false
  gem 'timecop'
  gem 'webmock'
end

group :staging, :production do
  gem 'rails_12factor'
  gem 'rails_stdout_logging'
end
