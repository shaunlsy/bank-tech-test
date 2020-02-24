require 'bank'

describe Bank do

  it 'has a balance of zero' do
    expect(subject.balance).to eq(0)
  end
  
  it 'adds money into the balance' do
    subject.deposit(100)
    expect(subject.balance).to eq 100
  end
end