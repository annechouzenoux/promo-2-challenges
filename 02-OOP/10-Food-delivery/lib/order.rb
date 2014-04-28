class Order
  attr_accessor :delivered
  attr_reader :customer, :items, :delivery_boy

  def initialize(customer, items, delivery_boy)
    @delivered = false
    @customer, @items, @delivery_boy = customer, items, delivery_boy
  end

  def to_s
    if @delivered
      status = "delivered"
    else
      status = "pending"
    end
    "#{@customer.name} #{@items} #{@delivery_boy.name} #{status}"
  end
end


