source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '~> 5.2.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.6'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'simple_form', '~> 5.0', '>= 5.0.1'
gem 'jquery-rails'
gem 'ransack',         '~> 2.1', '>= 2.1.1', github: 'activerecord-hackery/ransack'
gem 'enumerize',       '~> 2.2', '>= 2.2.2'
gem 'jsonapi-rails'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails'
  gem 'better_errors'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rspec-rails', '~> 3.9'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'capybara-screenshot', '~> 1.0', '>= 1.0.24'
  gem 'database_cleaner', '~> 1.8', '>= 1.8.2'
  gem 'factory_bot_rails', '~> 5.1', '>= 5.1.1'
  gem 'selenium-webdriver', '~> 3.142', '>= 3.142.7'
  gem 'shoulda-matchers', '~> 4.2'
  gem 'webdrivers', '~> 4.2'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
