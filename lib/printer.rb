require_relative 'statement'

class Printer

  attr_reader :ledger

  def print(ledger)
    puts "date || credit || debit || balance"
    ledger.reverse_each do |entry|
      puts "#{entry[:date]} || #{entry[:credit]} || #{entry[:debit]} || #{entry[:balance]}\n"
    end
  end
end
