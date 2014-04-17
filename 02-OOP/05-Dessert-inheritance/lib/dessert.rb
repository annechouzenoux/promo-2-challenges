class Dessert

  attr_accessor :name, :calories

  def initialize(name, calories)
    @calories = calories
    @name = name
  end

  def healthy?
    #should return `true` if a dessert has less than 200 calories
    @calories < 200
  end

  def delicious?
    true
  end

end


class JellyBean < Dessert
  attr_reader :flavor

  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
    end
  end
  def delicious?
    (@flavor == "black licorice") ? false : true
    end
  end
end


pie = Dessert.new("Tarte", 300)
puts pie.healthy?
puts pie.delicious?

apple_jelly = JellyBean.new("Apple Jelly", 170, "apple")
puts apple_jelly.flavor

bad_jelly = JellyBean.new("Apple Jelly", 170, "black licorice")


puts apple_jelly.delicious?

puts bad_jelly.delicious?


bad_jelly.eat(3)



