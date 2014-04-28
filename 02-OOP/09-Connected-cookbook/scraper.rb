require 'open-uri'
require 'nokogiri'



class Scraper

  attr_reader :doc

  def initialize(url)
    @url = url
    @temp_file = open(url)
    @doc = Nokogiri::HTML(@html_file)
  end
end


class ScraperMarmiton < Scraper

  def initialize(ingredient)
    url = "http://www.marmiton.org/recettes/recherche.aspx?aqt=#{ingredient}"
    super(url)
    @ingredient = ingredient
  end
end




#beanscraper = ScraperMarmiton.new ('haricot')

#p beanscraper


#beanscraper.doc.search('.m_search_result').each do |element|
#   puts "#{element.search('.m_search_titre_recette > a').inner_text}"
#  puts "Rating : #{element.search('.etoile1').size} / 5"


#end


