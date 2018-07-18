require 'account'
require 'statement'

describe Account do
  date = Time.new(2018, 7, 18).strftime("%d/%m/%Y")

  it 'displays a starting balance of zero' do
    expect(subject.balance).to eq 0
  end

  it 'can credit the balance' do
    subject.credit(990.00)
    expect(subject.balance).to eq 990.00
  end

  it "can debit the balance" do
    subject.credit(1000.00)
    subject.debit(500.00)
    expect(subject.balance).to eq 500.00
  end

  it "adds credit to the statement ledger" do
    subject.credit(750.00)
    subject.debit(500.00)
    expect(subject.statement.ledger).to eq [{ date: date, credit: 750.00, debit: 0, balance: 750.00 }, { date: date, credit: 0, debit: 500.00, balance: 250.00 }]
  end
end
