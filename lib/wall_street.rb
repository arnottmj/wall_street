def max_profit array

  array.combination(2).map {|i| i + [i[1]-i[0]]}

end