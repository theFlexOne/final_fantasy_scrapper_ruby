require_relative "../page_scrapper"

class FFOfficialScrapper < PageScrapper
  BASE_URL = SITES[:official][:base_url]
  attr_reader :base_url, :titles_path
  attr_accessor :path

  @@titles_path = "/titles"

  def initialize(path = "/")
    super(BASE_URL, path)
  end

  def self.titles_path
    @@titles_path
  end

  def self.game_page_by_number(num)
    game_query_string = "/finalfantasy#{num}"
    path = titles_path + game_query_string
    self.page(BASE_URL, path)
  end

  def self.new_game_page_by_number(num)
    game_query_string = "/finalfantasy#{num}"
    path = titles_path + game_query_string
    self.new(path)
  end

  # def endpoint
  #   self.class.titles_path + super
  # end

  def character_names
    self.sections["Characters"].css("span.character__name").map do |character|
      character
    end.text.match(/\w+/).to_s
  end

  def character_images
    character_items
    portraits = self.sections["Characters"].css("img.character__thumb")
    full = self.sections["Characters"].css("img.character-detail__thumb")
    {
      portraits: portraits,
      full: full,
    }
  end

  def titles_page
  end

  def sections
    sections = page.css("section.discography__box")
    labels = sections.css("h3").map { |h3| h3.text.capitalize }
    labels.zip(sections).to_h
  end

  private

  def character_images_srcs
    self.character_images.map do |key, value|
      value.map { |v| v[:src] }
    end.flatten
  end

  def character_items
    self.sections["Characters"].css("li.character__item")
  end
end
