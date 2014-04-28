class Restaurant

  #TODO add relevant accessors if necessary
  attr_reader :city, :name, :average_rating

  def initialize(city, name)
    #TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @average_rating = "no visitor has given a rating yet"
    @ratings = []
  end


  #TODO: implement #filter_by_city and #rate methods

  def rate(rating)
    @rating << rating
    @average_rating = @ratings.reduce(:+) / @ratings.length

    # ou :
    #sum = 0
    #@ratings.each {|r| sum += r}
    #sum
  end

  def self.filter_by_city(restos, city)
    city_resto = []
    restos.each do |resto| resto
      city_resto << resto if resto.city == city
    end
    city_resto
  end

end





restos = []
restos << Restaurant.new("Paris", "Bocuse")
restos << Restaurant.new ("Lyon", "Chez bouchon")

Restaurant.filter_by_city(restos,"Lyon")