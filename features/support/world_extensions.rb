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
