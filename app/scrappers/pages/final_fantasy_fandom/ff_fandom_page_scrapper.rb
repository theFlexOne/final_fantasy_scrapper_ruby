require_relative "../../page_scrapper.rb"
require_relative "../../../../lib/constants/urls.rb"

class FFFandomPageScrapper < PageScrapper
  BASE_URL = SITES[:fandom][:base_url]

  def initialize(endpoint = "")
    super(BASE_URL, endpoint)
  end
end
