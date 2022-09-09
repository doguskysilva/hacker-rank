def diagonalDifference(arr)
  size = arr.first().count()
  diagonal_a = 0
  diagonal_b = 0
  limit = size - 1

  arr.each_with_index do | row, index |
    diagonal_a += row[index]
    diagonal_b += row[limit-index]
  end

  (diagonal_a - diagonal_b).abs
end

RSpec.describe "test function diagonalDifference" do
  it "should be return expected values" do
    expect(diagonalDifference([[11, 2, 4], [4, 5, 6], [10, 8, -12]])).to eq(15)
  end
end

