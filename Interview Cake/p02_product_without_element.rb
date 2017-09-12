def product_with_current_element(arr)
  arr.each_index.map { |i| (arr[0...i] + arr[i + 1..-1]).reduce(:*) }
end

# # test cases # #

arr1 = [1, 2, 3, 4]
arr2 = [5, 6, 7, 8]
arr3 = [0, 4, 2, 1]

result1 = product_with_current_element(arr1)
result2 = product_with_current_element(arr2)
result3 = product_with_current_element(arr3)

expect1 = [ 2 * 3 * 4, 1 * 3 * 4, 1 * 2 * 4, 1 * 2 * 3 ]
expect2 = [ 6 * 7 * 8, 5 * 7 * 8, 5 * 6 * 8, 5 * 6 * 7 ]
expect3 = [ 4 * 2 * 1, 0 * 2 * 1, 0 * 4 * 1, 0 * 4 * 2 ]

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