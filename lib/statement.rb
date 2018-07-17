require_relative 'account'

class Statement
  attr_accessor :ledger

  def initialize
    @ledger = []
    @date = Time.now.strftime("%d/%m/%Y")
  end

  def add(transaction)
    self.ledger << transaction
  end

  def print
    header = "date || credit || debit || balance"
    @ledger.reverse_each do |entry|
      header << "\n "
      entry.each do |k, _v|
        header << "#{entry[k]} || "
      end
    end
    header
  end
end
