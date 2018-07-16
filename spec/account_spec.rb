require 'account'

describe Account do
  it 'can display a bank statement' do
    expect(subject.balance).to eq 0
  end

  it 'can accept credit' do
    date = Time.new(2018, 7, 15).strftime("%d/%m/%Y")
    subject.credit(1000, date)
    expect(subject.balance).to eq 1000
  end

  it "can debit the account" do
    date = Time.new(2018, 7, 15).strftime("%d/%m/%Y")
    subject.credit(1000, date)
    subject.debit(500, date)
    expect(subject.balance).to eq 500
  end
end
