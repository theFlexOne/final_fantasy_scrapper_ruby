ENV["RACK_ENV"] ||= "development"

require "bundler/setup"
Bundler.require(:default, ENV["RACK_ENV"])

require_relative "../app/scrappers/pages/final_fantasy_fandom/ff_home_page_scrapper.rb"
require_relative "../app/scrappers/pages/final_fantasy_fandom/ff_fandom_page_scrapper.rb"
require_relative "../app/scrappers/pages/final_fantasy_official/ff_official_scrapper.rb"
require_relative "../app/scrappers/page_scrapper.rb"
