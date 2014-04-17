
# This is how you define your own custom exception classes
class DepositError < StandardError
end

class BankAccount

  # Contract for the BankAccount class
  # - you can access full owner's name and position, but partial IBAN
  # - you cannot access full IBAN
  # - you can print partial account infos
  # - you can print transactions only with a password
  # - you can withdraw or deposit money
  # - You can see the balance of the account (through the position variable)

  attr_reader :name, :position

  MIN_DEPOSIT =  100

  def initialize(name, iban, initial_deposit, password)

    raise DepositError, "Insufficient deposit" unless initial_deposit > MIN_DEPOSIT
    @password = password
    @transactions = []
    @position = 0
    @name, @iban = name, iban
    @initial_deposit = initial_deposit

    add_transaction(initial_deposit)
  end

  def withdraw(amount)
    # TODO: Call add_transaction with the right argument
    @position -= amount
    # TODO: returns a string with a message
    puts "You've just withdrawn #{amount}€"
  end

  def deposit(amount)
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
    @position += amount
    puts "You've just deposit #{amount}€"
  end

  def transactions_history(args = {})
    # TODO: Check if there is a password and if so if it is correct
    # TODO: return a string displaying the transactions, BUT NOT return the transaction array !
      if  args[:password] == @password
        transaction.to_s
      elsif args[:password] != @password
        puts "wrong password"
      elsif args[:password] == nil
        puts "no password given !"
      end
  end

  def iban
    # TODO: Hide the middle of the IBAN like FR14**************606 and return it
    @iban = @iban[0, 3] + "*********" + [-3, -1]

  end

  def to_s
    # Method used when printing account object as string (also used for string interpolation)
    # TODO: Displays the account owner, the hidden iban and the position of the account
    "#{@name}"
    "#{@iban}"
    "#{@position}"
  end

  private

  def add_transaction(amount)
    # TODO: add the amount in the transactions array
    @transactions << amount
    # TODO: update the current position (which represents the balance of the account)
    position += amount
  end

end
