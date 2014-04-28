require_relative 'employee'

class DeliveryBoy < Employee

  attr_reader :name

  def initialize (name, password, restaurant)
    super
  end

  def complete_order(index)
    @restaurant.orders[index].delivered = true
  end

end

