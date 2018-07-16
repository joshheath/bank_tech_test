require_relative 'account'

class Statement
  attr_accessor :ledger

  def initialize
    @ledger = []
  end

  def credit_ledger(amount)
    @ledger << amount.to_s
  end

  def header
    p "date || credit || debit || balance"
  end

end
