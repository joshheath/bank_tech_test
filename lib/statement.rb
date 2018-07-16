require_relative 'account'

class Statement
  attr_accessor :ledger

  def initialize
    @ledger = []
  end

  def add_transaction(transaction)
    @ledger << transaction
  end

  def header
    p "date || credit || debit || balance"
  end

end
