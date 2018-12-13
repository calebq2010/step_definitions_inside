Then /^my account has been credited with \$(\d+)$/ do |amount|
    my_account.credit(amount)
end

Then /^the balance of my account should be \$(\d+)/ do |amount|
  my_account.balance.should eq(amount),
  "Expected the balance to be #{amount} but it was #{my_account.balance}"
end
