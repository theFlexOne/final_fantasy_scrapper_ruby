require "pry"
require "httparty"
require "nokogiri"
require_relative "./constants/urls.rb"

class PageScrapper
  def initialize(endpoint)
    @endpoint = endpoint
    @full_page = get_page_for_scrapping(base_url, endpoint)
  end

  def base_url
    BASE_URL
  end

  private

  def get_page_for_scrapping(base_url, endpoint)
    Nokogiri::HTML(HTTParty.get(base_url + endpoint))
  end
end
