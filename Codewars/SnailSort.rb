def snail(array)
  coords = {}
  result = []
  height = array.length
  width = array.first.length

  array.each_with_index do | row, row_i |
    row.each_with_index do | el, col_i |
      coords[[row_i, col_i]] = el
    end
  end
  p coords
  next_coord = [0, 0]

  until result.length == height * width
    p next_coord
    result << coords[next_coord]
    coords.delete(next_coord)
    next_coord = generate_next_coord(next_coord, coords)
  end

  result.flatten
end

def generate_next_coord(coord, coords)
  deltas = [[0, 1], [-1, 0], [0, -1], [1, 0]]
  next_coord = nil
  deltas.each do |delta|
    new_coord = [ delta[0] + coord[0], delta[1] + coord[1] ]
    next unless next_coord.nil?
    next_coord = new_coord if is_valid?(new_coord, coords)
  end
 next_coord
end

def is_valid?(coord, coords)
  !!coords[coord]
end
