require_relative "./ff_fandom_page_scrapper.rb"
require_relative "../../../../lib/constants/urls.rb"

class FFHomePageScrapper < FFFandomPageScrapper
  ENDPOINT = ENDPOINTS[:home]

  def initialize()
    super(ENDPOINT)
  end

  def sections
    self.css(".portal")
  end

  def about
    section = self.sections.css(".about")
    {
      text: section.text.strip.gsub("\n", " "),
      hrefs: section.css("a").map { |a| a["href"] },
    }
  end

  def navigation
    section = self.sections.css(".navigation")
    categories = section.css(".category")
    labels = categories.map { |c| c.text.strip }
    hrefs = categories.css("a").map { |a| a["href"] }
    labels.zip(hrefs)
  end
end
