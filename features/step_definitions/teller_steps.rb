When /^I withdrawal \$(\d+)/ do |request_amount|
  teller.withdrawal_from(my_account, request_amount)
end
