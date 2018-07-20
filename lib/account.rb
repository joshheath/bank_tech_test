require_relative 'statement'
require_relative 'printer'
require 'date'

class Account
  attr_reader :balance

  def initialize(statement = Statement.new, printer = Printer.new)
    @balance = 0
    # @date = Time.now.strftime("%d/%m/%Y")
    @statement = statement
    @printer = printer
  end

  def credit(date = Time.now.format_date, amount)
    @balance += amount
    @statement.add({ date: date, credit: amount,
      debit: 0, balance: @balance })
  end

  def debit(date = Time.now.format_date, amount)
    @balance -= amount
    @statement.add({ date: date, credit: 0, debit: amount,
      balance: @balance })
  end

  def produce_statement
    @printer.print(@statement.ledger)
  end
end
