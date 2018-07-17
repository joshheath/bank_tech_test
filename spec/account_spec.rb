require 'account'
require 'statement'

describe Account do
  date = Time.new(2018, 7, 16).strftime("%d/%m/%Y")

  it 'displatys a starting balance of zero' do
    expect(subject.balance).to eq 0
  end

  it 'can credit the balance' do
    subject.credit(1000, date)
    expect(subject.balance).to eq 1000
  end

  it "can debit the balance" do
    subject.credit(1000, date)
    subject.debit(500, date)
    expect(subject.balance).to eq 500
  end
end
