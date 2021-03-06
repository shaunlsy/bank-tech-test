# frozen_string_literal: true

require 'print'
require 'transaction'

describe Print do
  subject { described_class.new }
  let(:deposit_transaction) { Transaction.new(100, nil, 100.00, Time.parse("25/02/2020")) }
  let(:withdraw_transaction) { Transaction.new(nil, 100, 100.00, Time.parse("25/02/2020")) }
  let(:statement) { [deposit_transaction, withdraw_transaction] }

  it 'prints out statement based on an array' do
    printed_statement = "date || credit || debit || balance\n25/02/2020 || || 100.00 || 100.00\n25/02/2020 || 100.00 || || 100.00\n"
    expect { subject.print(statement) }.to output(printed_statement).to_stdout
  end
end
