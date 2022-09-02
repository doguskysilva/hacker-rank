def flippingBits(n)
  bits = n.to_s(2)
  rest_bits = "0" * (32 - bits.length)
  bits_32 = rest_bits + bits
  flipped_bits_32 = bits_32.chars.map { | bit | bit == "1" ? "0" : "1" }

  flipped_bits_32.join.to_i(2)
end

RSpec.describe "test function lonelyinteger with rubist mode" do
  it "should be return expected values" do
    expect(flippingBits(1)).to eq(4294967294)
    expect(flippingBits(0)).to eq(4294967295)
    expect(flippingBits(2147483647)).to eq(2147483648)
  end
end

