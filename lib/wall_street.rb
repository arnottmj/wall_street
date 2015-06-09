def max_profit stock_prices

  prices_indexed_by_day = index_prices_by_day(stock_prices)

  day_combinations = generate_day_combinations_from prices_indexed_by_day

  possible_profits = Hash.new

  day_combinations.each do |day_combo|
    possible_profits[prices_indexed_by_day[day_combo[1]]- prices_indexed_by_day[day_combo[0]]] = day_combo 
  end

  maximum_profit = possible_profits.keys.max

  most_profitable_buy_sell_combo = possible_profits[maximum_profit]


  ["buy_day: #{most_profitable_buy_sell_combo[0]}",
  "sell_day: #{most_profitable_buy_sell_combo[1]}"]
end

def generate_day_combinations_from array
  array.keys.combination(2)
end

def index_prices_by_day stock_prices
  stock_prices.map.with_index do |price, index|
    [index, price]
  end.to_h
end







