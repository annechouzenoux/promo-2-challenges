

class UI
  TASKS = {
    list: "- List all recipes [list]",
    add:  "- Add a new recipe [add]",
    del:  "- Delete a recipe [del]",
    exit: "- Exit [exit]"
  }

  def initialize(controller)
    @controller = controller
    @running = true
  end

  def list
    # TODO: call the appropriate controller method with the proper argument(s)
    @controller.list.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name} #{recipe.prep_time} min"
    # TODO: format and display the retrieved data in a numbered list
    end
  end

  def add
    # TODO: ask the user a recipe name
    puts "Enter the name of your new recipe"
    name = gets.chomp

    uts "Enter the rating of your new recipe?"
    rating = gets.chomp

    puts "Enter the cook_time of your new recipe"
    cook_time = gets.chomp

    puts "Enter the prep_time of your new recipe"
    prep_time = gets.chomp



    # TODO: call the appropriate controller method with the proper argument(s)
    added_recipe = @controller.add(recipe_name, rating)

    puts "the recipe #{added_recipe} has been added"
  end

  def del
    # TODO: ask the user a recipe index
    # TODO: call the appropriate controller method with the proper argument(s)
    puts "which recipe do you want to delete (enter the <id>)?"

    index = gets.chomp.to_i

    deleted_recipes = @controller.delete_recipe(index - 1)

    puts "the recipe #{deleted_recipes} has been deleted"
  end

  def exit
    # TODO: exit the program
    # Hint: Take a look at the display method !
    @running = false
    puts "Bye-bye ! Have nice recipes !"
  end

  def user_input
    # TODO: Get the user input and return it
    gets.chomp

    # [OPTIONAL] You can think of the case where the user
    # enters a wrong choice.
  end

  def display
    puts "-- Welcome to the CookBook --"

    while @running
      print "\n"

      display_tasks
      dispatch(user_input)

      print "\n"
    end
  end

  ###
  ##  You don't need to modify the following methods !
  ###
  def display_tasks
    puts "What do you want to do? \n"
    puts TASKS.values
  end

  # The dispatch method takes a String or a Symbol as an argument
  # and calls the method with the same name.
  #
  #  Examples:
  #
  #   dispatch(:del) => Will call the `del` method in the current class
  #   dispatch("add") => Will call the `add` method in the current class
  #
  # To understand this, read the doc : http://ruby-doc.org/core-2.1.1/Object.html#method-i-send
  def dispatch(task)
    self.send(task.to_sym)
  end
end
