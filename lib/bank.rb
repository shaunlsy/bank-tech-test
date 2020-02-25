# frozen_string_literal: true

require 'time'
require_relative 'print'
require_relative 'transaction'

# bank class for depost and withdraw money
class Bank
  attr_reader :balance, :date, :statement

  def initialize(balance = 0.00)
    @balance = balance
    @statement = []
  end

  def deposit(amount, date = Time.now)
    @balance += amount

    create_transaction(Time.parse(date), amount, nil)
  end

  def withdraw(amount, date = Time.now)
    raise 'Balance not enough to withdraw' if (@balance - amount).negative?

    @balance -= amount
    create_transaction(Time.parse(date), nil, amount)
  end

  def print_statement
    printer = Print.new
    printer.print(@statement)
  end

  private

  def create_transaction(date, credit = nil, debit = nil)
    transaction = Transaction.new(credit, debit, @balance, date)
    @statement << transaction
  end
end
