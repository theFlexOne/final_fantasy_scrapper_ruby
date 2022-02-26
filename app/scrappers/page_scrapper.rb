require "pry"
require "httparty"
require "nokogiri"
# require_relative "../../lib/constants/urls.rb"
require_relative "../../lib/modules/nav_module.rb"

class PageScrapper
  include Nav
  attr_reader :base_url
  attr_accessor :endpoint

  def initialize(base_url, endpoint = "/")
    @base_url = base_url
    @endpoint = endpoint
  end

  def self.page(url, endpoint)
    get_page_for_scrapping(url + endpoint)
  end

  def css(rule)
    page.css(rule)
  end

  def full_url
    self.base_url + self.endpoint
  end

  def page
    get_page_for_scrapping(self.full_url)
  end

  private

  def get_page_for_scrapping(url)
    Nokogiri::HTML(HTTParty.get(url))
  end

  def self.get_page_for_scrapping(url)
    Nokogiri::HTML(HTTParty.get(url))
  end
end
