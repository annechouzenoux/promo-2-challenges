require_relative 'restaurant'

class Employee

  attr_reader :name, :password
  attr_accessor :restaurant

  def initialize (name, password, restaurant)
    @name, @password, @restaurant = name, password, restaurant
  end

  def to_s
    "#{@name}"
  end

  def view_orders
    @restaurant.orders
  end
end

