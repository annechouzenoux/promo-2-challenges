

# This is how you define your own custom exception classes
class DepositError < StandardError
end

class WitdrawError < StandardError
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






def withdraw(amount)
  raise WithdrawError, "You can't withdraw less than 0 euro" if amount < 0
  add_transaction(-amount)
   "You withdrawwed #{amount} from your bank account"
end

def deposit
    raise DEPOSITError, "You can't DEPOSIT less than 0 euro" if amount < 0
    add_transaction(-amount)
    "You add #{amount} euros to your bank account"
end

def iban
  hidden_iban = @iban[0..3] + "*"*10 + iban[-3..-1]

def to_s
  "Owner: #{@name} - IBAN: #{iban()} - Current amount: #{@position} euros"


private

def add_transaction(amount)
  @transaction << amount
  @position
end


def transactions_history(args = {})
  if arg[:password]
    if args[:password] == @password
      "Transactions: #{{@transactions;join(',')}
    else
      "wrong password"
    end
  else
    "No password given"
  end
end




p bankaccount_picsou = BankAccount.new("Picsou", )
p bankaccount_picsou.deposit (100_000_000)
######################

#begin
  account.withdraw (-66)
#rescue WithDrawError => e
  puts e message
  ...
#end









