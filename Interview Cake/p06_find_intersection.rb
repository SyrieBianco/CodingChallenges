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
# |   rect 1
# 5   .______________.
# |   |              |
# 4   |              |
# |   |              |
# 3   |     .________|__________.
# |   |     |        |          |
# 2   ._____|________.          |
# |         |                   |
# 1         .___________________.   rect 2
# |
# 0 -- 1 -- 2 -- 3 -- 4 -- 5 -- >


# determine relative position of rect_1 to rect_2
# relative positions = { 'x' => rect_1[x] <=> rect_2[x], 'y' => rect_1[y] <=> rect_2[y] }
# possible positions:
#  'x':
#      0: left edges of rectangles are coterminus
#         new_x = rect_1[x]
#         new_w = [rect_1[w], rect_2[w]].min
#      1: rect_1 is to the left of rect_2
#         new_x = rect_2[x]
#         new_w = rect1[w] - (rect_2[x] - rect_1[x])
#     -1: rect_2 is to the left of rect_1
#         new_x = rect_1[x]
#         new_w = rect_2[w] - (rect_1[x] - rect_2[x])
#  'y':
#      0: bottom edges of rectangles are coterminus
#         new_y = rect_1[y]
#         new_h = [rect_1[h], rect_2[h]].min
#      1: rect_1 is to the left of rect_2
#         new_y = rect_2[y]
#         new_h = rect1[h] - (rect_2[y] - rect_1[y])
#     -1: rect_2 is to the left of rect_1
#         new_y = rect_1[y]
#         new_h = rect_2[h] - (rect_1[y] - rect_2[y])

# use relative positions to determine verticies of rectangle of intersection


rect_1 = { 'x' => 2, 'y' => 3, 'w' => 3, 'h' => 3 }

rect_2 = { 'x' => 3, 'y' => 7, 'w' => 4, 'h' => 3 }

result_1 = { 'x' => 3, 'y' => 3, 'w' => 2, 'h' => 2 }
