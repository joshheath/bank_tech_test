require 'statement'
require 'account'

describe Statement do
  date = Time.new(2018, 7, 16).strftime("%d/%m/%Y")

  it "adds transactions to the ledger" do
    subject.add({ date: date, credit: 1000, debit: 0, balance: 1000 })
    expect(subject.ledger).to eq [{ date: date, credit: 1000, debit: 0, balance: 1000 }]
  end

end
