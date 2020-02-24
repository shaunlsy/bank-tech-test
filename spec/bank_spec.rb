# frozen_string_literal: true

require 'bank'

describe Bank do
  subject { described_class.new }

  it 'has a balance of zero' do
    expect(subject.balance).to eq 0
  end

  it 'adds money into the balance' do
    subject.deposit(100, '14/01/2012')
    expect(subject.balance).to eq 100
  end

  describe '#withdraw' do
    it 'removes money from the balance' do
      subject.deposit(10_000, '14/01/2012')
      subject.withdraw(1, '15/01/2012')
      expect(subject.balance).to eq 9999
    end

    it 'raises an error if there is not enough money to be withdrawn' do
      expect { subject.withdraw(50000) }.to raise_error 'Balance not enough to withdraw'
    end
  end

  it 'prints out bank statement' do
    subject.deposit(2000, '14/01/2012')
    subject.withdraw(1000, '15/01/2012')
    statement = "date || credit || debit || balance\n15/01/2012 || 1000.00 || || 1000.00\n14/01/2012 || || 2000.00 || 2000.00\n"
    expect { subject.print_statement }.to output(statement).to_stdout
  end

end
