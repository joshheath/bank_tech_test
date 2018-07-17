require_relative 'statement'

class Printer

  attr_reader :ledger

  def print
    header
    # @statement.ledger.reverse do |entry|
    #   header << "\n "
    #   entry.each do |k, v|
    #     header << "#{entry[k]} || "
    #   end
    # end
  end

  private
  def header
    "date || credit || debit || balance"
  end

end
