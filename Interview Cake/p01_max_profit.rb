
def max_profit(prices)
  current_min, current_max = prices[0], prices[0]
  min_index, max_index = 0, 0

  max_difference = 0

  prices.each_with_index do |price, i|
    if price < current_min
      current_min, current_max = price, price
      min_index, max_index = i, i
    end

    if price > current_max
      current_max = price
      max_index = i
    end

    max_difference = current_max - current_min if min_index < max_index
  end

  max_difference
end




# # test cases # #



day_1 = [2, 7, 6, 10, 9, 4, 10, 7, 10, 10]
day_2 = [2, 5, 6, 5, 3, 6, 6, 4, 7, 1]
day_3 = [10, 7, 7, 8, 1, 8, 5, 7, 3, 8]

result1 = max_profit(day_1)
result2 = max_profit(day_2)
result3 = max_profit(day_3)

p ' ~~ test 1 ~~ '
p "result = #{result1}"
p  result1 == (10 - 2)
p ' ~~ test 2 ~~ '
p "result = #{result2}"
p  result2 == (7 - 2)
p ' ~~ test 3 ~~ '
p "result = #{result3}"
p  result3 == (8 - 1)
