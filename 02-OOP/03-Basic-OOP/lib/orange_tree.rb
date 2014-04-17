

class OrangeTree

  attr_accessor :age, :height, :fruits, :alive

  def initialize
    @age = 0
    @height = 0
    @fruits = 0
    @alive = true
  end

  def one_year_passes!
    ages
    grows
    produce_fruits
  end

  def ages
    @age += 1 unless dead?
  end

  def grows
    if @age.between?(1, 10)
      @height += 1
    end
  end

  def produce_fruits
    if @age.between?(0, 5)
      @fruits = 0
    elsif @age.between?(6, 10)
      @fruits = 100
    elsif @age.between?(11, 15)
      @fruits = 200
    else
      @fruits = 0
    end
  end

  def dead?
    !alive?
  end


  def alive?

    if @age.between?(0, 50)
      @alive = true
    end
    if @age >= 100
      @alive = false
    end
    if @age.between?(51, 99)
      prob_to_die = rand(5)
      if prob_to_die == 0
        @alive = true
      else
        @alive = false
      end
    end
    @alive

  end

  def pick_a_fruit!
    @fruits = @fruits - 1
  end

end


