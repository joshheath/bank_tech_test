require 'account'

describe Account do
  let(:Account) { Account.new }
  let(:Printer) { Printer.new }
  let(:date) { Date.new }

  it 'displays a starting balance of zero' do
    expect(subject.balance).to eq 0
  end

  it 'can credit the balance' do
    subject.credit(date, 990.00)
    expect(subject.balance).to eq 990.00
  end

  it "can debit the balance" do
    subject.credit(date, 1000.00)
    subject.debit(date, 500.00)
    expect(subject.balance).to eq 500.00
  end
end
