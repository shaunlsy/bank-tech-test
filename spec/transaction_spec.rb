require 'transaction'

describe Transaction do

  it "makes a deposit" do
    transaction = described_class.new(1000, nil, 2000)
    expect(transaction.credit).to eq 1000
    expect(transaction.debit).to eq nil
    expect(transaction.balance).to eq 2000
    expect(transaction.date).to eq Time.now
  end


end