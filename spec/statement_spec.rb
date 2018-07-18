require 'statement'
require 'account'

describe Statement do
  date = 16/7/2018

  it "adds transactions to the ledger" do
    subject.add({ date: date, credit: 1000, debit: 0, balance: 1000 })
    expect(subject.ledger).to eq [{ date: date, credit: 1000, debit: 0, balance: 1000.00 }]
  end

end
