
def anagram_group(list)
  result = Hash.new { |hash, key| hash[key] = [] }

  list.each do |word|
    key = word.chars.sort.join
    result[key] << word
  end

  result
end

# length of list = n
# length of words (avg) = m
# n*mlogm

list1 = ["dog", "god", "cat", "act", "good"]
list2 = ["socool", "coolso", "coolso"]

#
output1 = { "dgo" => ["dog", "god"], "act" => ["cat", "act"], "dgoo" => ["good"] }
output2 = { "clooos" => ["socool", "coolso", "coolso"] }



puts 'test 1'
puts "input #{list1}"
puts "exptected: #{output1}"
puts anagram_group(list1)
puts anagram_group(list1) == output1
puts 'test 2'
puts "input #{list2}"
puts "exptected: #{output2}"
puts anagram_group(list2)
