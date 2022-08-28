def miniMaxSum(arr)
  sorted = arr.sort
  puts "#{ sorted.first(4).reduce(0, :+) } #{ sorted.last(4).reduce(0, :+) }"
end


miniMaxSum [1, 2, 3, 4, 5]

