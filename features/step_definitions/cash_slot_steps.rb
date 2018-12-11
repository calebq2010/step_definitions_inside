Then /^\$(\d+) should be dispensed/ do |dispensed_amount|
  #pending("Need to design the deposit interface")
  cash_slot.contents.should == dispensed_amount
end
