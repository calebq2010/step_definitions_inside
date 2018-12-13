require 'sinatra'
get '/' do
  'Welcome to our nice bank.'
end

class Account
  def validate(pin)
    testpin = '1234'

    pin == testpin or raise("Invalid Pin")
  end

  def credit(amount)
    @balance = amount
  end

  def balance
    @balance
  end

  def debit(amount)
    @balance -= amount
  end

end

class Teller
  def initialize(cash_slot)
    @cash_slot = cash_slot
  end

  def withdraw_from(account, amount)
    account.debit(amount)
    @cash_slot.dispense(amount)
  end

end

class CashSlot
  def contents
    @contents or raise("I'm Empty!")
  end

  def dispense(amount)
    @contents = amount
  end
end
