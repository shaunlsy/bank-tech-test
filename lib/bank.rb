# frozen_string_literal: true

require 'time'
require_relative 'print'
require_relative 'transaction'

# this is bank
class Bank
  attr_reader :balance, :date, :statement

  def initialize(balance = 0.00)
    @balance = balance
    @statement = []
  end

  def deposit(amount, date=Time.now)
    @balance += amount

    create_transaction(amount, nil, date)
  end

  def withdraw(amount, date=Time.now)
    raise 'Balance not enough to withdraw' if (@balance - amount).negative?

    @balance -= amount
    create_transaction(nil, amount, date)
  end

  def print_statement
    printer = Print.new
    printer.print(@statement)
  end

  private

  def create_transaction(credit=nil, debit=nil, date)
    transaction = Transaction.new(credit, debit, @balance, date)
    @statement << transaction
  end

end
