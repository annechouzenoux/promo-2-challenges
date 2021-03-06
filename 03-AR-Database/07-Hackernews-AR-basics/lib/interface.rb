require_relative 'config/application'
require_relative 'models/post'

def ask_and_get(param)
  puts "What is the #{param} of your piece of news?"
  gets.chomp
end

while true

  puts "Hey you, what do you want to do today? Enter <task_id>"
  puts "1. Create a post"
  puts "2. Read your posts"
  puts "3. Delete all posts"
  puts "4. Exit"

	choice =  gets.chomp.to_i

	case choice
  when 1
    name = ask_and_get("name")
    source_url = ask_and_get("source url")
    rating = ask_and_get("rating")
    #post = { name: name, source_url: source_url, date: Time.now, rating: rating }
    #TODO: use ActiveRecord to add a new entry to the DB
    Post.create(name: name, source_url: source_url, date: Time.now, rating: rating)
    #ou Post.create(post)
  when 2
    #TODO: use ActiveRecord to get all entries from the DB
    Post.all.each {|post| puts post}

    # Post.all est un Scope, objet manipulable sur lequel on peut appeler des requetes
    # = moyen de préparer une requete
  when 3
    #TODO: use ActiveRecord to delete all entries from the DB
    post = Post.all
    post.destroy

  when 4
    break
	end

end