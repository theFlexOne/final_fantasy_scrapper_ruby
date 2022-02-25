module Nav
  class NavLinks
  end

  def nav_elements_links
    self.nav_elements_links_html.map do |nav|
      nav.map { |l| { href: l[:href], label: l.text.strip } }
    end
  end

  def nav_elements_links_html
    self.nav_elements.map do |nav|
      nav.css("*[href]")
    end
  end

  def nav_elements
    self.css("nav")
  end
end
