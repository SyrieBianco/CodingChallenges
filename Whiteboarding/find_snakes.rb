# [[2, 3, 3, 7, 8, 9],
#  [1, 4, 3, 6, 8, 10],
#  [2, 5, 2, 7, 8, 11],
#  [2, 3, 3, 7, 13, 12]]
#

# [2, 2] => [[], []]
# longest possible string of incremental numbers
# return "6 7 8 9 10 11 12 13"
# assume all positive numbers and valid input
# increment in one direction only
#
# Will need:
# Loop to go through inner array of 2D array
# Loop to go through every element within every inner array
# At a element - look to right, look below
# (make sure to not go out of range -- last inner array, last element in an array)
# results = [] -- push elements into results
# counter for string length

# Recursion
# Base case: surrounding elements do not continue incrementing (compare lengths)
# Recursive step: call function again to continue the string




def find_snakes(matrix)
  results = Hash.new { |hash, key| hash[key] = []}

  matrix.each_with_index do |row, row_i|
    row.each_with_index do |el, col_i|
      results = follow_snake(matrix, [row_i, col_i], el, results)
    end
  end

  return results
end

# helpers


def follow_snake(matrix, coord, el, results)
  next_coords = check_surroundings(matrix, coord, el)
  return results if next_coords.empty? && !results[coord].empty?

  results[coord]

end




def check_surroundings(matrix, coord, el)
  next_coords = []

  # add valid pos's
  next_coords << [row_i, col_i - 1] if col_i > 0
  next_coords << [row_i - 1, col_i] if row_i > 0
  next_coords << [row_i, col_i + 1] if col_i < matrix[row_i].length
  next_coords << [row_i + 1, col_i] if row_i < matrix[row_i].length

  #filter valid pos's
  next_coords.select do |pos|
    row, col = pos
    matrix[row][col] == el + 1
  end

end












#
