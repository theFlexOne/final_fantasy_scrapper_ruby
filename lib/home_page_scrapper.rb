require_relative "./page_scrapper.rb"
require_relative "./constants/urls.rb"

class HomePageScrapper < PageScrapper
  ENDPOINT = ENDPOINTS[:home]

  def initialize()
    super(ENDPOINT)
  end
end
