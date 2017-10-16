

# Writing programming interview questions hasn't made me rich.
# Maybe trading Apple stocks will.


# Suppose we could access yesterday's stock prices as a list, where:
#
#       - The indices are the time in minutes past trade opening time, which was 9:30am local time.
#       - The values are the price in dollars of Apple stock at that time.
# So if the stock cost $500 at 10:30am, stock_prices_yesterday[60] = 500.
#
# Write an efficient function that takes stock_prices_yesterday and returns the best profit I could have made from 1 purchase and 1 sale of 1 Apple stock yesterday.
#
# For example:
#
#    stock_prices_yesterday = [10, 7, 5, 8, 11, 9]
#
#    get_max_profit(stock_prices_yesterday)
#    => returns 6 (buying for $5 and selling for $11)
#
#
# No "shorting"—you must buy before you sell. You may not buy and sell in the same time step (at least 1 minute must pass).

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
