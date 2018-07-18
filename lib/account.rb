require_relative 'statement'
require_relative 'printer'

class Account
  attr_accessor :statement, :balance

  def initialize(statement = Statement.new, printer = Printer.new)
    @balance = 0
    @date = Time.now.strftime("%d/%m/%Y")
    @statement = statement
    @printer = printer
  end

  def credit(amount)
    @balance += amount
    @statement.add({ date: @date, credit: number_format(amount), debit: 0, balance: @balance })
  end

  def debit(amount)
    @balance -= amount
    @statement.add({ date: @date, credit: 0, debit: number_format(amount), balance: @balance })
  end

  def produce_statement
    @printer.print(@statement.ledger)
  end

  private

  def number_format(amount)
    sprintf('%.2f',amount)
  end

end
