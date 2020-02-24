# frozen_string_literal: true

# class to print out an array of hashes
class Print

  def print(statement)
    header = ["date", "credit", "debit", "balance"]
    @display = []
    @display << header

  end

  def create(statement)
    
    statement.reverse.each do |transaction|
      display_array = []
      display_array << transaction.date.strftime('%d/%m/%Y')
      display_array << input(transaction.credit)
      display_array << input(transaction.debit)
      display_array << "#{'%0.2f' % transaction.balance}"
      @display << display_array
      # if transaction.include?(:credit)
      #   puts format("#{transaction[:date]} || || %.2f || %.2f",
      #               transaction[:credit], transaction[:balance])
      # else
      #   puts format("#{transaction[:date]} || %.2f || || %.2f",
      #               transaction[:debit], transaction[:balance])
      # end
    end
    
  end

  def input(amount)
    amount == nil ? nil : "#{'%.2f' % amount}"
  end

end

# <Transaction:0x00007ffd38836638 @credit=100, @debit=nil, @balance=100.0, @date=2020-02-24 17:42:01 +0000>