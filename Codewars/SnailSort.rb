def snail(array)
  result = []
  coords = generate_coords(array)

  current_coord = [0, 0]
  current_dir = :right
  deltas = { right: [0, 1], down: [1, 0], left: [0, -1], up: [-1, 0] }


  until coords.empty?
    result << coords[current_coord]
    coords.delete(current_coord)

    next_coord = map_coord(current_coord, deltas[current_dir])
    if is_valid?(next_coord, coords)
      current_coord = next_coord
    else
      current_dir = change_dir(current_dir)
      current_coord = map_coord(current_coord, deltas[current_dir])
    end

  end
  result
end


def change_dir(current_dir)
  dirs = [:right, :down, :left, :up]
  index_shift = dirs.index(current_dir) + 1
  index = index_shift % dirs.length
  dirs[index]
end













def map_coord(coord, delta)
  [ delta[0] + coord[0], delta[1] + coord[1] ]
end

def is_valid?(coord, coords)
  !!coords[coord]
end

def generate_coords(array)
  coords = {}

  array.each_with_index do | row, row_i |
    row.each_with_index do | el, col_i |
      coords[[row_i, col_i]] = el
    end
  end

  coords
end
# def snail(array)
#   coords = {}
#   result = []
#   height = array.length
#   width = array.first.length
#
#   array.each_with_index do | row, row_i |
#     row.each_with_index do | el, col_i |
#       coords[[row_i, col_i]] = el
#     end
#   end
#   p coords
#   next_coord = [0, 0]
#
#   until result.length == height * width
#     p next_coord
#     result << coords[next_coord]
#     coords.delete(next_coord)
#     next_coord = generate_next_coord(next_coord, coords)
#   end
#
#   result.flatten
# end
#
# def generate_next_coord(coord, coords)
#   deltas = [[0, 1], [-1, 0], [0, -1], [1, 0]]
#   next_coord = nil
#   deltas.each do |delta|
#     new_coord = [ delta[0] + coord[0], delta[1] + coord[1] ]
#     next unless next_coord.nil?
#     next_coord = new_coord if is_valid?(new_coord, coords)
#   end
#  next_coord
# end
#
# def is_valid?(coord, coords)
#   !!coords[coord]
# end


array = [[1, 2, 3, 4, 5],
         [6, 7, 8, 9, 10],
         [11, 12, 13, 14, 15],
         [16, 17, 18, 19, 20]]

result = [1, 2, 3, 4, 5, 10, 15, 20, 19, 18, 17, 16, 11, 6, 7, 8, 9, 14, 13, 12]
p snail(array) == result
