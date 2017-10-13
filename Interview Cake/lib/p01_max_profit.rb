
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
