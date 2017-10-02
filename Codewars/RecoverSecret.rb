def recover_secret triplets
  queue = triplets.flatten
  result = queue.pop

  until queue.empty?
    current = queue.pop
    next if current.all? { |e| result.index(e).nil? }
    result = merge(result, triplet)
  end

  result.join("")
end




secret_1 = "whatisup"
triplets_1 = [
  ['t','u','p'],
  ['w','h','i'],
  ['t','s','u'],
  ['a','t','s'],
  ['h','a','p'],
  ['t','i','s'],
  ['w','h','s']
]

['t','u','p'] + ['t','s','u'] => ['t', 's', 'u', 'p']
