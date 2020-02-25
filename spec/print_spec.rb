# frozen_string_literal: true

require 'print'
require 'transaction'

describe Print do
  let(:deposit_transaction) {Transaction.new(100, nil, 100.00, Time.now)}
  let(:withdraw_transaction) {Transaction.new(nil, 100, 100.00, Time.now)}
  let(:statement) { [deposit_transaction, withdraw_transaction] }
  subject { described_class.new }

  it 'prints out statement based on an array' do
    # statement = [{ date: '24/02/2020', credit: 1000, balance: 1000.0 }, { date: '24/02/2020', credit: 2000, balance: 3000.0 }, { date: '24/02/2020', debit: 500, balance: 2500.0 }]
    # printed_statement = "date || credit || debit || balance\n24/02/2020 || 500.00 || || 2500.00\n24/02/2020 || || 2000.00 || 3000.00\n24/02/2020 || || 1000.00 || 1000.00\n" 
    # expect { Print.print(statement) }.to output(printed_statement).to_stdout
    p statement
    # expect(subject.print(statement))
  end

  # describe "#credit_or_debit" do
  #   it "returns nil if the amount is nil" do
  #     expect(subject.input(nil)).to eq nil
  #   end

  #   it "returns the amount with two decimal places if the amount exists" do
  #     expect(subject.input(1000)).to eq "1000.00"
  #     expect(subject.input(1000.99)).to eq "1000.99"
  #   end
  # end

end
