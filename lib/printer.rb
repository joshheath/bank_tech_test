require_relative 'statement'
require 'date'

class Printer

  attr_reader :ledger

  def print(ledger)
    p header
    ledger.reverse_each do |entry|
      puts "#{entry[:date]} || #{entry[:credit]} || #{entry[:debit]} || #{entry[:balance]}\n"
    end
  end

  def header
    %Q(date || credit || debit || balance)
  end

  def number_format(amount)
    sprintf('%.2f', amount)
  end
end
