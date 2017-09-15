def row_sum_odd_numbers(i)
  range = (0...i).reduce(:+)
  (range * 2) * (i + 1) + i
end

puts "Test 1"
puts "Input: 1"
result1 = row_sum_odd_numbers(1)
expect1 = 1
test1 = result1 === expect1
puts test1 ? "~*~ PASSED ~*~" : "~*~ FAILED ~*~"
puts "expected: #{expect1}"
puts "  result: #{result1}"

puts "Test 2"
puts "Input: 2"
result2 = row_sum_odd_numbers(2)
expect2 = 8
test2 = result2 === expect2
puts test2 ? "~*~ PASSED ~*~" : "~*~ FAILED ~*~"
puts "expected: #{expect2}"
puts "  result: #{result2}"

puts "Test 3"
puts "Input: 3"
result3 = row_sum_odd_numbers(3)
expect3 = 27
test3 = result3 === expect3
puts test3 ? "~*~ PASSED ~*~" : "~*~ FAILED ~*~"
puts "expected: #{expect3}"
puts "  result: #{result3}"

puts "Test 4"
puts "Input: 4"
result4 = row_sum_odd_numbers(4)
expect4 = 64
test4 = result4 === expect4
puts test4 ? "~*~ PASSED ~*~" : "~*~ FAILED ~*~"
puts "expected: #{expect4}"
puts "  result: #{result4}"

puts "Test 5"
puts "Input: 5"
result5 = row_sum_odd_numbers(5)
expect5 = 125
test5 = result5 === expect5
puts test5 ? "~*~ PASSED ~*~" : "~*~ FAILED ~*~"
puts "expected: #{expect5}"
puts "  result: #{result5}"

puts "Test 6"
puts "Input: 6"
result6 = row_sum_odd_numbers(6)
expect6 = 216
test6 = result6 === expect6
puts test6 ? "~*~ PASSED ~*~" : "~*~ FAILED ~*~"
puts "expected: #{expect6}"
puts "  result: #{result6}"

puts "Test 7"
puts "Input: 7"
result7 = row_sum_odd_numbers(42)
expect7 = 74088
test7 = result7 === expect7
puts test7 ? "~*~ PASSED ~*~" : "~*~ FAILED ~*~"
puts "expected: #{expect7}"
puts "  result: #{result7}"


puts "                    1                   =>   1"
puts "                 3     5                =>   8"
puts "              7     9    11             =>   27"
puts "          13    15    17    19          =>   64"
puts "       21    23    25    27    29       =>   125"
puts "    31    33    35    37    39    41    =>   216"
