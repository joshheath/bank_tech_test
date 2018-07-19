require_relative 'statement'
require_relative 'printer'

class Account
  attr_reader :balance

  def initialize(statement = Statement.new, printer = Printer.new)
    @balance = 0
    @date = Time.now.strftime("%d/%m/%Y")
    @statement = statement
    @printer = printer
  end

  def credit(amount)
    @balance += amount
    @statement.add({ date: @date, credit: @printer.number_format(amount),
      debit: 0, balance: @printer.number_format(@balance) })
  end

  def debit(amount)
    @balance -= amount
    @statement.add({ date: @date, credit: 0, debit: @printer.number_format(amount),
      balance: @printer.number_format(@balance) })
  end

  def produce_statement
    @printer.print(@statement.ledger)
  end
end
