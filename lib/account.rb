class Account

  def initialize
    @statement = [0]
  end

  def credit(amount)
    @statement << amount
  end

  def balance
    return @statement
  end
end
