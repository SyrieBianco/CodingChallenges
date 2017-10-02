#______________________________________________________________________
# Problem 1: Base Converter
#______________________________________________________________________

# # # specs # # #
# ~ * ~ be rspec spec.rb:8 spec.rb:4  ~ * ~ #

# Write a recursive method that takes in a base 10 number n and
# converts it to a base b number. Return the new number as a string
#
# E.g. base_converter(5, 2) == "101"
# base_converter(31, 16) == "1f"

def base_converter(num, b)
  return num.to_s if num < b
  digits = ('0'..'9').to_a + ('a'..'z').to_a + ('A'..'Z').to_a

  base_converter(num / b, b).concat(digits[num % b])
end





#______________________________________________________________________
# Problem 2: Binary Search
#______________________________________________________________________

# # # specs # # #
# ~ * ~ be rspec spec.rb:15  spec.rb:19  spec.rb:23  spec.rb:27  spec.rb:31   ~ * ~ #

class Array

  # Write a monkey patch of binary search:
  # E.g. [1, 2, 3, 4, 5, 7].my_bsearch(5) => 4
  def my_bsearch(target, &prc)
    return nil if length < 1
    prc ||= Proc.new{ |a, b| a <=> b }

    mid_i = length / 2
    mid = self[mid_i]
    left, right = take(mid_i), drop(mid_i + 1)

    case prc.call(target, mid)
    when 0
      return mid_i
    when -1
      result = left.my_bsearch(target, &prc)
      result ? result : nil
    when 1
      result = right.my_bsearch(target, &prc)
      result ? result + mid_i + 1 : nil
    end
  end

end





#______________________________________________________________________
# Problem 3: Caesar Cipher
#______________________________________________________________________

# # # specs # # #
# ~ * ~ be rspec spec.rb:46  spec.rb:50  spec.rb:54   ~ * ~ #


# Back in the good old days, you used to be able to write a darn near
# uncrackable code by simply taking each letter of a message and incrementing it
# by a fixed number, so "abc" by 2 would look like "cde", wrapping around back
# to "a" when you pass "z".  Write a function, `caesar_cipher(str, shift)` which
# will take a message and an increment amount and outputs the encoded message.
# Assume lowercase and no punctuation. Preserve spaces.
#
# To get an array of letters "a" to "z", you may use `("a".."z").to_a`. To find
# the position of a letter in the array, you may use `Array#find_index`.

def caesar_cipher(str, shift)
  alpha = ('a'..'z').to_a
  result = str.chars.map do |ch|
    index = alpha.index(ch.downcase)

    if index.nil?
      ch
    else
      new_index = index + shift
      alpha[new_index % alpha.length]
    end
  end
  result.join('')
end


#______________________________________________________________________
# Problem 4: Deep Dup
#______________________________________________________________________

# # # specs # # #
# ~ * ~ be rspec spec.rb:67 spec.rb:71 ~ * ~ #







# Using recursion and the is_a? method,
# write an Array#deep_dup method that will perform a "deep" duplication of the interior arrays.

def deep_dup(arr)
  result = arr.dup
  result.map! do |el|
    el.is_a?(Array) ? deep_dup(el) : el
  end
  result
end





#______________________________________________________________________
# Problem 5: Digital Root
#______________________________________________________________________

# # # specs # # #
# ~ * ~ be rspec spec.rb:78 spec.rb:82 ~ * ~ #


# Write a method, `digital_root(num)`. It should Sum the digits of a positive
# integer. If it is greater than 10, sum the digits of the resulting number.
# Keep repeating until there is only one digit in the result, called the
# "digital root". **Do not use string conversion within your method.**
#
# You may wish to use a helper function, `digital_root_step(num)` which performs
# one step of the process.

def digital_root(num)
  return num if num < 10
  digital_root(num % 10 + num / 10)
end





#______________________________________________________________________
# Problem 6: Doubler
#______________________________________________________________________

# # # specs # # #
# ~ * ~ be rspec spec.rb:95 ~ * ~ #

class Fixnum
  def double
    self * 2
  end
end

# Write a method that doubles each element in an array
def doubler(array)
  array.map(&:double)
end





#______________________________________________________________________
# Problem 7: Dups
#______________________________________________________________________

# # # specs # # #
# ~ * ~ be rspec spec.rb:109  spec.rb:113  spec.rb:117  spec.rb:121 ~ * ~ #

class Array

  # Write an Array#dups method that will return a hash containing the indices of all
  # duplicate elements. The keys are the duplicate elements; the values are
  # arrays of their indices in ascending order, e.g.
  # [1, 3, 4, 3, 0, 3, 0].dups => { 3 => [1, 3, 5], 0 => [4, 6] }

  def dups
    counter = Hash.new { |h, k| h[k] = [] }
    dup = {}

    each_with_index do |el, i|
      counter[el] << i
      dup[el] = counter[el] if counter[el].length == 2
    end

    dup
  end
end





#______________________________________________________________________
# Problem 8: Eight Queens
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec


# ~ * ~ #
# CHALLENGE: Eight queens puzzle precursor
#
# Write a recursive method that generates all 8! possible unique ways to
# place eight queens on a chess board such that no two queens are in
# the same board row or column (the same diagonal is OK).
#
# Each of the 8! elements in the return array should be an array of positions:
# E.g. [[0,0], [1,1], [2,2], [3,3], [4,4], [5,5], [6,6], [7,7]]
#
# My solution used 3 method parameters: current_row, taken_columns, and
# positions so far

def eight_queens_possibilities(current_row, taken_columns, positions)

end





#______________________________________________________________________
# Problem 9: Exponent
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:142 spec.rb:146 spec.rb:150



# ~ * ~ #
# return b^n recursively. Your solution should accept negative values
# for n

def exponent(b, n)
  return 1 if n == 0
  return b if n == 1
  n > 0 ? b * exponent(b, n - 1) : 1.0 / (b * exponent(b, n.abs - 1))
end





#______________________________________________________________________
# Problem 10: Factorials Rec
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:157 spec.rb:161 spec.rb:165 spec.rb:170

# ~ * ~ #
# Write a recursive method that returns the first "num" factorial numbers.
# Note that the 1st factorial number is 0!, which equals 1. The 2nd factorial
# is 1!, the 3rd factorial is 2!, etc.

def factorials_rec(num)
  return [1, 1].take(num) if num < 2

  factorials_rec(num - 1) << factorials_rec(num - 1).last * (num - 1)
end





#______________________________________________________________________
# Problem 11: Factors
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:179 spec.rb:183

# ~ * ~ #
# Write a method that returns the factors of a number in ascending order.

def factors(num)
 factors = []
 pairs = []

 1.upto(Math.sqrt(num).floor) do |n|
   if num % n == 0
     factors << n
     pair = num / n
     pairs.unshift(pair) unless n == pair
   end
 end

 factors + pairs
end






#______________________________________________________________________
# Problem 12: Fibs Sum
#______________________________________________________________________

# # # specs # # #
# ~ * ~ be rspec spec.rb:190 spec.rb:194 spec.rb:198


# ~ * ~ #
# Implement a method that finds the sum of the first n
# fibonacci numbers recursively. Assume n > 0

def fibs_sum(n)
  fibonacci(n).reduce(:+)
end

def fibonacci(n)
  return [1, 1].take(n) if n <= 2

  fib = fibonacci(n - 1)
  fib << fib[-2..-1].reduce(:+)
end

#
# def fibonacci(n)
#   return [1, 1].take(n) if n <= 2
#
#   fibonacci(n - 1) << fib(n)
# end
#
# def fib(n)
#   ((1 + Math.sqrt(5)) ** n - (1 - Math.sqrt(5)) ** n) / (2 ** n * Math.sqrt(5))
# end

#______________________________________________________________________
# Problem 13: First Even Numbers Sum
#______________________________________________________________________

# # # specs # # #
# ~ * ~ be rspec spec.rb:206 spec.rb:210


# ~ * ~ #
# return the sum of the first n even numbers recursively. Assume n > 0

def first_even_numbers_sum(n)
  return 0 if n == 0

  2 * n + first_even_numbers_sum(n - 1)
end


#______________________________________________________________________
# Problem 14: Jumble Sort
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:217 spec.rb:221 spec.rb:230


# ~ * ~ #
# Jumble sort takes a string and an alphabet. It returns a copy of the string
# with the letters re-ordered according to their positions in the alphabet. If
# no alphabet is passed in, it defaults to normal alphabetical order (a-z).

# Example:
# jumble_sort("hello") => "ehllo"
# jumble_sort("hello", ['o', 'l', 'h', 'e']) => 'ollhe'

def jumble_sort(str, alphabet = ('a'..'z').to_a)
  str.chars.sort_by { |ch| alphabet.index(ch.downcase) }.join("")
end


#
# def jumble_sort(str, alphabet = [])
#   alphabet.concat(('a'..'z').to_a)
#   counter = Hash.new { |h, k| h[k] = [] }
#   result = []
#
#   str.chars.each { |ch| counter[alphabet.index(ch)] << ch }
#
#   counter.keys.sort.each { |k| result += counter[k] }
#
#   result.join("")
# end


#______________________________________________________________________
# Problem 15: Make Better Change
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:237 spec.rb:241 spec.rb:245

# ~ * ~ #
# make better change problem from class
# make_better_change(24, [10,7,1]) should return [10,7,7]
# make change with the fewest number of coins

# To make_better_change, we only take one coin at a time and
# never rule out denominations that we've already used.
# This allows each coin to be available each time we get a new remainder.
# By iterating over the denominations and continuing to search
# for the best change, we assure that we test for 'non-greedy' uses
# of each denomination.

def make_better_change(value, coins)
  valid_coins = coins.sort.reverse.select { |coin| coin <= value }
  return nil if valid_coins.empty?

  solutions = []

  valid_coins.each do |coin|
    remainder = value - coin

    if remainder > 0
      remainder_solution = make_better_change(remainder, valid_coins)
      solutions << [coin] + remainder_solution unless remainder_solution.nil?
    else
      solutions << [coin]
    end
  end

  solutions.sort_by(&:length).first
end





#______________________________________________________________________
# Problem 16: Median
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:258 spec.rb:262 spec.rb:266

# ~ * ~ #
# Write a method that returns the median of elements in an array
# If the length is even, return the average of the middle two elements

class Array
  def median
    return nil if empty?
    mid = (length / 2.0) - 0.5
    mid_f, mid_c = mid.floor, mid.ceil

    (sort[mid_f] + sort[mid_c]) / 2.0
  end
end





#______________________________________________________________________
# Problem 17: Merge Sort
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:274 spec.rb:278 spec.rb:282 spec.rb:286 spec.rb:300


# ~ * ~ #
class Array

  # Write an Array#merge_sort method; it should not modify the original array.

  def merge_sort(&prc)
    return self if length < 2
    prc ||= Proc.new { |a, b| a <=> b }
    mid_i = length / 2
    left, right = take(mid_i), drop(mid_i)

    sorted_left, sorted_right = left.merge_sort(&prc), right.merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  private

  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      if prc.call(left[0], right[0]) < 1
        merged << left.shift
      else
        merged << right.shift
      end
    end

    merged + left + right
  end

end





#______________________________________________________________________
# Problem 18: My All
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:309 spec.rb:313

# ~ * ~ #
class Array

  def my_all?(&prc)
    my_each { |el| return false unless prc.call(el) }
    true
  end

end





#______________________________________________________________________
# Problem 19: My Any
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:320 spec.rb:324

# ~ * ~ #
class Array

  def my_any?(&prc)
    my_each { |el| return true if prc.call(el) }
    false
  end

end





#______________________________________________________________________
# Problem 20: My Each
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:333 spec.rb:342


# ~ * ~ #
class Array

  def my_each(&prc)
    0.upto(length - 1) do |i|
      prc.call(self[i])
    end
  end

  def my_each_with_index(&prc)
    0.upto(length - 1) { |i| prc.call(self[i], i) }
  end

end





#______________________________________________________________________
# Problem 21: My Each Hash
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:352


# ~ * ~ #
class Hash

  # Write a version of my each that calls a proc on each key, value pair
  def my_each(&prc)
    keys.my_each { |key| prc.call(key, self[key])}
  end

end





#______________________________________________________________________
# Problem 22: My Flatten
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:358 spec.rb:364


# ~ * ~ #
class Array

  # Takes a multi-dimentional array and returns a single array of all the elements
  # [1,[2,3], [4,[5]]].my_controlled_flatten(1) => [1,2,3,4,5]
  def my_flatten
    map do |el|
      if el.is_a?(Array)
        el.my_flatten
      else
        el
    end
  end

  # Write a version of flatten that only flattens n levels of an array.
  # E.g. If you have an array with 3 levels of nested arrays, and run
  # my_flatten(1), you should return an array with 2 levels of nested
  # arrays
  #
  # [1,[2,3], [4,[5]]].my_controlled_flatten(1) => [1,2,3,4,[5]]
  def my_controlled_flatten(n)

  end
end





#______________________________________________________________________
# Problem 23: My Inject
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:371 spec.rb:377 spec.rb:383 spec.rb:396 spec.rb:401



# ~ * ~ #
class Array

  # Monkey patch the Array class and add a my_inject method. If my_inject receives
  # no argument, then use the first element of the array as the default accumulator.

  def my_inject(acc = nil, &prc)
    copy = dup
    acc ||= copy.shift

    copy.my_each { |el| acc = prc.call(acc, el) }

    acc
  end
end





#______________________________________________________________________
# Problem 24: My Join
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:410 spec.rb:414


# ~ * ~ #
class Array

  def my_join(str = "")
    my_inject { |acc, ch| acc + str + ch.to_s }
  end

end





#______________________________________________________________________
# Problem 25: My Merge
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:424 spec.rb:428


# ~ * ~ #
class Hash

  # Write a version of merge. This should NOT modify the original hash
  def my_merge(hash2)
    result = hash2.dup
    each do |k, v|
      result[k] = v unless result[k]
    end
    result
  end

end





#______________________________________________________________________
# Problem 26: My Reject
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:437 spec.rb:441


# ~ * ~ #
class Array

  def my_reject(&prc)
    result = []
    my_each { |el| result << el unless prc.call(el) }
    result
  end

end





#______________________________________________________________________
# Problem 27: My Reverse
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:450



# ~ * ~ #
class Array

  def my_reverse
    result = []

    my_each { |el| result.unshift(el) }

    result
  end

end





#______________________________________________________________________
# Problem 28: My Rotate
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:458 spec.rb:462 spec.rb:466 spec.rb:470

# ~ * ~ #
class Array

  def my_rotate(num = 1)
    res = dup
    num > 0 ? num.times { res.push(res.shift) } : num.abs.times { res.unshift(res.pop) }
    res
  end

end





#______________________________________________________________________
# Problem 29: My Select
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:480 spec.rb:484



# ~ * ~ #
class Array

  def my_select(&prc)
    result = []

    my_each { |el| result << el if prc.call(el) }

    result
  end

end





#______________________________________________________________________
# Problem 30: My Zip
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:494 spec.rb:498 spec.rb:505


# ~ * ~ #
class Array

  def my_zip(*arrs)
    zipped = []

    0.upto(length - 1) do |i|
      new_term = [self[i]]
      arrs.each do |arr|
        new_term << arr[i]
      end
      zipped << new_term
    end

    zipped
  end

end





#______________________________________________________________________
# Problem 31: Prime Factorization
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:512 spec.rb:516 spec.rb:520


# ~ * ~ #
# Write a recursive function that returns the prime factorization of
# a given number. Assume num > 1
#
# prime_factorization(12) => [2,2,3]
def prime_factorization(num)
  return [] if num == 1
  return [num] if is_prime?(num)

  2.upto(Math.sqrt(num).ceil) do |i|
    return [i] + prime_factorization(num / i) if num % i == 0
  end

end

def is_prime?(num)
  factors(num).length == 2
end





#______________________________________________________________________
# Problem 32: Primes
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:528 spec.rb:532


# ~ * ~ #
# primes(num) returns an array of the first "num" primes.
# You may wish to use an is_prime? helper method.

def primes(num)
  primes = []
  current_num = 0

  until primes.length == num
    primes << current_num if is_prime?(current_num)
    current_num += 1
  end

  primes
end





#______________________________________________________________________
# Problem 33: Quicksort
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:541 spec.rb:545 spec.rb:549

# ~ * ~ #
class Array

  #Write a monkey patch of quick sort that accepts a block
  def my_quick_sort(&prc)
    return self if length < 2
    prc ||= Proc.new { |a, b| a <=> b }

    pvt, remainder = self[0], self[1..-1]
    left, right = [], []

    remainder.each { |el| prc.call(el, pvt) < 1 ? left << el : right << el }

    sorted_l, sorted_r = left.my_quick_sort(&prc), right.my_quick_sort(&prc)

    sorted_l + [pvt] + sorted_r
  end

end





#______________________________________________________________________
# Problem 34: Real Words In String
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:555 spec.rb:560 spec.rb:565


# ~ * ~ #
class String
  # Returns an array of all the subwords of the string that appear in the
  # dictionary argument. The method does NOT return any duplicates.

  def real_words_in_string(dictionary)
    substrings.select { |str| dictionary.include?(str) }
  end
end





#______________________________________________________________________
# Problem 35: String Include Key
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:573 spec.rb:577 spec.rb:581 spec.rb:585 spec.rb:589


# ~ * ~ #
# Write a recursive method that takes in a string to search and a key string.
# Return true if the string contains all of the characters in the key
# in the same order that they appear in the key.
#
# string_include_key?("cadbpc", "abc") => true
# string_include_key("cba", "abc") => false
def string_include_key?(string, key)
  return true if key.empty?
  current_key, keys_left = key[0], key[1..-1]
  index = string.index(current_key)
  return false unless index
  string_include_key?(string[index + 1..-1], keys_left)
end





#______________________________________________________________________
# Problem 36: Subsets
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:597


# ~ * ~ #
#returns all subsets of an array
def subsets(arr)
  return [[]] if arr.empty?

  subs = subsets(arr[0...-1])
  subs.concat(subs.map { |e| e + [arr[-1]] })
end





#______________________________________________________________________
# Problem 37: Symmetric Substrings
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:605 spec.rb:609 spec.rb:613



# ~ * ~ #
class String

  # Write a String#symmetric_substrings method that returns an array of substrings
  # that are palindromes, e.g. "cool".symmetric_substrings => ["oo"]
  # Only include substrings of length > 1.

  def symmetric_substrings
    substrings.select { |e| e.is_palindrome?  && e.length > 2 }
  end

  def substrings
    subs = []
    0.upto(length - 2) do |i|
      1.upto(length - 1) do |j|
        next if j < i
        subs << self[i..j]
      end
    end
    subs.uniq
  end

  def is_palindrome?
    self == reverse
  end
end





#______________________________________________________________________
# Problem 38: Two Sum
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:619 spec.rb:623 spec.rb:627 spec.rb:631 spec.rb:635 spec.rb:639



# ~ * ~ #
class Array
  # Write a method, `Array#two_sum`, that finds all pairs of positions where the
  # elements at those positions sum to zero.

  # NB: ordering matters. I want each of the pairs to be sorted smaller index
  # before bigger index. I want the array of pairs to be sorted
  # "dictionary-wise":
  #   [0, 2] before [1, 2] (smaller first elements come first)
  #   [0, 1] before [0, 2] (then smaller second elements come first)

  def two_sum(target = 0)
    # 0.00971 seconds
    results = []

    each_with_index do |el1, i|
      each_with_index do |el2, j|
        next if i >= j
        results << [i, j] if el1 + el2 == target
      end
    end

    results
  end

#   def two_sum(target = 0)
#     #  0.00239 seconds
#     hash = {}
#
#     each_with_index do |el, i|
#       hash[el] ? hash[el] << i : hash[el] = [i]
#     end
#
#     results = []
#
#     hash.each do |k, v|
#       pair = target - k
#
#       if k == 0
#         results += hash[k].combination(2).to_a
#         next
#       end
#
#       if hash[pair]
#         hash[k].each do |i|
#           hash[pair].each { |j| results << [i, j] unless i == j}
#         end
#         hash.delete(k)
#       end
#     end
#
#     results
#   end
#
#
end

# [1, 2, 5, 7, -2, 4, 6, -1, -1] => [0, 7], [0, 8], [1, 4]




#______________________________________________________________________
# Problem 39: Rec Sum
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:645 spec.rb:650


# ~ * ~ #
# Write a recursive method that returns the sum of all elements in an array
def rec_sum(arr)
  return 0 if arr.empty?
  return arr[0] if arr.length == 1

  arr[-1] + rec_sum(arr[0...-1])
end





#______________________________________________________________________
# Problem 40: Permutations
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:656



# ~ * ~ #
# Write a recursive method that returns all of the permutations of an array
def permutations(array)
  return [array] unless array.length > 1

  result = []
  el, perms = array[-1], permutations(array[0...-1])

  perms.each do |perm|
    0.upto(perm.length) do |i|
      iteration = perm.dup
      result << iteration.insert(i, el)
    end
  end

  result
end





#______________________________________________________________________
# Problem 41: Bubble Sort
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:664 spec.rb:668 spec.rb:672 spec.rb:676 spec.rb:682 spec.rb:695



# ~ * ~ #
class Array
  def bubble_sort!(&prc)
    prc ||= Proc.new { |a, b| a <=> b }
    sorted = false

    until sorted
      sorted = true
      0.upto(length - 2) do |i|
        next if prc.call(self[i], self[i + 1]) < 1
        self[i], self[i + 1] = self[i + 1], self[i]
        sorted = false
      end
    end
    self
  end

  def bubble_sort(&prc)
    dup.bubble_sort!(&prc)
  end

end





#______________________________________________________________________
# Problem 42: Pig Latinify
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:709 spec.rb:714 spec.rb:719 spec.rb:724 spec.rb:729 spec.rb:733 spec.rb:738 spec.rb:743 spec.rb:748


# ~ * ~ #
# Write a method that translates a sentence into pig latin. You may want a helper method.
# 'apple' => 'appleay'
# 'pearl' => 'earlpay'
# 'quick' => 'ickquay'
def pig_latinify(sentence)
  words = sentence.split
  words.map! { |word| piggify(word) }.join(" ")
end

def piggify(word)
  result = word.chars

  while is_consonant?(result[0])
    result.push(result.shift) if result[0] == 'q'
    result.push(result.shift)
  end

  result.join + "ay"
end

def is_consonant?(ch)
  vowels = %w(a e i o u)
  !vowels.include?(ch)
end




#______________________________________________________________________
# Problem 43: Titleize
#______________________________________________________________________


# # # specs # # #
# ~ * ~ be rspec spec.rb:755 spec.rb:759 spec.rb:763 spec.rb:767

# ~ * ~ #
# Write a method that capitalizes each word in a string like a book title
# Do not capitalize words like 'a', 'and', 'of', 'over' or 'the'
def titleize(title)
  downcase_hash = not_to_capitalize

  result = title.split.map.with_index do |word, i|
    word = word.downcase
    word[0] = word[0].upcase unless i != 0 && downcase_hash[word]
    word
  end

  result.join(" ")
end


def not_to_capitalize
  downcase_hash = {}

  prepositions = %w(off for on from onto in out up but over upon by
                    past of with at down like near of to with to into)
  conjuctions = %w(and but or yet for nor so)
  articles = %w(a an the)

  downcase_array = prepositions + articles + conjuctions
  downcase_array.each { |word| downcase_hash[word] = 1}
  downcase_hash
end
