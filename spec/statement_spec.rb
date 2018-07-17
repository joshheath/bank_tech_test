require 'statement'
require 'account'

describe Statement do
  date = Time.new(2018, 7, 16).strftime("%d/%m/%Y")

  it "adds transactions to the ledger" do
    subject.add({ date: date, credit: 1000, debit: 0, balance: 1000 })
    expect(subject.ledger).to eq [{ date: date, credit: 1000, debit: 0, balance: 1000 }]
  end

  # it 'prints the top row of the statement' do
  #   expect(subject.header).to eq "date || credit || debit || balance"
  # end

  it "can print out the header and transaction" do
    subject.add(date: date, credit: 1000, debit: 0, balance: 1000)

    expect(subject.print).to eq %Q(date || credit || debit || balance\n 16/07/2018 || 1000 || 0 || 1000 || )
  end

  it 'presents transactions with the most recent at the top' do
    subject.add(date: date, credit: 1000, debit: 0, balance: 1000)
    subject.add(date: date, credit: 0, debit: 500, balance: 500)

    expect(subject.print).to eq %Q(date || credit || debit || balance\n 16/07/2018 || 0 || 500 || 500 || \n 16/07/2018 || 1000 || 0 || 1000 || )
  end
end
