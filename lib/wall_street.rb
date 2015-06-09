def max_profit stock_prices

  prices_index_by_day = stock_prices.map.with_index do |price, index|
    [index, price]
  end.to_h

  # produces a hash where the key is the day number and the hash
  # is the stock price on that day

  day_combinations = generate_day_combinations_from prices_index_by_day

  # produces an array with all possible buy/sell day combinations

  possible_profits = Hash.new

  day_combinations.each do |day_combo|
    possible_profits[prices_index_by_day[day_combo[1]]- prices_index_by_day[day_combo[0]]] = day_combo 
  end

  # produces a hash where each key is the profit and 
  # the value is the buy/sell day combo producing it

  maximum_profit = possible_profits.keys.max

  #find the max profit

  most_profitable_buy_sell_combo = possible_profits[maximum_profit]

  # finds the buy/sell combo that creates the max profit

  return ["buy_day: #{most_profitable_buy_sell_combo[0]}",
          "sell_day: #{most_profitable_buy_sell_combo[1]}"]

end

def generate_day_combinations_from array
  array.keys.combination(2)
end







