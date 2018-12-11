require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'nice_bank')

#helper module
module KnowsMyDomain

  def my_account
    @my_account ||= Account.new
  end

  def cash_slot
    @cash_slot ||= CashSlot.new
  end

  def teller
    @tell ||= Teller.new(cash_slot)
  end
end

World(KnowsMyDomain)

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
  teller.withdraw_from(my_account, request_amount)
end

Then /^\$(\d+) should be dispensed/ do |dispensed_amount|
  #pending("Need to design the deposit interface")
  cash_slot.contents.should == dispensed_amount
end
