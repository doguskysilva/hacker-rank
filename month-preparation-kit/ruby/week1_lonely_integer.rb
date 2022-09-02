def lonelyinteger(arr)
  # this solution run for all array every time and stop when find a second item

  unique_number = 0

  for number in arr
    appear = 0

    for x in arr
      if x == number then
        appear += 1
      end

      if appear == 2 then
        break
      end
    end

    if appear == 1 then
      unique_number = number
      break
    end
  end

  unique_number
end

def lonelyinteger2(arr)
  arr.find { |number| arr.count(number) == 1}
end


RSpec.describe "test function lonelyinteger simple" do
  it "should be return expected values" do
    expect(lonelyinteger([1])).to eq(1)
    expect(lonelyinteger([1, 2, 3, 4, 3, 2, 1])).to eq(4)
  end
end

RSpec.describe "test function lonelyinteger with rubist mode" do
  it "should be return expected values" do
    expect(lonelyinteger2([1])).to eq(1)
    expect(lonelyinteger2([1, 2, 3, 4, 3, 2, 1])).to eq(4)
  end
end

