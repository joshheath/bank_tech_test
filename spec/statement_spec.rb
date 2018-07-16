require 'statement'
require 'account'

describe Statement do

  it "shows additions to the ledger array" do
    subject.credit_ledger(1000)
    expect(subject.ledger).to eq ["1000"]
  end

  it 'prints the top row of the statement' do
    expect(subject.header).to eq "date || credit || debit || balance"
  end
end
