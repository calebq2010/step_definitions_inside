class Account
  def deposit(amount)
    @balance = amount
  end

  def balance
    @balance
  end

end

class Teller
  def withdraw_from(account, amount)

  end

end

module KnowsMyAccount
  def my_account
    @my_account ||= Account.new
  end
end

World(KnowsMyAccount)

#no longer used in Cucumber 3.0.0
# CAPTURE_A_NUMBER = Transform /^\d+$/ do |number|
#   number.to_i
# end

#ParameterType has replaced transform
ParameterType(
  name: 'CAPTURE_CASH_AMOUNT',
  regexp: /^$(\d+$)/,
  transformer: -> (number) { number.to_i }
)

Given /^I have deposited \$(\d+) in my account$/ do |amount|
    my_account.deposit(amount)
    my_account.balance.should eq(amount),
      "Expected the balance to be #{amount} but it was #{my_account.balance}"
end

When /^I withdrawal \$(\d+)/ do |request_amount|
  teller = Teller.new
  teller.withdraw_from(@my_account, request_amount)
end

Then /^\$(\d+) should be dispensed/ do |deposited_amount|
  #pending("Need to design the deposit interface")
  puts "The $#{deposited_amount} has been dispensed!"
end
