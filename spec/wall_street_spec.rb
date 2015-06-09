require 'wall_street'

describe 'max_profit' do

  it 'return the most profitable buy day and sell day combination' do
    expect(max_profit([10,2,5,8,9,1,6,7,9,8])).to eq ['buy_day: 5', 'sell_day: 8']
  end


end