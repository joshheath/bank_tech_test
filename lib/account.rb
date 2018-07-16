class Account
  attr_accessor :ledger

  def initialize
    @balance = 0
    @ledger = []
  end

  def credit(amount)
    @balance += amount
  end

  def debit(amount)
    @balance -= amount
  end

  def balance
    return @balance
  end

end
