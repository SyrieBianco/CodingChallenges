def make_change(amount, denoms)

end








denoms1 = [1, 5, 10]
denoms2 = [1, 2, 3, 5, 10]

amount1 = 4
amount2 = 11


result1 = make_change(amount1, denoms1).sort
result2 = make_change(amount2, denoms1).sort
result3 = make_change(amount1, denoms2).sort
result4 = make_change(amount2, denoms2).sort

expect1 = [[1, 1, 1, 1]].sort
expect2 = [[1, 10], [1, 5, 5], [1, 1, 1, 1, 1, 1, 5],
           [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]].sort
expect3 = [[1, 1, 1, 1], [1, 1, 2], [1, 3]].sort
expect4 = [].sort

p ' ~~ test 1 ~~ '
p " result = #{result1}"
p "expected: #{expect1}"
p  result1 == expect1
p ' ~~ test 2 ~~ '
p " result = #{result2}"
p "expected: #{expect2}"
p  result2 == expect2
p ' ~~ test 3 ~~ '
p " result = #{result3}"
p "expected: #{expect3}"
p  result3 == expect3
p ' ~~ test 4 ~~ '
p " result = #{result4}"
p "expected: #{expect4}"
p  result4 == expect4
p ' ~~ test 5 ~~ '
p " result : #{result5}"
p "expected: #{expect5}"
p  result5 == expect5
