require 'printer'
require 'statement'

describe Printer do
  subject(:printer) {Printer.new}
  date = Time.new(2018, 7, 17).strftime("%d/%m/%Y")

  let(:ledger) { [{date: date, credit: 100, debit: 0, balance: @balance}] }

  it 'can print the statement' do
    expect(printer.print).to include("date || credit || debit || balance")
  end
end
