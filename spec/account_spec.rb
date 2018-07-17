require 'account'
require 'statement'

describe Account do
  date = Time.new(2018, 7, 17).strftime("%d/%m/%Y")

  it 'displays a starting balance of zero' do
    expect(subject.balance).to eq 0
  end

  it 'can credit the balance' do
    subject.credit(date, 1000)
    expect(subject.balance).to eq 1000
  end

  it "can debit the balance" do
    subject.credit(date, 1000)
    subject.debit(date, 500)
    expect(subject.balance).to eq 500
  end

  it "adds credit to the statement ledger" do
    subject.credit(date, 750)
    subject.debit(date, 500)
    expect(subject.statement.ledger).to eq [{ date: date, credit: 750, debit: "", balance: 750 }, { date: date, credit: "", debit: 500, balance: 250 }]
  end
end
