class Voter

  attr_writer :last_name
  attr_writer :adress

  def initialize(first_name, last_name, birthyear, gender, adress)
    @first_name = first_name
    @last_name = last_name
    @birthyear = birthyear
    @gender = gender
    @adress = adress
  end

  def full_name
    "Hello, my name is #{@first_name} #{@last_name}"
  end

  def candidates(candidate)
    @candidate = candidate
  end

  def i_voted(candidate)
    candidates(candidate)
    "I voted #{@candidate}"
  end
end


seb = Voter.new("Seb", "Saunier", "1985", "M", "15, rue du Petit-Musc, 75 004 Paris")
puts seb.full_name

seb.i_voted("NKM")
puts seb.i_voted("NKM")