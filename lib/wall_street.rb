def max_profit array
  
  prices_index_by_day = array.map.with_index do |price, index|
    [index, price]
  end.to_h

  # produces a hash where the key is the day number and the hash
  # is the stock price on that day

  day_combinations = prices_index_by_day.keys.combination(2)

  # produces an array with all possible buy/sell day combinations

  hash_new = Hash.new

  day_combinations.each do |k|
    hash_new[prices_index_by_day[k[1]]- prices_index_by_day[k[0]]] = k 
  end

  # produces a hash where each key is the profit and 
  # the value is the buy/sell day combo producing it

  max = hash_new.keys.max

  #find the max profit

  combo = hash_new[max]

  # finds the buy/sell combo that creates the max profit

  return ["buy_day: #{combo[0]}", "sell_day: #{combo[1]}"]

end







