# frozen_string_literal: true

# class to print out an array of hashes
class Print

  def self.print(statement)
    header = ["date", "credit", "debit", "balance"]
    display = []
    display << header
    return display
  end

  def create(statement)
    statement.reverse.each do |transaction|
      if transaction.include?(:credit)
        puts format("#{transaction[:date]} || || %.2f || %.2f",
                    transaction[:credit], transaction[:balance])
      else
        puts format("#{transaction[:date]} || %.2f || || %.2f",
                    transaction[:debit], transaction[:balance])
      end
    end
  end

  def credit_or_debit(amount)
    amount == nil ? nil : "#{"%.2f" % amount}"
  end
end

# @date = Time.parse(date).strftime('%d/%m/%Y')
# <Transaction:0x00007ffd38836638 @credit=100, @debit=nil, @balance=100.0, @date=2020-02-24 17:42:01 +0000>