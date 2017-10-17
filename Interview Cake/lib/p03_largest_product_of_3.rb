

# Given a list of integers, find the highest product you can get
# from three of the integers.


# The input list_of_ints will always have at least three integers.


def largest_product_of_3(array)
  arr = array.sort

  # pick out 1) the largest element,
  #          2) the second two largest elements
  #          3) the smallest 2 elements
  largest, largest_2, smallest_2 = arr[-1], arr[-3..-2], arr[0...2]

  # the largest product of 3 will be the largest element multiplied
  # by the maximum of either:
  # A) the product of 2nd and 3rd largest elements or
  # B) the product of the two most negative elements
  [ largest * largest_2.reduce(:*), largest * smallest_2.reduce(:*)].max
end



# # test cases # #



arr1 = (1..10).to_a.shuffle # random
arr2 = (1..10).to_a.shuffle.map { |e| e * -1 } # all negative numbers
arr3 = arr2 + [0] # all negatives and one zero
arr4 = arr2 + [1] # all negatives and positive one
arr5 = [5, 6, 10, 14, -1] # one negative number
arr6 = [5, 6, 10, 14, -1, -5] # two negative numbers with smaller product
arr7 = [9, 7, 8, 1, -7, -10] # two negative numbers with larger product

result1 = largest_product_of_3(arr1)
result2 = largest_product_of_3(arr2)
result3 = largest_product_of_3(arr3)
result4 = largest_product_of_3(arr4)
result5 = largest_product_of_3(arr5)
result6 = largest_product_of_3(arr6)
result7 = largest_product_of_3(arr7)

expect1 = 10 * 9 * 8
expect2 = -1 * -2 * -3
expect3 = 0
expect4 = -10 * -9 * 1
expect5 = 6 * 10 * 14
expect6 = 6 * 10 * 14
expect7 = 9 * -7 * -10

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
p " result = #{result5}"
p "expected: #{expect5}"
p  result5 == expect5
p ' ~~ test 6 ~~ '
p " result = #{result6}"
p "expected: #{expect6}"
p  result6 == expect6
p ' ~~ test 7 ~~ '
p " result = #{result7}"
p "expected: #{expect7}"
p  result7 == expect7
