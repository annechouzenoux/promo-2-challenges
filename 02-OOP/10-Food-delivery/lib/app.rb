require_relative 'manager'
require_relative 'employee'
require_relative 'delivery_boy'
require_relative 'seed'
require_relative 'ui'

seed = Seed.new

puts "Welcome to #{seed.restaurant.name}"

user = identification(seed.robert)
status = user.class.to_s
username = user.name

options_manager = ["List customers", "Add customer", "View orders", "Add order", "Remove order", "List employees", "Log out"]
options_delivery_boy = ["View orders", "Complete order", "Log out"]

puts "Welcome, #{username}! Your access level is: #{status}"

running = true
while running

  puts "What would you like to do?"
  if status == "Manager"
    options_manager.each_with_index do |element, index|
      puts "#{index + 1}. #{element}"
    end
    puts "***************************************"
    choice = gets.chomp.to_i
    case choice
    when 1
      user.list_customers.each_with_index do |customer, index|
        puts "#{index + 1}- #{customer.to_s}"
      end
    when 2
      name = ask("Name?")
      adress = ask("Adress?")
      phone = ask("Phone?")
      user.add_customer(name, adress, phone)
      puts "#{name} sucessfully added to customer database!"
    when 3
      user.view_orders.each_with_index do |element, index|
        puts "#{index + 1}- #{element.to_s}"
      end
    when 4
      index_customer = ask_for_id("For which customer?")
      index_delivery_boy = ask_for_id("For which delivery boy?")
      items = ask("What items ?")
      user.add_order(index_customer, items, index_delivery_boy)
      puts "Your order has been sucessfully added!"
    when 5
      order = ask_for_id("Which order ?")
      user.remove_order(order)
      "Your order has been sucessully removed!"
    when 6
      user.list_employees.each_with_index do |employee, index|
        puts "ID: #{index} - #{employee.to_s} #{employee.class.to_s}"
      end
    when 7
      running = false
    else
      puts "I did not understand your choice"
    end
  else
    options_delivery_boy.each_with_index do |element, index|
      puts "#{index + 1}. #{element}"
    end
    puts "***************************************"
    choice = gets.chomp.to_i
    case choice
    when 1
      user.view_orders.each_with_index do |element, index|
        puts "#{index + 1}- #{element.to_s}"
      end
    when 2
      index = ask_for_id("which order?")
      user.complete_order(index)
    when 3
      running = false
    else
      puts "I did not understand your choice"
    end
  end
  puts "***************************************"
end

exit



