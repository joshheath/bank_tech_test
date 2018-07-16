class Account

  def initialize
    @balance = 0
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
