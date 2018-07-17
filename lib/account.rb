require_relative 'statement'

class Account
  attr_reader :statement

  def initialize(statement = Statement.new)
    @balance = 0
    @date = Time.now.strftime("%d/%m/%Y")
    @statement = statement
  end

  def credit(date, amount)
    @balance += amount
    @statement.ledger.push({ date: @date, credit: amount, debit: 0, balance: @balance })
  end

  def debit(date, amount)
    @balance -= amount
    @statement.add({ date: @date, credit: 0, debit: amount, balance: @balance })
  end

  def balance
    return @balance
  end
end
