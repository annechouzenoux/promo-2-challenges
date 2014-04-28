class Customer

  attr_reader :name, :adress, :phone

  def initialize(name, adress, phone)
    @name, @adress, @phone = name, adress, phone
  end

  def to_s
    "#{@name}, #{@adress}, #{@phone}"
  end
end

