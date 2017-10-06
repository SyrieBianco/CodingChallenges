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
# 0 -- 1 -- 2 -- 3 -- 4 -- 5 -- 6 ->

rect_a = { 'x' => 1, 'y' => 2, 'w' => 3, 'h' => 3 }
rect_b = { 'x' => 2, 'y' => 1, 'w' => 4, 'h' => 2 }

result_1 = find_intersection(rect_a, rect_b)
result_2 = find_intersection(rect_b, rect_a)

expect_1 = { 'x' => 2, 'y' => 2, 'w' => 2, 'h' => 1 }
expect_2 = expect_1

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

result_3 = find_intersection(rect_b, rect_c)
result_4 = find_intersection(rect_d, rect_c)

expect_3 = { 'x' => 2, 'y' => 2, 'w' => 4, 'h' => 1 }
expect_4 = { 'x' => 2, 'y' => 2, 'w' => 4, 'h' => 3 }

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
rect_f = { 'x' => 1, 'y' => 1, 'w' => 4, 'h' => 3 }

result_5 = find_intersection(rect_e, rect_f)
result_6 = find_intersection(rect_e, rect_e)

expect_5 = { 'x' => 1, 'y' => 1, 'w' => 1, 'h' => 2 }
expect_6 = rect_e

# not my test cases:
rect1 = { 'x' => 0, 'y' => 0, 'w' => 10, 'h' => 5 }
rect2 = { 'x' => 8, 'y' => 4, 'w' => 6, 'h' => 3 }
rect3 = { 'x' => 2, 'y' => 1, 'w' => 6, 'h' => 3 }


result_7 = find_intersection(rect1, rect2)
result_8 = find_intersection(rect1, rect3)

expect_7 = { 'x' => 8, 'y' => 4, 'w' => 2, 'h' => 1 }
expect_8 = rect3

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
p ' ~~ test 8 ~~ '
p " result = #{result8}"
p "expected: #{expect8}"
p  result8 == expect8
