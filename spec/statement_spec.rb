require 'statement'
require 'account'

describe Statement do
  it "is an array that can store credit" do
    subject.add(1000)
    expect(subject).to eq [1000]
  end
end
