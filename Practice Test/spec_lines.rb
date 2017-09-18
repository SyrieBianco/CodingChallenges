#*# rspec ./spec.rb:4 # #base_converter converts a small number in binary
#*# rspec ./spec.rb:8 # #base_converter converts a large number into base 16
#*# rspec ./spec.rb:15 # my_bsearch finds the first element in the array
#*# rspec ./spec.rb:19 # my_bsearch finds an element for an array with an even number of elements
#*# rspec ./spec.rb:23 # my_bsearch finds an element for an array with an odd number of elements
#*# rspec ./spec.rb:27 # my_bsearch finds an element in the second half of the array (even)
#*# rspec ./spec.rb:31 # my_bsearch finds an element in the second half of the array (odd)
#*# rspec ./spec.rb:46 # #caesar_cipher encodes a simple word
#*# rspec ./spec.rb:50 # #caesar_cipher wraps around the alphabet
#*# rspec ./spec.rb:54 # #caesar_cipher encodes multiple words
#*# rspec ./spec.rb:67 # deep_dup makes a copy of the original array
#*# rspec ./spec.rb:71 # deep_dup deeply copies arrays
#*# rspec ./spec.rb:78 # #digital_root calculates the digital root of a single-digit number
#*# rspec ./spec.rb:82 # #digital_root calculates the digital root of a larger number
#*# rspec ./spec.rb:95 # #doubler doubles the elements of the array
#*# rspec ./spec.rb:109 # #dups solves a simple example
#*# rspec ./spec.rb:113 # #dups finds two dups
#*# rspec ./spec.rb:117 # #dups finds multi-dups
#*# rspec ./spec.rb:121 # #dups returns {} when no dups found
#*# rspec ./spec.rb:132 # eight_queens_possibilities Returns an array of the correct_size
#*# rspec ./spec.rb:136 # eight_queens_possibilities Returns the correct positions
#*# rspec ./spec.rb:142 # exponent correctly handles positive powers
#*# rspec ./spec.rb:146 # exponent correctly handles negative powers
#*# rspec ./spec.rb:150 # exponent correctly handles 0
#*# rspec ./spec.rb:157 # #factorials_rec returns first factorial number
#*# rspec ./spec.rb:161 # #factorials_rec returns first two factorial numbers
#*# rspec ./spec.rb:165 # #factorials_rec returns many factorials numbers
#*# rspec ./spec.rb:170 # #factorials_rec calls itself recursively
#*# rspec ./spec.rb:179 # #factors returns the factors of 10 in order
#*# rspec ./spec.rb:183 # #factors returns just two factors for primes
#*# rspec ./spec.rb:190 # fibs_sum It correctly gets the answer for the 1st fibonacci number
#*# rspec ./spec.rb:194 # fibs_sum It correctly gets the answer for the first 2 fibonacci numbers
#*# rspec ./spec.rb:198 # fibs_sum It correctly gets the answer for the first 6 fibonacci numbers
#*# rspec ./spec.rb:206 # first_even_numbers_sum Correctly returns the sum of the first even number
#*# rspec ./spec.rb:210 # first_even_numbers_sum Returns the sum of the first n even numbers
#*# rspec ./spec.rb:217 # #jumble_sort defaults to alphabetical order
#*# rspec ./spec.rb:221 # #jumble_sort takes an alphabet array and sorts by that order
#*# rspec ./spec.rb:230 # #jumble_sort sorts by a reversed alphabet
#*# rspec ./spec.rb:237 # Make better change Returns the smallest possible array of coins: case 1
#*# rspec ./spec.rb:241 # Make better change Returns the smallest possible array of coins: case 2
#*# rspec ./spec.rb:245 # Make better change Returns the smallest possible array of coins: case 3
#*# rspec ./spec.rb:258 # #median returns the element for an array of length 1
#*# rspec ./spec.rb:262 # #median returns the median of an odd-length array
#*# rspec ./spec.rb:266 # #median returns the median of an even-length array
#*# rspec ./spec.rb:274 # #merge_sort works with an empty array
#*# rspec ./spec.rb:278 # #merge_sort works with an array of one item
#*# rspec ./spec.rb:282 # #merge_sort sorts numbers
#*# rspec ./spec.rb:286 # #merge_sort will use block if given
#*# rspec ./spec.rb:300 # #merge_sort calls the merge helper method
#*# rspec ./spec.rb:309 # my_all returns true if all elements match the block
#*# rspec ./spec.rb:313 # my_all returns false if not all elementes match the block
#*# rspec ./spec.rb:320 # my_any returns true if any number matches the block
#*# rspec ./spec.rb:324 # my_any returns false if no elementes match the block
#*# rspec ./spec.rb:333 # my_each It works for blocks
#*# rspec ./spec.rb:342 # my_each_with_index It works for blocks that use both the index and element
#*# rspec ./spec.rb:352 # my_each Calls the proc on each key value pair
#*# rspec ./spec.rb:358 # my_flatten Flattens arrays correctly
#*# rspec ./spec.rb:364 # my_controlled_flatten Flattens an array the specified number of levels
#*# rspec ./spec.rb:371 # Array#my_inject calls the block passed to it
#*# rspec ./spec.rb:377 # Array#my_inject makes the first element the accumulator if no default is given
#*# rspec ./spec.rb:383 # Array#my_inject yields the accumulator and each element to the block
#*# rspec ./spec.rb:396 # Array#my_inject with accumulator, it correctly injects and returns answer
#*# rspec ./spec.rb:401 # Array#my_inject without accumulator, it correctly injects and returns answer
#*# rspec ./spec.rb:410 # my_join Joins an array if no argument is passed
#*# rspec ./spec.rb:414 # my_join Joins an array if an argument is passed
#*# rspec ./spec.rb:424 # my_merge Merges 2 hashes and returns a hash
#*# rspec ./spec.rb:428 # my_merge Priortizes values from the hash being merged in
#*# rspec ./spec.rb:437 # my_reject It correctly selects elements that do not match the passed in block
#*# rspec ./spec.rb:441 # my_reject It returns all elements if no elements match the block
#*# rspec ./spec.rb:450 # my_reverse Reverses an array
#*# rspec ./spec.rb:458 # my_rotate Rotates the elements 1 position if no argument is passed in
#*# rspec ./spec.rb:462 # my_rotate Rotates the elements correctly if an argument is passed in
#*# rspec ./spec.rb:466 # my_rotate Rotates the elements correctly if a negative argument is passed in
#*# rspec ./spec.rb:470 # my_rotate Rotates the elements correctly for a large argument
#*# rspec ./spec.rb:480 # my_select It correctly selects elements according to the passed in block
#*# rspec ./spec.rb:484 # my_select It returns an empty array if there are no matches
#*# rspec ./spec.rb:494 # my_zip Zips arrays of the same size
#*# rspec ./spec.rb:498 # my_zip Zips arrays of differnet sizes and adds nil appropriately
#*# rspec ./spec.rb:505 # my_zip Zips arrays with more elements than the original
#*# rspec ./spec.rb:512 # prime_factorization handles an input of 2
#*# rspec ./spec.rb:516 # prime_factorization Test case: 12
#*# rspec ./spec.rb:520 # prime_factorization Test case: 600851475143
#*# rspec ./spec.rb:528 # #primes returns first five primes in order
#*# rspec ./spec.rb:532 # #primes returns an empty array when asked for zero primes
#*# rspec ./spec.rb:541 # my_quick_sort Sorts an array of numbers with no duplicates
#*# rspec ./spec.rb:545 # my_quick_sort Sorts an array of numbers with duplicates
#*# rspec ./spec.rb:549 # my_quick_sort Sorts according to the block passed in
#*# rspec ./spec.rb:555 # real_words_in_string finds a simple word
#*# rspec ./spec.rb:560 # real_words_in_string doesn't find words not in the dictionary
#*# rspec ./spec.rb:565 # real_words_in_string finds words within words
#*# rspec ./spec.rb:573 # string_include_key returns true for the same string
#*# rspec ./spec.rb:577 # string_include_key handles keys with duplicate characters: case 1
#*# rspec ./spec.rb:581 # string_include_key handles keys with duplicate characters: case 2
#*# rspec ./spec.rb:585 # string_include_key returns false if the key characters are in the wrong order
#*# rspec ./spec.rb:589 # string_include_key returns false if the string doesn't contain the key
#*# rspec ./spec.rb:597 # subsets Correctly returns all subsets of an array
#*# rspec ./spec.rb:605 # #symmetric_substrings handles a simple example
#*# rspec ./spec.rb:609 # #symmetric_substrings handles two substrings
#*# rspec ./spec.rb:613 # #symmetric_substrings handles nested substrings
#*# rspec ./spec.rb:619 # #two_sum returns positions of pairs of numbers that add to zero
#*# rspec ./spec.rb:623 # #two_sum finds multiple pairs
#*# rspec ./spec.rb:627 # #two_sum finds pairs with same element
#*# rspec ./spec.rb:631 # #two_sum returns [] when no pair is found
#*# rspec ./spec.rb:635 # #two_sum won't find spurious zero pairs
#*# rspec ./spec.rb:639 # #two_sum will find real zero pairs
#*# rspec ./spec.rb:645 # #rec_sum returns the sums of all elements in an array
#*# rspec ./spec.rb:650 # #rec_sum returns 0 if the array is empty
#*# rspec ./spec.rb:656 # #permutations returns all permutations of an array
#*# rspec ./spec.rb:664 # #bubble_sort! works with an empty array
#*# rspec ./spec.rb:668 # #bubble_sort! works with an array of one item
#*# rspec ./spec.rb:672 # #bubble_sort! sorts numbers
#*# rspec ./spec.rb:676 # #bubble_sort! modifies the original array
#*# rspec ./spec.rb:682 # #bubble_sort! will use a block if given
#*# rspec ./spec.rb:695 # #bubble_sort delegates to #bubble_sort!
#*# rspec ./spec.rb:709 # #pig_latinify translates a word beginning with a vowel
#*# rspec ./spec.rb:714 # #pig_latinify translates a word beginning with a consonant
#*# rspec ./spec.rb:719 # #pig_latinify translates a word beginning with two consonants
#*# rspec ./spec.rb:724 # #pig_latinify translates two words
#*# rspec ./spec.rb:729 # #pig_latinify translates a word beginning with three consonants
#*# rspec ./spec.rb:733 # #pig_latinify counts 'sch' as a single phoneme
#*# rspec ./spec.rb:738 # #pig_latinify counts 'qu' as a single phoneme
#*# rspec ./spec.rb:743 # #pig_latinify counts 'qu' as a consonant even when it's preceded by a consonant
#*# rspec ./spec.rb:748 # #pig_latinify translates many words
#*# rspec ./spec.rb:755 # titleize capitalizes a word
#*# rspec ./spec.rb:759 # titleize capitalizes every word (aka title case)
#*# rspec ./spec.rb:763 # titleize doesn't capitalize 'little words' in a title
#*# rspec ./spec.rb:767 # titleize does capitalize 'little words' at the start of a title
