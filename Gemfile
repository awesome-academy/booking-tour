source "http://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.0"

gem "rails", "~> 5.2.3"
gem "bcrypt"
gem "kaminari"
gem "bootstrap-kaminari-views"
gem "carrierwave"
gem "mini_magick"
gem "ckeditor"
gem "rails-i18n"
gem "bootstrap-sass","3.3.7"
gem "jquery-rails"
gem "config"
gem "mysql2", ">= 0.4.4", "< 0.6.0"
gem "puma", "~> 3.11"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "rails-controller-testing"
gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "bootsnap", ">= 1.1.0", require: false

group :development, :test do
  gem "rspec-rails"
  gem "faker"
  gem "factory_bot_rails"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "shoulda-matchers"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :production do
  gem 'pg',  '0.20.0'
  gem 'fog', '1.42'
end

group :test do
  gem "capybara", ">= 2.15"
  gem "shoulda-matchers"
  gem "database_cleaner"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
