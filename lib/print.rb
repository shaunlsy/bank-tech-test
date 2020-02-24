# frozen_string_literal: true

# class to print out an array of hashes
class Print
  def self.print(statement)
    puts 'date || credit || debit || balance'
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
end
