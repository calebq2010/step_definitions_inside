When /^I withdrawal \$(\d+)/ do |request_amount|
  teller.withdraw_from(my_account, request_amount)
end
