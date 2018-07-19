require_relative 'account'
require_relative 'printer'

class Statement
  attr_accessor :ledger

  def initialize
    @ledger = []
  end

  def add(transaction)
    @ledger << transaction
  end

  def format_date(date)
    date.strftime("%d/%m/%Y")
  end
end
