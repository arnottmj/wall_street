# def max_profit array

#   method = array.combination(2).map {|i| i + [i[1]-i[0]]}.sort_by {|j| j[2]}.last

#   buy_day = array.index(method[0])
#   sell_day = array.index(method[1])
#   profit = array[2]

#   return ["buy_day: #{buy_day}", "sell_day: #{sell_day}" ]

# end


def max_profit array

  hash = Hash.new

  i = 0

  array.each do |j|
    hash[i] = j
    i += 1
  end

  day_combinations = hash.keys.combination(2)

  hash_new = Hash.new

  day_combinations.each do |k|

    hash_new[hash[k[1]]-hash[k[0]]] = k
  end

  max = hash_new.keys.sort.last

  combo = hash_new[max]

  return ["buy_day: #{combo[0]}", "sell_day: #{combo[1]}"]

end





