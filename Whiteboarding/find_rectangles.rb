# Imagine we have an image. We’ll represent this image as a simple
# 2D array where every pixel is a 1 or a 0.

# The image you get is known to have N rectangles of 0s on a background
# of 1s.

# Write a function that takes in the image and outputs the coordinates
# of all the 0 rectangles --
# op-left and bottom-right;
# or top-left, width and height.


def find_image(arr)
  result = {}
  top_lefts = []

  arr.each_with_index do |row, row_i|
    row.each_with_index do |el, col_i|

      if el == 0

        next if arr[row_i][col_i - 1] == 0
        next if row_i != 0 && arr[row_i - 1][col_i] == 0

        top_lefts << [row_i, col_i]
      end


    end
  end

  top_lefts.each do |top_left|
    width, height = 0, 0
    height_i, width_i = top_left

    until arr[top_left[0]][width_i] != 0
      width += 1
      width_i += 1
    end

    until height_i == arr.length || arr[height_i][top_left[1]] != 0
      height += 1
      height_i += 1
    end

    result[top_left] = [width, height]
  end

  result
end



# input:
image = [
  # 0  1  2  3  4  5  6
  [1, 1, 0, 1, 1, 1, 1], # 0
  [1, 1, 1, 1, 1, 1, 1], # 1
  [1, 1, 1, 0, 0, 0, 1], # 2
  [1, 0, 1, 0, 0, 0, 1], # 3
  [1, 0, 1, 1, 1, 1, 1], # 4
  [1, 0, 1, 0, 0, 1, 1], # 5
  [1, 1, 1, 0, 0, 1, 1], # 6
  [1, 1, 1, 1, 1, 0, 0], # 7
        ]



output = { [2, 3] => [3, 2], [3, 1] => [1, 3], [5, 3] => [2, 2] }
# [[coordinate], [w,h]]


puts "test 1"
p find_image(image)
