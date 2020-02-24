require 'print'

describe Print do

  it 'prints out statement based on an array' do
    statement = [{:date=>"24/02/2020", :credit=>1000, :balance=>1000.0}, {:date=>"24/02/2020", :credit=>2000, :balance=>3000.0}, {:date=>"24/02/2020", :debit=>500, :balance=>2500.0}]
    printed_statement = "date || credit || debit || balance\n24/02/2020 || 500.00 || || 2500.00\n24/02/2020 || || 2000.00 || 3000.00\n24/02/2020 || || 1000.00 || 1000.00\n"
    expect { Print.print(statement) }.to output(printed_statement).to_stdout
  end
end