class Account
  def deposit(amount)
    @balance = amount
  end

  def balance
    @balance
  end

end

Given /^I have deposited \$(\d+) in my Account$/ do |amount|
    my_account = Account.new
    my_account.deposit(amount)
    my_account.balance.should eq(amount),
      "Expected the balance to be #{amount} but it was #{my_account.balance}"
end

When /^I request \$(\d+)/ do |request_amount|
  #pending("Need to design the request interface")
  puts request_amount
end

Then /^\$(\d+) should be deposited/ do |deposited_amount|
  #pending("Need to design the deposit interface")
  puts "The $#{deposited_amount} has been deposited!"
end
