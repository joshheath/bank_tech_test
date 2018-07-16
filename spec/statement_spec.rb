require 'statement'

describe Statement do
  it "adds credits to the ledger array" do
    subject.credit_ledger(1000)
    expect(subject.ledger).to eq ["1000"]
  end
end
