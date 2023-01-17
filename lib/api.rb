require "nokogiri"
require "open-uri"
require "pry"

class API
  BASE_URL = "http://books.toscrape.com/catalogue/category/books/"

  def self.get_book(category)
    case category
    when "1"
      cat = "young-adult_21/"
    when "2"
      cat = "travel_2/"
    when "3"
      cat = "mystery_3/"
    when "4"
      cat = "historical-fiction_4/"
    end
    endpath = "index.html"
    doc = Nokogiri::HTML(URI.open(BASE_URL + cat + endpath))
    # Add each to a collection
    doc.css("h3 a").collect do |title_name|
      # Iterate through the collection and puts the title
      puts title_name.attribute("title").text
    end
  end
end
