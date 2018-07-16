require 'statement'

describe Statement do
  it "has a ledger that is an array that can store numbers " do
    statement = Statement.new
    statement.add(1000)
    expect(@ledger).to eq [1000]
  end
end
