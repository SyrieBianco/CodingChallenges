
def max_profit(prices)
  current_min, current_max = prices[0], prices[1]
  min_index, max_index = 0, 1

  max_profit = current_max - current_min

  prices.each_with_index do |price, i|
    # if the price now is lower than the current_min,
    # reassign current_min and _max and their indices
    if price < current_min
      current_min, current_max = price, price
      min_index, max_index = i, i
    end

    # if the price is bigger than the current_max,
    # reassign the max and its index

    if price > current_max
      current_max = price
      max_index = i
    end

    possible = current_max - current_min
    # only reassign the max_profit if the the max comes after the min
    max_profit = [max_profit, possible].max if min_index < max_index
  end

  max_profit
end




# # test cases # #



day_1 = [2, 7, 6, 10, 9, 4, 10, 7, 10, 10] # random selection
day_2 = [2, 5, 6, 5, 3, 6, 6, 4, 7, 1] # random selection
day_3 = [2, 7, 10, 8, 1, 6, 5, 7, 3, 6] # case where second min/max is less than first
day_4 = [10, 10, 9, 8, 8, 7, 6, 5, 4, 3] # constantly decreasing with plateaus
day_5 = (1..10).to_a.reverse # constantly decreasing

result1 = max_profit(day_1)
result2 = max_profit(day_2)
result3 = max_profit(day_3)
result4 = max_profit(day_4)
result5 = max_profit(day_5)

expect1 = (10 - 2)
expect2 = (7 - 2)
expect3 = (10 - 2)
expect4 = (8 - 8)
expect5 = (-1)

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
