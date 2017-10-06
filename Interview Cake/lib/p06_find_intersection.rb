# rect_1 = { 'x' => 2, 'y' => 3, 'w' => 3, 'h' => 3 }

def find_intersection(rect_1, rect_2)

  new_x = new_dims(rect_1['x'], rect_2['x'], rect_1['w'], rect_2['w'])
  new_y = new_dims(rect_1['y'], rect_2['y'], rect_1['h'], rect_2['h'])

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
    result = generate_results(coord_2, coord_1, length_2, length_1)
  when -1
    result = generate_results(coord_1, coord_2, length_1, length_2)
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
# 0 -- 1 -- 2 -- 3 -- 4 -- 5 -- 6 ->

rect_a = { 'x' => 1, 'y' => 2, 'w' => 3, 'h' => 3 }
rect_b = { 'x' => 2, 'y' => 1, 'w' => 4, 'h' => 2 }

result1 = find_intersection(rect_a, rect_b)
result2 = find_intersection(rect_b, rect_a)

expect1 = { 'x' => 2, 'y' => 2, 'w' => 2, 'h' => 1 }
expect2 = expect1

# ^
# 6         .___________________.
# |  rect c |                   | <-- rect d
# 5   ._____|___________________|____.
# |   |     |                   |    |
# 4   |     |                   |    |
# |   |     |                   |    |
# 3   |     .___________________.    |
# |   |     |                   | <--|--- rect b
# 2   ._____|___________________|____.
# |         |                   |
# 1         .___________________.
# |
# 0 -- 1 -- 2 -- 3 -- 4 -- 5 -- 6 -- 7 -- 8 ->

rect_c = { 'x' => 1, 'y' => 2, 'w' => 6, 'h' => 3 }
rect_d = { 'x' => 2, 'y' => 1, 'w' => 4, 'h' => 5 }


result3 = find_intersection(rect_b, rect_c)
result4 = find_intersection(rect_d, rect_c)

expect3 = { 'x' => 2, 'y' => 2, 'w' => 4, 'h' => 1 }
expect4 = { 'x' => 2, 'y' => 2, 'w' => 4, 'h' => 3 }

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

rect_e = { 'x' => 1, 'y' => 1, 'w' => 1, 'h' => 4 }
rect_f = { 'x' => 1, 'y' => 1, 'w' => 4, 'h' => 2 }

result5 = find_intersection(rect_e, rect_f)
result6 = find_intersection(rect_e, rect_e)

expect5 = { 'x' => 1, 'y' => 1, 'w' => 1, 'h' => 2 }
expect6 = rect_e

# not my test cases:
rect1 = { 'x' => 0, 'y' => 0, 'w' => 10, 'h' => 5 }
rect2 = { 'x' => 8, 'y' => 4, 'w' => 6, 'h' => 3 }
rect3 = { 'x' => 2, 'y' => 1, 'w' => 6, 'h' => 3 }


result7 = find_intersection(rect1, rect2)
result8 = find_intersection(rect1, rect3)

expect7 = { 'x' => 8, 'y' => 4, 'w' => 2, 'h' => 1 }
expect8 = rect3

puts ' ~~ test 1 ~~ '
puts "  result: #{result1}"
puts "expected: #{expect1}"
puts  result1 == expect1
puts ' ~~ test 2 ~~ '
puts "  result: #{result2}"
puts "expected: #{expect2}"
puts  result2 == expect2
puts ' ~~ test 3 ~~ '
puts "  result: #{result3}"
puts "expected: #{expect3}"
puts  result3 == expect3
puts ' ~~ test 4 ~~ '
puts "  result: #{result4}"
puts "expected: #{expect4}"
puts  result4 == expect4
puts ' ~~ test 5 ~~ '
puts "  result: #{result5}"
puts "expected: #{expect5}"
puts  result5 == expect5
puts ' ~~ test 6 ~~ '
puts "  result: #{result6}"
puts "expected: #{expect6}"
puts  result6 == expect6
puts ' ~~ test 7 ~~ '
puts "  result: #{result7}"
puts "expected: #{expect7}"
puts  result7 == expect7
puts ' ~~ test 8 ~~ '
puts "  result: #{result8}"
puts "expected: #{expect8}"
puts  result8 == expect8
