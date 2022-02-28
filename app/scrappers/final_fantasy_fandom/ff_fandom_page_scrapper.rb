require_relative "../page_scrapper"

class FFFandomPageScrapper < PageScrapper
  BASE_URL = SITES[:fandom][:base_url]

  def initialize(endpoint = "")
    super(BASE_URL, endpoint)
  end
end
