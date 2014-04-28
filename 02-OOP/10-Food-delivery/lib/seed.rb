class Seed
  attr_accessor :restaurant, :robert

  def initialize
  @restaurant = Restaurant.new("chez Bebert", "3, rue des saussaies")

  @robert = Manager.new("robert", "abcd", restaurant)
  roger = DeliveryBoy.new("roger", "123", restaurant)
  albert = DeliveryBoy.new("albert", "123", restaurant)
  martine = DeliveryBoy.new("martine", "123", restaurant)
  marcel = DeliveryBoy.new("marcel", "123", restaurant)
  restaurant.employees << robert
  restaurant.employees << roger
  restaurant.employees << albert
  restaurant.employees << martine
  restaurant.employees << marcel


  paillard = Customer.new("Romain Paillard","12 rue de l'hôtel de ville", "01-34-56-35-12")
  madonna = Customer.new("Madonna", "35 rue de la Paix", "01-84-39-71-14")
  mitterrand = Customer.new("Frederic Mitterrand", "3 rue du dragon", "06-86-39-71-14")
  sarkozy = Customer.new("Pierre Sarkozy", "6 rue de la lune", "06-81-33-71-14")

  restaurant.customers << paillard
  restaurant.customers << madonna
  restaurant.customers << mitterrand
  restaurant.customers << sarkozy

  order1 = robert.add_order(0,"margarita",1)
  order2 = robert.add_order(1,"quatri fromaggi",2)
  end
end