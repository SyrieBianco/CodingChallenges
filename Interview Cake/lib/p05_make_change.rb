

# Your quirky boss collects rare, old coins...
# They found out you're a programmer and asked you to solve something
# they've been wondering for a long time.


# Write a function that, given:
#
# an amount of money
# a list of coin denominations
# computes the number of ways to make the amount of money with coins of
# the available denominations.
#
#   Example:
#     for amount = 44 (44¢) and
#     denominations = [1,2,3] (1¢, 2¢ and 3¢),
#     your program would output ~*~ 4 ~*~
#     the number of ways to make 4¢ with those denominations:
#
#       1.   1¢, 1¢, 1¢, 1¢
#       2.   1¢, 1¢, 2¢
#       3.   1¢, 3¢
#       4.   2¢, 2¢


def make_change(amount, coins)
  cache = Hash.new { |cache, amount| cache[amount] = [] }
  cache_builder(amount, coins, cache)[amount].count
end



def cache_builder(amount, coins, cache)
  valid_coins = coins.select { |coin| coin <= amount }

  valid_coins.each do |coin|
    remainder = amount - coin

    if remainder.zero?
      cache[amount] << [coin]
    else
      results = cache_builder(remainder, valid_coins, cache)[remainder]
      results.each do |result|
        new_combo = ([coin] + result).sort
        cache[amount] << new_combo unless cache[amount].include?(new_combo)
      end
    end
  end

  cache
end




denoms1 = [1, 5, 10]
denoms2 = [1, 2, 3, 5, 10]
denoms3 = [5, 10, 11]

amount1 = 4
amount2 = 11


result1 = make_change(amount1, denoms1).sort
result2 = make_change(amount2, denoms1).sort
result3 = make_change(amount1, denoms2).sort
result4 = make_change(amount1, denoms3).sort

expect1 = [[1, 1, 1, 1]].sort
expect2 = [[1, 10], [1, 5, 5], [1, 1, 1, 1, 1, 1, 5],
           [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]].sort
expect3 = [[1, 1, 1, 1], [1, 1, 2], [1, 3], [2, 2]].sort
expect4 = [].sort

puts ' ~~ test 1 ~~ '
puts " result = #{result1}"
puts "expected: #{expect1}"
puts  result1 == expect1
puts ' ~~ test 2 ~~ '
puts " result = #{result2}"
puts "expected: #{expect2}"
puts  result2 == expect2
puts ' ~~ test 3 ~~ '
puts " result = #{result3}"
puts "expected: #{expect3}"
puts  result3 == expect3
puts ' ~~ test 4 ~~ '
puts " result = #{result4}"
puts "expected: #{expect4}"
puts  result4 == expect4
