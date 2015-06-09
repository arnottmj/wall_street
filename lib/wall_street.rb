def max_profit array

  method = array.combination(2).map {|i| i + [i[1]-i[0]]}.sort_by {|j| j[2]}.last

  buy_day = array.index(method[0])
  sell_day = array.index(method[1])
  profit = array[2]

  return ["buy_day: #{buy_day}", "sell_day: #{sell_day}" ]

end

stockprice = [3,10,2,4,11,5,15,5,9,8]

puts max_profit(stockprice)