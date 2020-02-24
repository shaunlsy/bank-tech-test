# frozen_string_literal: true

require 'time'

# this is bank
class Bank
  attr_reader :balance, :date, :statement

  def initialize(balance = 0.00)
    @balance = balance
    @statement = []
  end

  def deposit(amount, date = Time.now.to_s)
    @balance += amount
    @date = Time.parse(date).strftime('%d/%m/%Y')
    @statement << { date: @date, credit: amount, balance: @balance }
  end

  def withdraw(amount, date = Time.now.to_s)
    raise 'Balance not enough to withdraw' if (@balance - amount).negative?

    @balance -= amount
    @date = Time.parse(date).strftime('%d/%m/%Y')
    @statement << { date: @date, debit: amount, balance: @balance }
  end

  def print_statement
    puts 'date || credit || debit || balance'
    @statement.reverse.each do |transaction|
      if transaction.include?(:credit)
        puts format("#{transaction[:date]} || || %.2f || %.2f",
                    transaction[:credit], transaction[:balance])
      else
        puts format("#{transaction[:date]} || %.2f || || %.2f",
                    transaction[:debit], transaction[:balance])
      end
    end
  end
end
