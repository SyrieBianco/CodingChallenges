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

  next_coord = [0, 0]

  until result.length == height * width
    result << coords[next_coord]
    coords.delete(next_coord)
    next_coord = generate_next_coord(next_coord, coords)
  end

  result.flatten
end

def generate_next_coord(coord, coords)
  deltas = [[0, 1], [-1, 0], [0, -1], [1, 0]]
  deltas.each do |delta|
    next_coord = [ [delta[0] + coord[0]], [delta[1] + coord[1]] ]
    return next_coord if is_valid?(next_coord, coords)
  end
  nil
end

def is_valid?(coord, coords)
  !!coords[coord]
end
