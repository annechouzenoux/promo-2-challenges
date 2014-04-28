

class = Recipes

  attr_reader :name, :description, :rating, :prep_time, :cook_time, :votes


  def initialize(name, description, rating, prep_time, cook_time, votes)
    @name = name
    @description = description
    @rating = rating
    @prep_time = prep_time
    @cook_time = cook_time
    @votes = votes
  end




