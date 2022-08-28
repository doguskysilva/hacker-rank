def timeConversion(s)
  isAm = s.include? "AM"
  h, m, s = s[0..-3].split(":")

  if isAm and h == "12"
    h = "00"
  elsif isAm == false and h != "12"
    h = h.to_i + 12
  end

  "#{h}:#{m}:#{s}"
end

puts timeConversion "07:05:45PM"
puts timeConversion "12:01:00PM"
puts timeConversion "12:01:00AM"
puts timeConversion "06:40:03AM"
