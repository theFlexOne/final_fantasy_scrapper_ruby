ENV["RACK_ENV"] ||= "development"

require "bundler/setup"
Bundler.require(:default, ENV["RACK_ENV"])

require_relative "../lib/home_page_scrapper.rb"
require_relative "../lib/ff_fandom_page_scrapper.rb"
require_relative "../lib/page_scrapper.rb"
