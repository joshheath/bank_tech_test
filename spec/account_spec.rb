require 'account'

describe Account do

  let(:printer) { double :printer, print_statement:
    "date || credit || debit || balance\n 18/07/2018 || 750.00 ||  || 750.00"
  }

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

  it "adds transactions to the statement" do
    subject.credit(750)
    subject.debit(500)
    expect(subject.produce_statement).to eq [{ :date => "18/07/2018", :credit => "750.00", :debit => 0, :balance => "750.00" }, { :date => "18/07/2018", :credit => 0, :debit => "500.00", :balance => "250.00" }]
  end
end
