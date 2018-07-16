require 'account'

describe Account do
  it 'can display a bank statement' do
    expect(subject.balance).to eq 0
  end

  it 'can accept credit' do
    subject.credit(1000)
    expect(subject.balance).to eq 1000
  end

  it "can debit the account" do
    subject.credit(1000)
    subject.debit(500)
    expect(subject.balance).to eq 500
  end
end
