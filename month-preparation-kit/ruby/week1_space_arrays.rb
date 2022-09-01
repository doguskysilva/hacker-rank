def matchStrings(strings, queries)
  matchs = []

  for query in queries
    match = 0
    for string in strings
      if query == string then
        match += 1
      end  
    end
    matchs.push(match)
  end
  
  matchs
end

def matchStrings2(strings, queries)
  queries.map { |query| strings.count(query) }
end


RSpec.describe "test matchStrings" do
  it "should return empty list to empty inputs" do
    expect(matchStrings([], [])).to eq([])
  end

  it "should return correct match to strings" do
    expect(matchStrings(['ab', 'ab', 'abc'], ['ab', 'abc', 'bc'])).to eq([2, 1, 0]) 
    expect(matchStrings(['aba', 'baba', 'aba', 'xzxb'], ['aba', 'xzxb', 'ab'])).to eq([2, 1, 0])
    expect(matchStrings(['def', 'de', 'fgh'], ['de', 'lmn', 'fgh'])).to eq([1, 0, 1])
  end
end
    
RSpec.describe "test matchStrings2" do
  it "should return empty list to empty inputs" do
    expect(matchStrings2([], [])).to eq([])
  end

  it "should return correct match to strings" do
    expect(matchStrings2(['ab', 'ab', 'abc'], ['ab', 'abc', 'bc'])).to eq([2, 1, 0]) 
    expect(matchStrings2(['aba', 'baba', 'aba', 'xzxb'], ['aba', 'xzxb', 'ab'])).to eq([2, 1, 0])
    expect(matchStrings2(['def', 'de', 'fgh'], ['de', 'lmn', 'fgh'])).to eq([1, 0, 1])
  end
end

