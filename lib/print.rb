# frozen_string_literal: true

# class to print out an array of hashes
class Print

  def print(statement)
    puts 'date || credit || debit || balance'
    statement.reverse.each do |transaction|
      if transaction.credit == nil
        puts "#{date_format(transaction.date)} || || #{'%0.2f' % transaction.debit} || #{'%0.2f' % transaction.balance}"
      else
        puts "#{date_format(transaction.date)} || #{'%0.2f' % transaction.credit} || || #{'%0.2f' % transaction.balance}"
      end
    end
  end

  def date_format(date)
    date.strftime('%d/%m/%Y')
  end

end
