def  first_non_repeating_letter(s)
  # Make a hash to store the count AND the first index
  # e.g. 'T' => [first index, count]
  letter_count = {}

  s.downcase.chars.each_with_index do |ch, i|
    letter_count[ch] ? letter_count[ch][1] += 1 : letter_count[ch] = [i, 1]
  end

  singles = letter_count.values.select { |val| val[1] == 1 }
  return '' if singles.empty?

  first_index = singles.sort.first[0]
  s[first_index]

  ## time: 456ms
end


p first_non_repeating_letter('a') == 'a'
p first_non_repeating_letter('stress') == 't'
p first_non_repeating_letter('moonmen') == 'e'
p first_non_repeating_letter('') == ''
