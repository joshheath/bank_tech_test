require_relative 'account'

class Statement
  # attr_accessor :ledger

  def initialize
    @ledger = []
  end

  def add(amount)
    # ledger = []
    @ledger << amount
  end

end
