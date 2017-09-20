# def is_palindrome?(string)
#   reversed = ""
#   string.chars.each do |ch|
#     reversed = ch + reversed
#   end
#   reversed == string
# end

def is_palindrome?(str)
  i = 0
  until i == str.length / 2
    return false if str[i] != str[(str.length - 1) - i]
    i += 1
  end
  true
end




def longest_palindrome(str)
  #instantiate an empty string to hold the longest palindrome
  longest = ""
  #instantiate an index tracker
  i = 0

  until i == str.length
    # make variables to hold:
    # 1) the current palindrome,
    # 2) the left and right indexes of the current palindrome
    current = ""
    l, r = i, i + 1

    # check to see if your current left index starts a palindrome...
    if str[l] == str[r]
      # if you have two of the same letter in a row
      # increment l and r until they are no longer equal to the element
      # at the current index (to account for any number of the same characters in a row)
      until str[l - 1] != str[i]
        l -= 1
      end
      until str[r + 1] != str[i]
        r += 1
      end
      current = str[l..r]
    elsif str[l] == str[r + 1]
      # if its a palindrome with one character sandwiched, then
      # increment the right index to account for this extra character
      r += 1
      # set 'current' to this palindrome
      current = str[l..r]
    else
      i += 1
      next
    end

    until str[l] != str[r]
      current = str[l..r]
      l -= 1
      r += 1
    end

    i += 1
    longest = current if current.length > longest.length
  end

  longest
end
#
#
#



puts "~~~~ test 1 ~~~~"
puts "detects a simple in-a-row palindrome"
puts longest_palindrome("cool") == "oo"
puts "~~~~ test 2 ~~~~"
puts "detects a simple sandwich palindrome"
puts longest_palindrome("racecar") == "racecar"
puts "~~~~ test 3 ~~~~"
puts "picks the longer of two sub-palindromes"
puts longest_palindrome("aracecar") == "racecar"
puts "~~~~ test 4 ~~~~"
puts "picks the longer of two sub-palindromes"
puts longest_palindrome("coolracecar") == "racecar"
puts "~~~~ test 5 ~~~~"
puts "picks the longer of two sub-palindromes"
puts longest_palindrome("racecarcoollooc") == "coollooc"
puts "~~~~ test 6 ~~~~"
puts "picks an in-a-row palindrome with 3 center characters"
puts longest_palindrome("racecarcoooc") == "coooc"
puts "~~~~ test 7 ~~~~"
puts "picks an in-a-row palindrome with 4 center characters"
puts longest_palindrome("racecarcooooc") == "cooooc"
puts "~~~~ test 8 ~~~~"
puts "picks an in-a-row palindrome with a lot of center characters"
puts longest_palindrome("racecarcooooooc") == "cooooooc"
