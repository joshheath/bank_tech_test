class Account

  def initialize
    @statement = []
  end

  def deposit(amount)
    @statement << amount
  end

  def balance
    return @statement
  end
end
