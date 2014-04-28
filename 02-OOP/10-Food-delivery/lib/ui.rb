require_relative 'manager'
require_relative 'employee'

def ask (string)
  puts string
  gets.chomp
end

def ask_for_id(string)
  puts string
  gets.chomp.to_i - 1
end

def identification(manager)
  right_username = false
  right_password = false
  user = nil
  wrong_username_message = true

  #checking username
  until right_username
    name = ask("What's your username?")
    manager.list_employees.each do |employee|
      if name == employee.name
        user = employee
        right_username = true
        wrong_username_message = false
      end
    end
    if wrong_username_message
      puts "Sorry #{name} does not exist"
    end
  end

  #checking if password matches username
  until right_password
    password = ask("Password ?")
    if password = user.password
      right_password = true
    else
      puts "Sorry, wrong password"
      password = ask("Password ?")
    end
  end

  #return employee object
  user
end
