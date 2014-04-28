class OrangeTree

  attr_reader :height, :age, :fruits


  def initialize(age, height, fruits)
    @age = 0
    @height = 0
    @fruits = 0
    @dead = false
  end

  def one_year_passes
    unless @dead
      @age += 1
      grow_up
      grow_fruits
      may_die
    end
  end

  def pick_a_fruit
    if @fruits > 0
      @fruits -= 0
    end
  end

  def dead?
    @dead

  private

    def grow_up
      if @age.between?(1..10)
      @height += 1
      end
    end

    def grow_fruits
      if @age.between(6..10)
        @fruit = 100
      elsif @age(11..15)
        @fruit = 200
      else
        @fruit = 0
      end

    def may_die
      if @age == 100
        @dead = true
      elsif @age >= 50
        if rand(6)+1 == 6
        @dead = true
        end
      end
    end





end
oranger = OrangeTree.new
puts oranger.height

10.times {oranger.one_year_passes}
puts oranger.fruits



