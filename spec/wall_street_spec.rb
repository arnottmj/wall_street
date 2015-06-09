require 'wall_street'

describe 'max_profit' do

  it 'return "[buy_day: 5, sell_day: 8]" when stockprice = [10,2,5,8,9,1,6,7,9,8]' do
    expect(max_profit([10,2,5,8,9,1,6,7,9,8])).to eq ['buy_day: 5', 'sell_day: 8']
  end


end