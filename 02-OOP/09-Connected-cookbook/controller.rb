require_relative "cookbook"



class Controller
  def initialize(file)
    # Here you should instantiate the Cookbook model with the file
    @cookbook = Cookbook.new(file)
    @file = file
  end

  # TODO: Implement the methods to retrieve, add, and delete recipes through the model

  def create_from_marmiton(ingredient)
    response = open("http://www.marmiton.org/recettes/recherche.aspx?aqt=#{ingredient}")


    doc = Nokogiri::HTML (response)

    doc.search('.m_search_result').each do |element|
        puts "#{element.search('.m_search_titre_recette > a').inner_text}"
        puts "Rating : #{element.search('.etoile1').size} / 5"

        time = /(\d+)/.match(element.search(".m_search_result_part4").inner_text)
        prep_time = time[1].to_i
        cook_time = time[2].to_i

        puts "Preparation time: #{prep_time} Cooking time: #{cook_time}"

        puts "#{/^\w[150]/.match(element.search('.m_search_result_part4').inner_text)}"

        puts "#{element.search(".m_search_nb_votes").inner_text}"

        @cookbook.add(name, description, rating, prep_time, cook_time, votes)
    end
  end

  def list_recipes
    # retrieve recipes of cookbook
    @cookbook.recipes
  end

  def add_recipe(name)
    @cookbook.add(name)
  end

  def delete_recipe(index)
    recipe_to_delete = @cookbook.find(index)
    @cookbook.destroy(index)
    recipe_to_delete
  end


end
