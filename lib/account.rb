require_relative 'statement'

class Account
  def initialize(statement = Statement.new)
    @balance = 0
    @date = Time.now.strftime("%d/%m/%Y")
    @statement = statement
  end

  def credit(amount, date)
    @balance += amount
    @statement.add_transaction({ date: date, credit: amount, debit: "", balance: @balance })
  end

  def debit(amount, date)
    @balance -= amount
  end

  def balance
    return @balance
  end
end
