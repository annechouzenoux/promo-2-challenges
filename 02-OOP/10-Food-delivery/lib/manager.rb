require_relative 'employee'
require_relative 'customer'
require_relative 'order'
require_relative 'delivery_boy'

class Manager < Employee

  attr_reader :name, :restaurant

  def initialize(name, password, restaurant)
    super
  end

  def list_customers
    @restaurant.customers
  end

  def add_customer(name, adress, phone)
    new_customer = Customer.new(name, adress, phone)
    @restaurant.customers << new_customer
  end

  def add_order(index_customer, items, index_delivery_boy)
    customer_object = @restaurant.customers[index_customer]
    delivery_boy_object = @restaurant.employees[index_delivery_boy]
    new_order = Order.new(customer_object, items, delivery_boy_object)
    @restaurant.orders << new_order
  end

  def remove_order(index)
    @restaurant.orders.delete_at(index)
  end

  def list_employees
    @restaurant.employees
  end

end





