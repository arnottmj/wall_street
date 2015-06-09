def max_profit array

  hash = Hash.new

  i = 0

  array.each do |j|
    hash[i] = j
    i += 1
  end

  # produces a hash where the key is the day number and the hash
  # is the stock price on that day

  day_combinations = hash.keys.combination(2)

  # produces an array with all possible buy/sell day combinations

  hash_new = Hash.new

  day_combinations.each do |k|

    hash_new[hash[k[1]]-hash[k[0]]] = k 
  end

  # produces a hash where each key is the profit and 
  # the value is the buy/sell day combo producing it

  max = hash_new.keys.max

  #find the max profit

  combo = hash_new[max]

  # finds the buy/sell combo that creates the max profit

  return ["buy_day: #{combo[0]}", "sell_day: #{combo[1]}"]

end







