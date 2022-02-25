require_relative "./page_scrapper.rb"
require_relative "./constants/urls.rb"

class FFFandomPageScrapper < PageScrapper
  def initialize(endpoint = "")
    super(BASE_URL, endpoint)
  end
end
