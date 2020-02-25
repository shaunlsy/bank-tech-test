# frozen_string_literal: true

# class to print out an array of hashes
class Print

  def print(statement)
    @header = ["date", "credit", "debit", "balance"]
    @full_display = []
    @full_display << @header
    create(statement)
    return format
  end

  def create(statement)
    statement.reverse.each do |transaction|
      display_array = []
      display_array << transaction.date.strftime('%d/%m/%Y')
      display_array << input(transaction.credit)
      display_array << input(transaction.debit)
      display_array << "#{'%0.2f' % transaction.balance}"
      @full_display << display_array
    end
  end

  def input(amount)
    amount == nil ? nil : "#{'%.2f' % amount}"
  end

  def format
    @full_display.map do |line|
      line.each_with_index do |word, index|
        result = []
        p word
        p header_length(index)
        result << word += (" " * (header_length(index) - word.length))
        p result
      end
    end

  end

  def header_length(index)
    return @header[index].length
  end

  def column_length(array)
    word_length = []
    array.each do |word|
      word_length << word.length
    end
    return word_length
  end

end



# <Transaction:0x00007ffd38836638 @credit=100, @debit=nil, @balance=100.0, @date=2020-02-24 17:42:01 +0000>
