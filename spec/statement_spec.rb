require 'account'

describe Account do
  it 'can display a bank statement' do
    account = Account.new
    expect(account.balance).to eq 0
  end

  it 'can accept credit' do
    account = Account.new
    account.credit(1000)
    expect(account.balance).to eq 1000
  end

  it "can debit the account" do
    account = Account.new

  end
end
