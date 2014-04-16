require_relative 'black_jack'

def play_game
  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card
  while asking_for_card? == true

  end

end

def state_of_the_game(score, bank)
  # TODO: Returns custom message with player's score and bank's score

  real_bank_score = bank_score
  player_score = 0
  player_score = player_score + pick_card

end

def asking_for_card?(score)
  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice

  word = gets.chomp
    puts "Do you want a card ? (type yes if you do, return if not)"
      if score < 21
          word = "yes"
          return true
      elsif word = ""
        return false
    end

end

def build_message_for(outcome)
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)

end
