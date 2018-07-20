require 'printer'

describe Printer do
  subject(:printer) { Printer.new }
  let(:date) { Time.new(2018, 7, 18).strftime("%d/%m/%Y") }
  let(:ledger) { [{ date: 18/07/2018, credit: 1000, debit: 0, balance: 1000 }] }
  let(:printer) {  double :printer, print: "18/07/2018 || 1000.00 || 0 || 1000.00"
   }


  it 'can print the statement' do
    expect(printer.print(ledger)).to eq("18/07/2018 || 1000.00 || 0 || 1000.00")
  end
end
