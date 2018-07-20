require 'account'

describe 'deposit, withdraw and print a bank statement' do

  subject(:account) { Account.new }
  let(:statement) { Statement.new }
  let(:printer) { Printer.new }

  it 'stores transactions, dates and an ongoing balance' do
    date1 = "11/12/2013"
    date2 = "12/12/2013"
    date3 = "13/12/2013"

    account.credit(date1, 1000)
    account.debit(date2, 700)
    account.credit(date3, 500)
    expect { account.produce_statement }.to output(%Q("date || credit || debit || balance"\n13/12/2013 || 500.00 || 0.00 || 800.00\n12/12/2013 || 0.00 || 700.00 || 300.00\n11/12/2013 || 1000.00 || 0.00 || 1000.00\n)).to_stdout
  end
end
