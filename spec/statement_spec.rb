require 'account'

describe Account do
  it 'can display a bank statement' do
    account = Account.new
    account.credit(1000.00)
    expect(account.balance).to eq [1000.00]
  end
end
