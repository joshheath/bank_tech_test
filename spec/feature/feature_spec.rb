require 'account'

describe 'deposit, withdraw and print a bank statement' do

  subject(:account) { Account.new }
  let(:statement) { Statement.new }
  let(:printer) { Printer.new}
  let(:ledger) { [{ date: date, credit: 500, debit: 0, balance: 800 }, { date: date, credit: 0, debit: 700, balance: 300 }, { date: date, credit: 1000, debit: 0, balance: 1000 }] }

  it 'stores transactions, dates and an ongoing balance' do

    # date = statement.format_date(date)

    date1 = "11/12/2013"
    date2 = "12/12/2013"
    date3 = "13/12/2013"

    account.credit(date1, 1000)
    account.debit(date2, 700)
    account.credit(date3, 500)
    expect { account.produce_statement }.to output(%Q("date || credit || debit || balance"\n#{date3} || 500.00 || 0 || 800.00\n#{date2} || 0 || 700.00 || 300.00\n#{date1} || 1000.00 || 0 || 1000.00\n)).to_stdout
  end
end
