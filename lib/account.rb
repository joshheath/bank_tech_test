class Account

  def initialize
    @statement = []
  end

  def credit(amount)
    @statement << amount
  end

  def balance
    return @statement
  end
end
