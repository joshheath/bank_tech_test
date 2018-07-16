require 'statement'
require 'account'

describe Statement do
  date = Time.now
  # it "shows additions to the ledger array" do
  #   subject.credit_ledger(1000)
  #   expect(subject.ledger).to eq ["1000"]
  # end

  it "adds transactions to the ledger" do
    subject.add_transaction({date: date, credit: 1000, debit: "", balance: 1000})
    expect(subject.ledger).to eq [{date: date, credit: 1000, debit: "", balance: 1000}]
  end

  it 'prints the top row of the statement' do
    expect(subject.header).to eq "date || credit || debit || balance"
  end

  it "can" do

  end
end
