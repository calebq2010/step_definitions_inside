class Account
  def deposit(amount)
  end

  def balance
  end
end

Given /^I have deposited \$(\d+) in my Account$/ do |amount|
    my_account = Account.new
    my_account.deposit(amount.to_i)
    my_account.balance.should eq(amount.to_i),
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
