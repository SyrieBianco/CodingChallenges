# rect_1 = { 'x' => 2, 'y' => 3, 'w' => 3, 'h' => 3 }

def find_intersection(rect_1, rect_2)

  new_x = new_dims(rect_1[x], rect_2[x], rect_1[w], rect_2[w])
  new_y = new_dims(rect_1[y], rect_2[y], rect_1[h], rect_2[h])

 { 'x' => new_x['coord'], 'y' => new_y['coord'],
   'w' => new_x['length'], 'h' => new_y['length'] }
end


# output = { 'coord' => x/y value, 'length' => height/width value}
def new_dims(coord_1, coord_2, length_1, length_2)
  result = {}
  case coord_1 <=> coord_2
  when 0
    result['coord'] = coord_1
    result['length'] = [length_1, length_2].min
  when 1
    result = generate_results(coord_1, coord_2, length_1, length_2)
  when -1
    result = generate_results(coord_2, coord_1, length_2, length_1)
  end
  result
end


def generate_results(coord_1, coord_2, length_1, length_2)
  result = {}
  result['coord'] = coord_2
  result['length'] = [length_1 - (coord_2 - coord_1), length_2].min
  result
end

# ^
# |   rect a
# 5   .______________.
# |   |              |
# 4   |              |
# |   |              |
# 3   |     .________|__________.
# |   |     |        |          |
# 2   ._____|________.          |
# |         |                   |
# 1         .___________________.   rect b
# |
# 0 -- 1 -- 2 -- 3 -- 4 -- 5 -- >

rect_a = { 'x' => 1, 'y' => 2, 'w' => 3, 'h' => 3 }

rect_b = { 'x' => 3, 'y' => 7, 'w' => 4, 'h' => 3 }

# ^
# |   rect c
# 5   .______________________________.
# |   |                              |
# 4   |                              |
# |   |                              |
# 3   |     .___________________.    |
# |   |     |                   |    |
# 2   ._____|___________________|____.
# |         |                   |
# 1         .___________________.   rect d
# |
# 0 -- 1 -- 2 -- 3 -- 4 -- 5 -- >

rect_a = { 'x' => 1, 'y' => 2, 'w' => 3, 'h' => 3 }

rect_b = { 'x' => 3, 'y' => 7, 'w' => 4, 'h' => 3 }

# ^
# |   rect e
# 5   ._____.
# |   |     |
# 4   |     |
# |   |     |
# 3   ._____|_____________.
# |   |     |             |
# 2   |     |             |
# |   |     |             |
# 1   ._____._____________.   rect f
# |
# 0 -- 1 -- 2 -- 3 -- 4 -- 5 -- >

rect_a = { 'x' => 1, 'y' => 2, 'w' => 3, 'h' => 3 }

rect_b = { 'x' => 3, 'y' => 7, 'w' => 4, 'h' => 3 }

result_1 = { 'x' => 3, 'y' => 3, 'w' => 2, 'h' => 2 }



      rect1 = {
        'left_x'   => 0,
        'bottom_y' => 0,
        'width'    => 10,
        'height'   => 5
      }
