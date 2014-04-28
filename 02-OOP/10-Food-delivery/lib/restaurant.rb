class Restaurant
  attr_reader :name, :adress
  attr_accessor :customers, :employees, :orders

  def initialize(name, adress)
    @name, @adress = name, adress
    @customers = []
    @employees = []
    @orders = []
  end
end
