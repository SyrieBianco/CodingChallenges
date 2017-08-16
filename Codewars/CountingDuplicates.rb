def duplicate_count(text)
  counter = Hash.new(0)

  text.downcase.chars.each { |ch| counter[ch] += 1 }

  _duplicates = counter.values.count { |count| count > 1 }
end
