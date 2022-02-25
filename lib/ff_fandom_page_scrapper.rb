require_relative "./page_scrapper.rb"
require_relative "./constants/urls.rb"

class FFFandomPageScrapper < PageScrapper
  def initialize()
    super(BASE_URL)
  end
end
