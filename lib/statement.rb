require_relative 'account'
require_relative 'printer'

class Statement
  attr_accessor :ledger, :balance, :statement

  def initialize
    @ledger = []
  end

  def add(transaction)
    @ledger << transaction
  end
end
