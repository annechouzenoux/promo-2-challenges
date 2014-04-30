require_relative 'config/application'
require_relative 'models/post'
require_relative 'models/user'

#TODO: that's the entry point of your app

# Build a complete Hacker News application that you will run in the terminal
# with `ruby interface.rb`

# This application is a library for tech posts. Here is what you will be able to do:

# * Login or Register as user
# * See your posts or search for other posts with different filtering options
# * Vote for posts you like
# * Submit new posts

# Example:

#  Welcome on LeWagonNews!

#  Are you already a member ? y/n
#  If yes => what is your email ?
#  If no => you can register by giving your name and email

#  What do you want to do ?
#  1. See all posts (list_<filter>) filter = by_date or by_ratings
#  2. Vote for a post (vote_<post_id_>)
#  3. See your posts (me)
#  4. Submit a new post (add)
#  5. Delete a post (del)
#  6. exit (exit)
#  ```

# **Warning**: you should be careful to database validations and return correct
#messages when database validations fail. For example,
#if someone registers with an email that already exists, you have to return
#the correct error message.

# Try to separate responsibilities with different controllers
# (e.g. to handle sessions or posts) and corresponding views

 +
 +puts "Welcome on LeWagonNews!"
 +logged_in = false
 +until logged_in == true
 +  puts " Are you already a member ? y/n"
 +  choice = gets.chomp.downcase
 +  if choice == "n"
 +    puts "What's your name?"
 +    name = gets.chomp
 +    puts "What's your email?"
 +    email = gets.chomp
 +    user = User.new({name: name, email: email})
 +    if user.valid?
 +      user.save
 +      logged_in = true
 +    else
 +      user.error.messsages
 +    end
 +  elsif choice == "y"
 +    puts "What's your name?"
 +    name = gets.chomp
 +    user = User.find_by name: name
 +    if user
 +      puts "What's your email?"
 +      email = gets.chomp
 +      if email == user.email
 +        logged_in = true
 +      else
 +        puts "Sorry, wrong email"
 +      end
 +    else
 +      puts "Sorry, your name is not registered."
 +    end
 +  end
 +end
 +
 +puts "Welcome #{user.name}!"
 +programme_running = true
 +while programme_running






def ask_and_get(param)
  puts "What is the #{param} of the post ?"
  gets.chomp
end

puts "Welcome on LeWagonNews !"

logged_in = false
until logged_in
    puts "Are you already a member ? (y/n)"
    choice = gets.chomp.downcase
    if choice = "n"
      puts "What is your name ?"
      name = gets.chomp
      puts "What is your email ?"
      email = gets.chomp
      user = User.new(name: name, email: email) #pas de la vue
      if user.valid? #pas de a vue
        user.save     #pas de la vue
        logged_in = true
      else
        user.error.message
      end
    elsif choice = "y"
      puts "What is your name ?"
      name = gets.chomp
      user = User.find_by name: name #pas de la vue
        if user
          puts "What is your email ?"
          email = gets.chomp       #pas de la vue
          if email = user.email
            logged_in = true
          else
            puts "Sorry, wrong email"
          end
        else
           puts "Sorry, your name is not registered"


    begin
      user = User.find(id)
    rescue #RecordNotFound
      puts "Error !"
      logged_in = false
    end


  end

  puts "Hey #{user.name}, what do you want to do ? Enter <task_id>"
  puts "1. See all posts (list_<filter>) filter = by_date or by_ratings"
  puts "2. Vote for a post (vote_<post_id_>)"
  puts "3. See your posts (me)"
  puts "4. Submit a new post (add)"
  puts "5. Delete a post (del)"
  puts "6. exit (exit)"

  choice = gets.chomp.to_i

  case choice

  when 1
    puts "Do you want to filter the posts <by_date> ot <by_ratings> ?"
    choice = gets.chomp

    by_date = ask_and_get("date")
      date.posts.each do |post|
          puts post
      end
    by_rating = ask_and_get("rating")
      rating.posts.each do |post|
        puts post
      end

  when 2



    name = ask_and_get("name")
    source_url = ask_and_get("source url")
    rating = ask_and_get("rating")
    post = { name: name, source_url: source_url, date: Time.now, rating: rating, #user: user #(ou user_id: user.id) }

    #TODO: use ActiveRecord to add a new post for the user logged in!
    #Post.create(post)
    #ou:
    user.posts.create(post) #en enlevant user: dans le post

  when 3
    #TODO: use ActiveRecord to get all posts of the current user
    user.posts.each do |post|
      puts post

  when 4


  when 5
    #TODO: use ActiveRecord to delete all posts of current user
    user.posts.destroy_all

  when 6
    break
  end

end

