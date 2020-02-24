require 'transaction'

describe Transaction do

  it "makes a deposit" do
    Timecop.freeze
    transaction = described_class.new(1000, nil, 2000, Time.now)
    expect(transaction.credit).to eq 1000
    expect(transaction.debit).to eq nil
    expect(transaction.balance).to eq 2000
    expect(transaction.date).to eq Time.now
  end

  it "makes a deposit" do
    Timecop.freeze
    transaction = described_class.new(nil, 1000, 2000, Time.now)
    expect(transaction.credit).to eq nil
    expect(transaction.debit).to eq 1000
    expect(transaction.balance).to eq 2000
    expect(transaction.date).to eq Time.now
  end

end