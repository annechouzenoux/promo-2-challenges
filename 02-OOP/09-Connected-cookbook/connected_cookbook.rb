require 'csv'
require_relative 'recipe'
require_relative 'scaper'

class Cookbook

  attr_reader :recipes

  def initialize(file)
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
    @file = file
    load_csv(file)
  end

  # TODO: Implement the methods to retrieve all recipes, create, or destroy recipe
  def scrap(ingredient)
    scraper = ScraperMarmiton.new(ingredient)
    scraper.doc.search('m.search').each do |element|
      name = element.search('.m_search_titre_recette > a').inner_text
      rating = element.search('etoile1').size
      prep_time = 10 #element.search('m_search_result_part4').inner_text.match(/\d+/)[1]
      cooking_time = 10 #
      create(name, rating, preparation_time, cooking_time)
    end
  end


   def all
    @contents


  def create(name, rating, prep_time, cook_time)
    @contents << Recipe.new(name, description, rating, prep_time, cook_time, votes)
    save
      end
    end
    name
  end

  def save
    CSV.open(@file, "w") do |csv|
      @ontents.each do |recipe|
        csv << [recipe.name, recipe.rating, recipe.cook_time, recipe.prep_time]
      end
    end
  end



  def find(index)
    @recipes[index]
  end

  def destroy(index)

    @contents.delete_at(index)
  end

  # TODO: Implement a save method that will write the data into the CSV

  # And don't forget to use this save method when you have to modify something in your recipes array.

  private

  def load_csv(file)
    @contents = []
    CSV.foreach(file) do |row|
        @recipes << Recipe.new (row[0], row[1], row[2], row[3])
    end
  end
end




mycookbook = Cookbook.new('lib/recipes.csv')
mycookbook.create("Endives au jambon",4,20,10)
mycookbook.all.each do |recipe|
  p recipe.name
  p recipe.rating
  mycookbook.destroy(4)
end


