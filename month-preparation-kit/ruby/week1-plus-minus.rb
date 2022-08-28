def plusMinus(arr)
  total_itens = arr.count
  positive_numbers = arr.count { |x| x.positive?() }
  negative_numbers = arr.count { |x| x.negative?() }
  zero_numbers = arr.count { |x| x == 0 }

  output = [positive_numbers, negative_numbers, zero_numbers].map { 
    |x| x.fdiv(total_itens)
  }

  for x in output do
    puts sprintf("%.6f", x)
  end
end

def plusMinus2(arr)
  total_itens = 0
  positive_numbers = 0
  negative_numbers = 0
  zero_numbers = 0

  for x in arr do
    total_itens += 1
    if x > 0
      positive_numbers += 1
    elsif x < 0
      negative_numbers += 1
    else
      zero_numbers += 1
    end
  end

  output = [positive_numbers, negative_numbers, zero_numbers]

  for x in output do
    puts sprintf("%.6f", x.fdiv(total_itens))
  end
end

arr = [-4, 3, -9, 0, 4, 1]

plusMinus arr
plusMinus2 arr
