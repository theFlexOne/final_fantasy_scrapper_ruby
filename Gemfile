source "https://rubygems.org"

gem "sinatra", "~> 2.1"
gem "activerecord", "~> 6.1"
gem "sinatra-activerecord"
gem "rake"
gem "sqlite3", "~> 1.4"
gem "require_all"
gem 'httparty', '~> 0.20.0'
gem 'nokogiri', '~> 1.13', '>= 1.13.3'

# These gems will only be used when we are running the application locally
group :development do
  gem "faker", "~> 2.18"
  gem "rerun"
  gem "pry"
end

# These gems will only be used when we are running tests
group :test do
  gem "database_cleaner"
  gem "rspec"
  gem "rack-test", "~> 1.1"
end


